/**
  DAC Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    dac.h

  @Summary
    This is the generated header file for the DAC driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for DAC.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.80.0
        Device            :  PIC16LF1708
        Driver Version    :  2.10
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.10 and above
        MPLAB 	          :  MPLAB X 5.30
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
#include <xc.h>
#ifndef DAC_H
#define DAC_H
#define CURRENT_SOURCE_RESISTANCE_OHMS 4700
/**
  Section: Included Files
*/

#include <stdbool.h>
#include <stdint.h>

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif

/**
  Section: DAC APIs
*/

/**
  @Summary
    Initializes the DAC

  @Description
    This routine initializes the DAC.
    This routine must be called before any other DAC routine is called.
    This routine should only be called once during system initialization.

  @Preconditions
    None

  @Param
    None

  @Returns
    None

  @Comment
    

  @Example
    <code>
    DAC_Initialize();
    </code>
*/
void DAC_Initialize(void);
//
// Set the current-source output to specified current (in integer microamps)
//  note: this function needs a relatively recently measured value for Vdd
//        to produce accurate output currents, but measuring the Vdd each
//        time may introduce too much delay, so call battery_voltage()
//        periodically to get a Vdd measurement
/*void setCurrent(uint16_t microamps, uint16_t Vdd_mv)
{
  uint16_t Vdac_mv = Vdd_mv - 
    ((uint32_t)(CURRENT_SOURCE_RESISTANCE_OHMS) * microamps + 500) / 1000;
  DAC1CON1 = (256L * Vdac_mv + Vdd_mv/2) / Vdd_mv;
}*/
/**
  @Summary
    Set Input data into DAC.

  @Description
    This routine pass the digital input data into
    DAC voltage reference control register.

  @Preconditions
    The DAC_Initialize() routine should be called
    prior to use this routine.

  @Param
    inputData - 8bit digital data to DAC.

  @Returns
    None

  @Example
    <code>
    uint8_t count=0;

    DAC_Initialize();

    for(count=0; count<=30; count++)
    {
        DAC_SetOutput(count);
    }

    while(1)
    {
    }
    </code>
*/
void DAC_SetOutput(uint8_t inputData);

/**
  @Summary
    Read input data fed to DAC.

  @Description
    This routine reads the digital input data fed to
    DAC voltage reference control register.

  @Preconditions
    The DAC_Initialize() routine should be called
    prior to use this routine.

  @Param
    None

  @Returns
    uint8_t inputData - digital data fed to DAC

  @Example
    <code>
    uint8_t count=0;
    uint8_t inputData;

    DAC_Initialize();

    inputData = DAC_GetOutput();

    while(1)
    {
    }
    </code>
*/
uint8_t DAC_GetOutput(void);

#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif

#endif // DAC_H
/**
 End of File
*/
