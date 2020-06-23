/*
 * File:   main.c
 * Author: tyapo
 *
 * Created on May 31, 2020, 7:52 PM
 */

//
// NEC IR test code: dump command code received from remote to serial port 
//
// HW connections:
//
// RA2 is input from IR receiver
// RB7 is TX output to serial port


// PIC16LF1708 Configuration Bit Settings
// CONFIG1
#pragma config FOSC = INTOSC    // Oscillator Selection Bits (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable (Brown-out Reset disabled)
#pragma config CLKOUTEN = ON    // Clock Out Enable (CLKOUT function is enabled on the CLKOUT pin)
#pragma config IESO = OFF       // Internal/External Switchover Mode (Internal/External Switchover Mode is disabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config PPS1WAY = ON     // Peripheral Pin Select one-way control (The PPSLOCK bit cannot be cleared once it is set by software)
#pragma config ZCDDIS = ON      // Zero-cross detect disable (Zero-cross detect circuit is disabled at POR)
#pragma config PLLEN = OFF      // Phase Lock Loop enable (4x PLL is enabled when software sets the SPLLEN bit)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LPBOR = OFF      // Low-Power Brown Out Reset (Low-Power BOR is disabled)
#pragma config LVP = ON         // Low-Voltage Programming Enable (Low-voltage programming enabled)

#include <xc.h>
#include <stdint.h>
#include <stdio.h>

// IR pulse timings
// Note: timings based on 4 MHz fosc with timer0 prescale=64
// preamble
// measured 212 ticks: add +/-15% tolerance
#define PREAMBLE_MIN_TICKS 180
#define PREAMBLE_MAX_TICKS 243

// logic 0
// measured 17 ticks: add +/-15% tolerance
#define ZERO_MIN_TICKS 14
#define ZERO_MAX_TICKS 20

// logic 1
// measured 35 ticks: add +/-15% tolerance
#define ONE_MIN_TICKS 29
#define ONE_MAX_TICKS 41

// IR receiver states
typedef enum {STATE_RESET = 0,        // waiting for preamble sequence
              STATE_RECEIVING,        // receiving bit stream
              STATE_DONE}             // received; waiting to be processed
  rx_state_t;

// NEC IR code and associated rx state
typedef struct {
  uint8_t n_bits;
  rx_state_t state;
  union {
    uint32_t code;
    struct {
      // note: the order here is implementation-defined
      //       this struct is NOT portable between compilers
      uint8_t command_b;            
      uint8_t command;
      union {
        struct {
          uint8_t address_b;            
          uint8_t address;
        };
        struct {
          uint16_t extended_address;
        };
      };
    };
  };
} NEC_IR_code_t;

NEC_IR_code_t ir_code = {0, STATE_RESET};

// timing stats for analysis/tuning
uint8_t stats[33];

void __interrupt() ISR(void)
{
  // time: elapsed since last negative edge, i.e. negative + positive periods
  uint8_t time = TMR0;
  TMR0 = 0;

  // if timer0 overflowed, pulse too long to be valid --> reset state
  if (INTCONbits.TMR0IF){
    time = 0; // invalid time will cause state reset below
  }
  INTCONbits.TMR0IF = 0;
  
  switch(ir_code.state){
  case STATE_RESET:
    // check for valid preamble time
    if (time >= PREAMBLE_MIN_TICKS && time <= PREAMBLE_MAX_TICKS){
      ir_code.n_bits = 0;
      ir_code.state = STATE_RECEIVING;
      stats[0] = time; // temporarily collect stats
    }
    break;
  case STATE_RECEIVING:
    // shift the previous bits and check for valid new bit
    ir_code.code <<= 1;
    if (time >= ONE_MIN_TICKS && time <= ONE_MAX_TICKS){
      stats[1+ir_code.n_bits] = time; // temporarily collect stats
      ir_code.code |= 1;
      ir_code.n_bits++;
    } else if (time >= ZERO_MIN_TICKS && time <= ZERO_MAX_TICKS){
      stats[1+ir_code.n_bits] = time; // temporarily collect stats
      ir_code.n_bits++;      
    } else {
      // not a valid bit
      ir_code.state = STATE_RESET;
      break;
    }
    if (32 == ir_code.n_bits){
      // full word received; check for valid code
      // note 8 or 16 bit extended address allowed
      if (ir_code.command == ((~ir_code.command_b) & 0xff)){ 
        ir_code.state = STATE_DONE;
      } else {
        ir_code.state = STATE_RESET;
      }
    }
    break;
  case STATE_DONE:
    // wait for main loop to reset state
    // note: no new codes are received until main loop resets receiver
    break;
  default:
    // any unexpected state gets reset
    ir_code.state = STATE_RESET;
  }
  
  INTCONbits.INTF = 0;
}

