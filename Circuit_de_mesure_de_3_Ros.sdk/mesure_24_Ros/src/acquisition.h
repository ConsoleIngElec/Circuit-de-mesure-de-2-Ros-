/*
 * acquisition.h
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#ifndef SRC_ACQUISITION_H_
#define SRC_ACQUISITION_H_

#include "xttcps.h"

/* Handler interruption TTC 0.1s : Temp/Voltage/RST/affichage */
void TTC_Intr_Handler(void *CallBackRef);

/* Handler interruption Data_Ready : lecture 24 ROs, SD, reset capture */
void DataReady_Intr_Handler(void *CallBackRef);

#endif /* SRC_ACQUISITION_H_ */
