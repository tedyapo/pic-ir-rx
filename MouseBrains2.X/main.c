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
// LEDs
uint8_t LED_red;
uint8_t LED_green;
uint8_t LED_blue;

// flag
uint8_t flag;

// DAC variables
uint16_t microamps;
uint16_t Vdd_mv;
uint16_t Vdac_mv;

// freq/ current
uint8_t frequency;
uint8_t duty;
uint8_t current;

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
// note: blue using CCP1 output on pin RC5
//       red using PWM3 output on pin RC4
//       green using PWM4 output on pin RA5
void initLED()
{
  // init timer2, used as base for all three PWM outputs
  PR2 = 255; // load PWM period for timer2
  T2CONbits.T2CKPS = 0b10; // timer2 prescaler 16 --> 244 Hz output
  T2CONbits.TMR2ON = 1; // enable timer2

  // init the red channel on PWM3/RC4
  // see ds. p 166
  TRISC |= 0b00010000; // disable RC4 output
  RC4PPS = 0b01110;  // route PWM3 output to RC4  
  CCPTMRSbits.P3TSEL = 0b00; // PWM3 based on timer2
  PWM3DCH = 0; // initial duty cycle = 0
  PWM3DCLbits.PWM3DCL = 0; // initial duty cycle = 0
  PWM3CONbits.PWM3POL = 1; // active-low output
  TRISC &= 0b11101111; // enable RC4 output
  PWM3CONbits.PWM3EN = 1; // start PWM3

  // init the green channel on PWM4/RA5
  // see ds. p 166
  TRISA |= 0b00100000; // disable RA5 output
  RA5PPS = 0b01111;  // route PWM4 output to RA5 
  CCPTMRSbits.P4TSEL = 0b00; // PWM4 based on timer2
  PWM4DCH = 0; // intial duty cycle = 0
  PWM4DCLbits.PWM4DCL = 0; // intial duty cycle = 0
  PWM4CONbits.PWM4POL = 1; // active-low output
  TRISA &= 0b11011111; // disable RA5 output
  PWM4CONbits.PWM4EN = 1; // start PWM4

  // init the blue channel on CCP1/RC5
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
  // blue on CCP1/RC5
  // note: CCP1 doesn't have selectable polarity
  CCPR1L = 255 - blue;
  // red on PWM3/RC4
  PWM3DCH = red;
  // green on PWM4/RA5
  PWM4DCH = green;
}
//*******************************INFORMATION CODES******************
//
//
void lowBattery(){ // blink red until battery is replaced
  setLEDColor(0, 255, 255);
  __delay_ms(250);
  setLEDColor(0, 0, 0);
  __delay_ms(500);
}

void startUp(){ // blink green a few times
   for (int i = 0; i < 5; i++){
   setLEDColor(255, 0, 255);
  __delay_ms(100);
  setLEDColor(0, 0, 0);
  __delay_ms(100);
  }
   duty = 0;
}

void selectSomething(){ // not clear if current or frequency are selected
    // blinks blue a few times
  setLEDColor(255, 0, 0);
  __delay_ms(500);
  setLEDColor(0, 0, 0);
  __delay_ms(500);
  setLEDColor(255, 0, 0);
  __delay_ms(500);
  setLEDColor(0, 0, 0);
  __delay_ms(500);
}

void selectFrequency(){
    flag = 1;
    setLEDColor(255, 0, 255);
    __delay_ms(1000);
    setLEDColor(0, 0, 0);
    printf("\n Frequency selected");
}

// **********************************END INFORMATION CODES


/*void setFrequency(duty){
    DAC1CON1;
    __delay_ms(duty);
    DAC1CON1;
    __delay_ms(duty); // how to get value for duty here??
}*/

void setCurrent(microamps, Vdd_mv)
{
Vdac_mv = Vdd_mv -
    ((uint32_t)(CURRENT_SOURCE_RESISTANCE_OHMS) * microamps + 500) / 1000;
DAC1CON1 = (256L * Vdac_mv + Vdd_mv/2) / Vdd_mv;
}

/// todo: do something with the commands
     //(255, 0, 0); = blue
     //(255, 0, 255); = green
     //(200, 0, 30); = turq
     //(0, 130, 255); = yellow
     //(0, 255, 0); = red
    //(0,100,255);? orange
     //(225, 155, 0) = pink
     //(225, 65, 0); = purple
     //(0, 0, 0); = dim 
void process_remote_command(NEC_IR_code_t* code){
  setLEDColor(0, 0, 0);
  
  switch(code->command){
  case 0xa0: // up arrow
      setLEDColor(0, 0, 0);
      if (flag == 1){
        if (duty >= 0 && duty <=150){
        duty = duty + 30;
        }
        else {
        duty = 150;
        selectSomething();
        }
       //setFrequency(duty);
       //if frequency is zero or 150 (limits), blink turquoise?
       printf("%d\n", (duty));
      }
      else if (flag == 2){
       //call DAC function;  
      }
      else{
       selectSomething();   
      }
    break;
  case 0xb0: // down arrow
      if (flag == 1){
          if (duty >= 0 && duty <=150){
          duty = duty - 30;
          printf("%d\n", (duty));
          }
          else{
          duty = 150;
          selectSomething();
          }
       }            
       //setFrequency(duty);
       //
      else if (flag == 2){
       //call DAC function;  
      }
      else{
       selectSomething();   
      }
    break;    
  case 0x50: // right arrow, selects frequency (green)
    selectFrequency();
    break;
  case 0x10: // left arrow, selects current (yellow)
    LED_red = 0;
    LED_green = 130;
    LED_blue = 255;
    flag = 2;
    break;
  case 0x08: // 1, resets current or frequency select (red)
    LED_red = 0;
    LED_green = 255;
    LED_blue = 0;
    printf("\n reset select");
    flag = 0;
    break;
  case 0x88: // 2, resets frequency to 0  
    duty = 0;
    break;
  case 0x48: // 3, resets current to 0
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
  case 0x58: // 9, check battery voltage
       // printf("%d\n", (int)battery_voltage())
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
     INTERRUPT_GlobalInterruptEnable();
     INTERRUPT_PeripheralInterruptEnable();
     startUp();

     //(255, 0, 0); = blue
     //(255, 0, 255); = green
     //(200, 0, 30); = turq
     //(0, 130, 255); = yellow
     //(0, 255, 0); = red
     //(225, 155, 0) = pink
     //(225, 65, 0); = purple
     //(0, 0, 0); = dim 
     //setLEDColor(0, 0, 0);   
    while(1){    
     //printf("\n hello");
    if ((int)battery_voltage() < 2500)
     {
        lowBattery();
         //printf("%d\n", (int)battery_voltage());
     }
    /*DAC1CON1 = 0xFF;  
    __delay_ms(1000);
    DAC1CON1 = 0x90;
    __delay_ms(1000);*/
    
    if (STATE_DONE == ir_code.state){
      // a code was received, send it out the serial port
      //printf("\r\ncode:         0x%08lx\r\n", (unsigned long)ir_code.code);
      //printf("command:          0x%02x\r\n", ir_code.command);
      //printf("command_b:        0x%02x\r\n", ir_code.command_b);
      //printf("address:          0x%02x\r\n", ir_code.address);
      //printf("address_b:        0x%02x\r\n", ir_code.address_b);
      //printf("extended address: 0x%04x\r\n", (unsigned int)ir_code.extended_address);      

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




