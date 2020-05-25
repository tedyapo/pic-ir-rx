/*
 * File:   main.c
 * Author: tyapo
 *
 * Created on May 24, 2020, 1:45 PM
 */
// CONFIG1
#pragma config FOSC = INTOSCCLK  // Oscillator Selection bits (INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = ON       // RE3/MCLR Pin Function Select bit (RE3/MCLR pin function is MCLR)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config BOREN = OFF      // Brown-out Reset Selection bits (BOR disabled)
#pragma config BORV = 19        // Brown-out Reset Voltage selection bit (Brown-out Reset Voltage (VBOR) set to 1.9 V nominal)
#pragma config PLLEN = ON       // INTOSC PLL Enable bit (INTOSC Frequency is 16MHz (32x))

// CONFIG2
#pragma config VCAPEN = DIS     // Voltage Regulator Capacitor Enable bits (All VCAP pin functions are disabled)

#include <xc.h>
#include <pic16f723a.h>
#include <stdint.h>

// receiver states
typedef enum {STATE_RESET = 0,
	      STATE_RECEIVING,
	      STATE_DONE} rx_state_t;

static rx_state_t rx_state = STATE_RESET;
static uint32_t received_code;
static uint8_t n_bits;

// Note: timings based on 4 MHz fosc with timer0 prescale=64

// preamble nominally 211 ticks
#define PREAMBLE_MIN 190
#define PREAMBLE_MAX 232

// logic 0 nominally 17 ticks
#define ZERO_MIN 14
#define ZERO_MAX 20

// logic 1 nominally 36 ticks
#define ONE_MIN 30
#define ONE_MAX 42

void __interrupt() ISR(void)
{
  uint8_t time = TMR0;
  TMR0 = 0;

  switch(rx_state){
  case STATE_RESET:
    // check for valid preamble time
    if (time >= PREAMBLE_MIN && time <= PREAMBLE_MAX){
      n_bits = 0;
      rx_state = STATE_RECEIVING;
    }
    break;
  case STATE_RECEIVING:
    // shift the previous bits and check for valid new bit
    received_code <<= 1;
    if (time >= ONE_MIN && time <= ONE_MAX){
      received_code |= 1;
      n_bits++;
    } else if (time >= ZERO_MIN && time <= ZERO_MAX){
      n_bits++;      
    } else {
      // not a valid bit
      rx_state = STATE_RESET;
      break;
    }
    if (32 == n_bits){
      // check for valid code
      if ( ((received_code >> 24) & 0xff) == ((~received_code >> 16) & 0xff) &&
	   ((received_code >>  8) & 0xff) == ((~received_code >>  0) & 0xff)){ 
	rx_state = STATE_DONE;
      } else {
	rx_state = STATE_RESET;
      }
    }
    break;
  case STATE_DONE:
    // wait for main loop to reset state
    // note: no new codes are received until main loop resets receiver
    break;
  default:
    // any unexpected state gets reset
    rx_state = STATE_RESET;
  }
  
  INTCONbits.INTF = 0;
}

// write a character to the serial port
void putchar(char value)
{
  // wait for room in the FIFO
  while(!PIR1bits.TXIF){ /* spin */ }  
  TXREG = value;
  __asm("NOP");
}

// send a byte as ASCII-formatted binary over the serial port
// e.g. 10110110
void send_binary_byte(uint8_t value)
{
  for (uint8_t i=0; i<8; i++){
    putchar((value & (1 << (7-i))) ? '1' : '0');
  }
}

// send a byte as ASCII-formatted hex over the serial port
// e.g. 1F
void send_hex_byte(uint8_t value)
{
  char hex_table[] = "0123456789ABCDEF";
  putchar( hex_table[((value >> 4) & 0xf)]);
  putchar( hex_table[((value >> 0) & 0xf)]);
}

void main(void) {
    OSCCONbits.IRCF = 0b01; // 4 MHz

    ANSELB = 0; // PORTB all digital    
    TRISC = 0; // PORTC all outputs
    TRISB = 0b00000001; // INT input
    
    OPTION_REGbits.PSA = 0; // assign prescaler to timer0
    OPTION_REGbits.PS = 0b101; // prescale by 64
    OPTION_REGbits.T0CS = 0; // timer0 clocked from Fosc/4
    
    INTCONbits.GIE = 1; // enable interrupts
    OPTION_REGbits.INTEDG = 0; // interrupt on falling edge
    INTCONbits.INTE = 1; // enable INT pin interrupts

    // init the AUSART
    TXSTAbits.TXEN = 1;
    TXSTAbits.SYNC = 0;
    RCSTAbits.SPEN = 1;

    // 9600 baud for 4 MHz clock
    TXSTAbits.BRGH = 1;
    SPBRG = 25;

    while(1){
      // poll for received code
      if (STATE_DONE == rx_state){
	// a code was received, send it out the serial port
	send_hex_byte((received_code >> 24) & 0xff);
	send_hex_byte((received_code >> 16) & 0xff);
	send_hex_byte((received_code >>  8) & 0xff);
	send_hex_byte((received_code >>  0) & 0xff);
	// listen for next code
	rx_state = STATE_RESET;
      }
    }
    
    return;
}