// measure Vdd using FVR/ADC
// assumes 4 MHz clock; ADC uses FOSC/8
// returns battery voltage in integer mV
uint16_t battery_voltage()
{
  FVRCON = 0b10000001; // enable FVR at 1.024V
  ADCON0 = 0b01111101; // enable ADC and set FVR as input channel
  ADCON1 = 0b10010000; // Vref- is Vss; Vref+ is Vdd; Fosc/2 clock, right just
  while(!FVRCONbits.FVRRDY){ /* spin */} // wait for FVR stable
  NOP(); // 5 us acquisition time @ 4 MHz Fosc
  NOP();
  NOP();
  NOP();
  NOP();  
  ADCON0bits.GO_nDONE = 1; // start ADC conversion
  while(ADCON0bits.GO_nDONE){ /* spin */ } // wait for conversion complete
  ADCON0bits.ADON = 0; // turn off ADC
  // note: ADRES = 1023 * 1.024 / Vdd
  //       ==> Vdd = (1023 * 1.024) / ADRES
  //       ==> Vdd = 1047.552 / ADRES
  //       ==> Vdd (mV) = 1047552 / ADRES
  return 1047552L / ADRES;
}

// write a character to the serial port
//   printf() calls this to output characters
void putch(char value)
{
  // wait for room in the FIFO
  while(!PIR1bits.TXIF){ /* spin */ }
  TXREG = value;
  // note: TXIF not valid for two cycles; add nop in case of inlining
  asm("NOP");
}


// initialize the registers for LED PWM generattion
// note: red using CCP1 output on pin RC5
//       green using PWM3 output on pin RC4
//       blue using PWM4 output on pin RA5
void initLED()
{
  // init timer2, used as base for all three PWM outputs
  PR2 = 255; // load PWM period for timer2
  T2CONbits.T2CKPS = 0b10; // timer2 prescaler 16 --> 244 Hz output
  T2CONbits.TMR2ON = 1; // enable timer2

  // init the green channel on PWM3/RC4
  // see ds. p 166
  TRISC |= 0b00010000; // disable RC4 output
  RC4PPS = 0b01110;  // route PWM3 output to RC4  
  CCPTMRSbits.P3TSEL = 0b00; // PWM3 based on timer2
  PWM3DCH = 0; // intial duty cycle = 0
  PWM3DCLbits.PWM3DCL = 0; // intial duty cycle = 0
  PWM3CONbits.PWM3POL = 0; // active-high output
  TRISC &= 0b11101111; // enable RC4 output
  PWM3CONbits.PWM3EN = 1; // start PWM3

  // init the blue channel on PWM4/RA5
  // see ds. p 166
  TRISA |= 0b00100000; // disable RA5 output
  RA5PPS = 0b01111;  // route PWM4 output to RA5 
  CCPTMRSbits.P4TSEL = 0b00; // PWM4 based on timer2
  PWM4DCH = 0; // intial duty cycle = 0
  PWM4DCLbits.PWM4DCL = 0; // intial duty cycle = 0
  PWM4CONbits.PWM4POL = 0; // active-high output
  TRISA &= 0b11011111; // disable RA5 output
  PWM4CONbits.PWM4EN = 1; // start PWM4

  // init the red channel on CCP1/RC5
  // see ds. p 264
  // note: CCP1 does not have selectable PWM polarity
  //       so period value must be flipped
  TRISC |= 0b00100000; // disable RC5 output
  RC5PPS = 0b01100; // route CCP1 output to RC5 pin
  CCP1CONbits.CCP1M = 0b1100; // CCP1 in PWM mode
  CCPR1L = 0; // initial duty cycle = 0
  CCP1CONbits.DC1B = 0; // initial duty cycle = 0
  TRISC &= 0b11011111; // enable RC5 output  
}

void setLEDColor(uint8_t red, uint8_t green, uint8_t blue)
{
  // note: only setting upper 8 bits of 10-bit PWM value
  //       so max duty cycle is 1020/1023
  
  // red on CCP1/RC5
  CCPR1L = red;
  // green on PWM3/RC4
  PWM3DCH = green;
  // blue on PWM4/RA5
  PWM4DCH = blue;
}

uint8_t LED_red = 0;
uint8_t LED_green = 0;
uint8_t LED_blue = 0;

