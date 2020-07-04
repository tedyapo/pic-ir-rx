// DAC-controlled current source for mouse hat
//#include <xc.h>
#include <stdint.h>
//#include <stdio.h>
#define CURRENT_SOURCE_RESISTANCE_OHMS 4700

uint16_t microamps;
uint16_t Vdd_mv;
//
// Set the current-source output to specified current (in integer microamps)
//  note: this function needs a relatively recently measured value for Vdd
//        to produce accurate output currents, but measuring the Vdd each
//        time may introduce too much delay, so call battery_voltage()
//        periodically to get a Vdd measurement
//void setCurrent(microamps, Vdd_mv);
//{
//uint16_t Vdac_mv = Vdd_mv - 
//    ((uint32_t)(CURRENT_SOURCE_RESISTANCE_OHMS) * microamps + 500) / 1000;
//DAC1CON1 = (256L * Vdac_mv + Vdd_mv/2) / Vdd_mv;
//}
