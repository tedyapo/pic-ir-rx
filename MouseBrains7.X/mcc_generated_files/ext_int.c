/**
   EXT_INT Generated Driver File
 
   @Company
     Microchip Technology Inc.
 
   @File Name
     ext_int.c
 
   @Summary
     This is the generated driver implementation file for the EXT_INT driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs
 
   @Description
     This source file provides implementations for driver APIs for EXT_INT.
     Generation Information :
         Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.80.0
         Device            :  PIC16LF1708
         Driver Version    :  1.11
     The generated drivers are tested against the following:
         Compiler          :  XC8 2.10 and above
         MPLAB             :  MPLAB X 5.30
 */ 
//MouseBrains2
 /**
   Section: Includes
 */
#include <xc.h>
#include "ext_int.h"
#include <stdint.h>
#include <stdio.h>
#include "../IR_receiver.h"

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

NEC_IR_code_t ir_code = {0, STATE_RESET};

void (*INT_InterruptHandler)(void);

void INT_ISR(void)
{
    EXT_INT_InterruptFlagClear();

    // Callback function gets called everytime this ISR executes
    INT_CallBack();    
}

void INT_CallBack(void)
{
    // Add your custom callback code here
    if(INT_InterruptHandler)
    {
        INT_InterruptHandler();
    }
}

void INT_SetInterruptHandler(void (* InterruptHandler)(void)){
    INT_InterruptHandler = InterruptHandler;
}

void INT_DefaultInterruptHandler(void){
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
#ifdef COLLECT_IR_STATS
      stats[0] = time; // temporarily collect stats
#endif // #ifdef COLLECT_IR_STATS
    }
    break;
  case STATE_RECEIVING:
    // shift the previous bits and check for valid new bit
    ir_code.code <<= 1;
    if (time >= ONE_MIN_TICKS && time <= ONE_MAX_TICKS){
#ifdef COLLECT_IR_STATS
      stats[1+ir_code.n_bits] = time; // temporarily collect stats
#endif // #ifdef COLLECT_IR_STATS
      ir_code.code |= 1;
      ir_code.n_bits++;
    } else if (time >= ZERO_MIN_TICKS && time <= ZERO_MAX_TICKS){
#ifdef COLLECT_IR_STATS
      stats[1+ir_code.n_bits] = time; // temporarily collect stats
#endif // #ifdef COLLECT_IR_STATS
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

void EXT_INT_Initialize(void)
{
    
    // Clear the interrupt flag
    // Set the external interrupt edge detect
    EXT_INT_InterruptFlagClear();   
    EXT_INT_fallingEdgeSet();    
    // Set Default Interrupt Handler
    INT_SetInterruptHandler(INT_DefaultInterruptHandler);
    EXT_INT_InterruptEnable();      

}

