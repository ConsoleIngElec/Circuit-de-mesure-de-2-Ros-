/*
 * acquisition.h
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#ifndef SRC_ACQUISITION_H_
#define SRC_ACQUISITION_H_

/* Handler interruption TV_Ready (IRQ PL->PS, pl_ps_irq0)
 * Lecture Temp/Voltage, RST, régulation tension, affichage. */
void TVReady_Intr_Handler(void *CallBackRef);

/* Handler interruption Data_Ready (IRQ PL->PS, pl_ps_irq1)
 * Lecture 24 ROs, écriture SD, ack capture. */
void DataReady_Intr_Handler(void *CallBackRef);

#endif /* SRC_ACQUISITION_H_ */
