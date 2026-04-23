/*
 * RST.h
 *
 *  Created on: 9 avr. 2026
 *      Author: cmbouba
 */

#ifndef SRC_RST_H_
#define SRC_RST_H_

#include <stdint.h>

double   RST        (double ref_n, double mes_n, double sat);
void     RST_init   (void);
uint16_t RST_compute(float temp_measured);

#endif /* SRC_RST_H_ */
