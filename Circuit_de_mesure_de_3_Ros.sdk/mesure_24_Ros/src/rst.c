/*
 * RST.c
 *
 *  Created on: 9 avr. 2026
 *      Author: cmbouba
 */

#include "rst.h"
#include "main.h"
#include <stdint.h>

/* -------------------------------------------------------------------------
 * États internes
 * ------------------------------------------------------------------------- */
static double ref_n_1  = 0;
static double refM_n   = 0;
static double refM_n_1 = 0;
static double refM_n_2 = 0;
static double refT_n   = 0;
static double mes_n_1  = 0;
static double mes_n_2  = 0;
static double mesR_n   = 0;
static double eps_n    = 0;
static double epsS_n   = 0;
static double epsS_n_1 = 0;
static double u_n_1    = 0;

/* -------------------------------------------------------------------------
 * Coefficients RST
 * ------------------------------------------------------------------------- */
static const double bAM0 =  0.007382484040406;
static const double bAM1 =  0.006903816118944;
static const double aAM1 = -1.803575479785314;
static const double aAM2 =  0.817861779944664;
static const double bT0  = -2.374182022188446;
static const double bR0  = -19.258578916852102;
static const double bR1  =  -1.187091011094292;
static const double bR2  =  18.071487905757810;
static const double bS0  =   1.000000000000000;
static const double aS1  =  -0.648265762515189;

/* -------------------------------------------------------------------------
 * Correcteur RST - une itération
 * ------------------------------------------------------------------------- */
double RST(double ref_n, double mes_n, double sat)
{
    double u_n;

    refM_n = -aAM1*refM_n_1 - aAM2*refM_n_2
             + bAM0*ref_n   + bAM1*ref_n_1;
    refT_n = bT0  * refM_n;
    mesR_n = bR0*mes_n + bR1*mes_n_1 + bR2*mes_n_2;
    eps_n  = refT_n - mesR_n;
    epsS_n = -aS1*epsS_n_1 + bS0*eps_n;

    ref_n_1  = ref_n;
    refM_n_2 = refM_n_1;  refM_n_1 = refM_n;
    mes_n_2  = mes_n_1;   mes_n_1  = mes_n;
    epsS_n_1 = epsS_n;

    u_n = epsS_n + u_n_1;
    if (u_n >  sat) u_n =  sat;
    if (u_n < -sat) u_n = -sat;
    u_n_1 = u_n;

    return u_n;
}

/* -------------------------------------------------------------------------
 * Remise à zéro des états internes
 * ------------------------------------------------------------------------- */
void RST_init(void)
{
    ref_n_1=0; refM_n=0;   refM_n_1=0; refM_n_2=0;
    refT_n=0;  mes_n_1=0;  mes_n_2=0;  mesR_n=0;
    eps_n=0;   epsS_n=0;   epsS_n_1=0; u_n_1=0;
}

/* -------------------------------------------------------------------------
 * Interface : température mesurée -> duty cycle PWM
 * ------------------------------------------------------------------------- */
uint16_t RST_compute(float temp_measured)
{
    double u = RST((double)TEMP_REF_C,
                   (double)temp_measured,
                   PWM_SAT);
    if (u < 0.0)     u = 0.0;
    if (u > PWM_SAT) u = PWM_SAT;
    return (uint16_t)u;
}
