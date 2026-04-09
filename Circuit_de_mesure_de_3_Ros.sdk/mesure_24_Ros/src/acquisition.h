/*
 * acquisition.h
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#ifndef SRC_ACQUISITION_H_
#define SRC_ACQUISITION_H_

#include "xtime_l.h"

// --- Labels des stress ---
extern const char *stress_label[4];

// --- Utilitaire temps ---
void format_time(double total_seconds, char *out_str);

// --- Capture d'un cycle complet (6 modes x 4 ROs) ---
void run_capture_cycle(int cycle_count, XTime tStart);

extern float current_temp;
extern float current_volt_fpga;

#endif /* SRC_ACQUISITION_H_ */