// todo: do something with the commands
void process_remote_command(NEC_IR_code_t* code){
  switch(code->command){
  case 0xa0: // up arrow
    LED_red += 10;
    break;
  case 0xb0: // down arrow
    LED_red -= 10;
    break;    
  case 0x50: // right arrow
    LED_green += 10;
    break;
  case 0x10: // left arrow
    LED_green -= 10;
    break;
  case 0x08: // 1
    LED_blue += 10;
    break;
  case 0x88: // 2
    LED_blue -= 10;
    break;
  case 0x48: // 3
    printf("%d\n", (int)battery_voltage());
    break;
  case 0x28: // 4
    break;
  case 0xa8: // 5
    break;
  case 0x68: // 6
    break;
  case 0x18: // 7
    break;
  case 0x98: // 8
    break;
  case 0x58: // 9
    break;                        
  default:
    break;
  }
  setLEDColor(LED_red, LED_green, LED_blue);
}

void main(void) {
  OSCCONbits.SCS = 0b10;    // use internal oscillator   
  OSCCONbits.IRCF = 0b1101; // 4 MHz HF INTOSC
  
  // PORTA configuration
  ANSELA = 0;         // PORTA all digital
  TRISA = 0b00000100; // RA2/INT is input
  ODCONA = 0;         // no open-drain pins
  SLRCONA = 0xff;     // limited slew rate on all pins
  INLVLA = 0xff;      // schmitt-trigger CMOS inputs
  WPUA = 0;           // no weak pull-ups on PORTA

  // PORTB configuration
  ANSELB = 0;         // PORTB all digital    
  TRISB = 0;          // PORTB all outputs
  ODCONB = 0;         // no open-drain pins
  SLRCONB = 0xff;     // limited slew rate on all pins
  INLVLB = 0xff;      // schmitt-trigger CMOS inputs
  WPUB = 0;           // no weak pull-ups on PORTB

  // PORTC configuration
  ANSELC = 0;         // PORTC all digital    
  TRISC = 0;          // PORTC all outputs
  ODCONC = 0;         // no open-drain pins
  SLRCONC = 0xff;     // limited slew rate on all pins
  INLVLC = 0xff;      // schmitt-trigger CMOS inputs
  WPUC = 0;           // no weak pull-ups on PORTC

  // PPS configuration
  // NB: RA2 is int
  // NB: RB7 is TX
  INTPPS = 0b00010; // INT on RA2 (ds p. 139, 142) 
  RB7PPS = 0b10100; // TX on RB7 (ds p. 140)

  // timer0 configutation
  OPTION_REGbits.PSA = 0; // assign prescaler to timer0
  OPTION_REGbits.PS = 0b101; // prescale by 64
  OPTION_REGbits.T0CS = 0; // timer0 clocked from Fosc/4

  // interrupt configuration
  INTCONbits.GIE = 1; // enable interrupts
  OPTION_REGbits.INTEDG = 0; // interrupt on falling edge
  INTCONbits.INTE = 1; // enable INT pin interrupts

  // init the EUSART
  TXSTAbits.TXEN = 1;
  TXSTAbits.SYNC = 0;
  RCSTAbits.SPEN = 1;

  //  baud settings for 4 MHz clock
//#define BAUD_19200
#define BAUD_115200  
  
#ifdef BAUD_19200  
  TXSTAbits.BRGH = 1;
  BAUDCONbits.BRG16 = 0;
  SPBRG = 12;
#endif
#ifdef BAUD_115200  
  TXSTAbits.BRGH = 1;
  BAUDCONbits.BRG16 = 1;
  SPBRG = 8; 
#endif  

  initLED();
  
  while(1){
    // poll for received code
    if (STATE_DONE == ir_code.state){


      // a code was received, send it out the serial port
      printf("\r\ncode:             0x%08lx\r\n", (unsigned long)ir_code.code);
      printf("command:          0x%02x\r\n", ir_code.command);
      printf("command_b:        0x%02x\r\n", ir_code.command_b);
      printf("address:          0x%02x\r\n", ir_code.address);
      printf("address_b:        0x%02x\r\n", ir_code.address_b);
      printf("extended address: 0x%04x\r\n", (unsigned int)ir_code.extended_address);      

//#define DUMP_STATS
#ifdef DUMP_STATS      
      // dump timing stats
      printf("preamble: %d\r\n", (int)stats[0]);
      for(int i=1; i<33; i++){
        printf("bit %d: %d\r\n", 32-i, (int)stats[i]);
      }
#endif // #ifdef DUMP_STATS
      
      process_remote_command(&ir_code);
      
      // listen for next code
      ir_code.state = STATE_RESET;
    }
  }
    
  return;
}
