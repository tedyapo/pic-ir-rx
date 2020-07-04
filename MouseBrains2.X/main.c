/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.80.0
        Device            :  PIC16LF1708
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/
//MouseBrains2
#include "mcc_generated_files/mcc.h"
#include "mousehat-dac.c"
#include <xc.h>
#include <stdint.h>
#include <stdio.h>
#include "IR_receiver.h"

// timing stats for analysis/tuning
uint8_t stats[33];

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

// initialize the registers for LED PWM generation
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
  PWM3DCH = 0; // initial duty cycle = 0
  PWM3DCLbits.PWM3DCL = 0; // initial duty cycle = 0
  PWM3CONbits.PWM3POL = 1; // active-low output
  TRISC &= 0b11101111; // enable RC4 output
  PWM3CONbits.PWM3EN = 1; // start PWM3

  // init the blue channel on PWM4/RA5
  // see ds. p 166
  TRISA |= 0b00100000; // disable RA5 output
  RA5PPS = 0b01111;  // route PWM4 output to RA5 
  CCPTMRSbits.P4TSEL = 0b00; // PWM4 based on timer2
  PWM4DCH = 0; // intial duty cycle = 0
  PWM4DCLbits.PWM4DCL = 0; // intial duty cycle = 0
  PWM4CONbits.PWM4POL = 1; // active-low output
  TRISA &= 0b11011111; // disable RA5 output
  PWM4CONbits.PWM4EN = 1; // start PWM4

  // init the red channel on CCP1/RC5
  // see ds. p 264
  // note: CCP1 does not have selectable PWM polarity
  //       so period value must be flipped
  TRISC |= 0b00100000; // disable RC5 output
  RC5PPS = 0b01100; // route CCP1 output to RC5 pin
  CCP1CONbits.CCP1M = 0b1100; // CCP1 in PWM mode
  CCPR1L = 255; // initial duty cycle = 1023, which is off for common anode
  CCP1CONbits.DC1B = 0x3; // initial duty cycle = 1023, off for C.A.
  TRISC &= 0b11011111; // enable RC5 output  
}

void setLEDColor(uint8_t red, uint8_t green, uint8_t blue)
{
  // note: only setting upper 8 bits of 10-bit PWM value
  //       so max duty cycle is 1020/1023  
  // red on CCP1/RC5
  // note: CCP1 doesn't have selectable 
  CCPR1L = 255 - red;
  // green on PWM3/RC4
  PWM3DCH = green;
  // blue on PWM4/RA5
  PWM4DCH = blue;
}

uint8_t LED_red;
uint8_t LED_green;
uint8_t LED_blue;

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
      LED_red = 225;
      LED_green = 155;
      LED_blue = 0;
    //setLEDColor(225, 155, 0);   
    //LED_blue -= 10;    
    break;
  case 0x48: // 3
      LED_red = 255;
      LED_green = 0;
      LED_blue = 0;
   // printf("%d\n", (int)battery_voltage());
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
  __delay_ms(1000);
  setLEDColor(0, 0, 0);
}


/*//
Main application
 */
void main(void)
{
    // initialize the device
     SYSTEM_Initialize();         
     DAC_Initialize();
     OPA1_Initialize();
     OPA2_Initialize();
     initLED();
     //(255, 0, 0); = blue
     //(255, 0, 255); = green
     //(200, 0, 30); = turq
     //(0, 130, 255); = yellow
     //(0, 255, 0); = red
     //(225, 155, 0) = pink
     //(225, 65, 0); = purple
     //(0, 0, 0); = dim 
     //setLEDColor(0, 0, 0);
    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();
    
    while(1){    
     //printf("\n hello");
    if ((int)battery_voltage() < 2500)
     {
         //IO_RC5_SetLow(); 
         //printf("%d\n", (int)battery_voltage());
        setLEDColor(255, 0, 255);
     }
    else
    //setLEDColor(); 
    DAC1CON1 = 0xFF;  
    __delay_ms(1000);
    DAC1CON1 = 0x90;
    __delay_ms(1000);
    //setLEDColor(225, 155, 0);
    if (STATE_DONE == ir_code.state){
      // a code was received, send it out the serial port
      printf("\r\ncode:         0x%08lx\r\n", (unsigned long)ir_code.code);
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


  /*  while (1)
    {    
       IO_RA5_SetHigh();  // 
       IO_RC5_SetHigh();   
      // IO_RC4_SetHigh();  // 
       // __delay_ms(500); 
       IO_RA5_SetLow(); 
       IO_RC5_SetLow();   
       //IO_RC4_SetLow();  // 
       //__delay_ms(500); 
        DAC1CON1 = 0x55; //27
        __delay_ms(3000);
        DAC1CON1 = 0x00; //58
        __delay_ms(3000);
    } */

