/*
 * sd_logger.c
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <inttypes.h>
#include "sd_logger.h"
#include "sleep.h"
// A effacer
#include "xtime_l.h"

// --- Fichier de log ---
char *log_file = "24_ROS.CSV";

// --- État SD ---
volatile int sd_ready     = 0;
static   int sd_was_ready = 0;

// --- Données partagées (définies ici, déclarées extern dans le .h) ---
uint32_t freq_all[NB_RO];               /* Fréquences en Hz (valeur brute 32 bits) */
double   elapsed_mode[NB_MODES];
char     time_mode[NB_MODES][40];

/* Dernières valeurs T/PWM rafraîchies par TVReady_Intr_Handler à 10 Hz */
volatile float    last_temp = 0.0f;
volatile uint16_t last_pwm  = 0;

static FATFS fatfs;

void sd_logger_init(void) {
    sd_ready     = 1;
    sd_was_ready = 1;
}

int remount_sd(void) {
    FRESULT res;
    f_mount(NULL, "0:/", 0);
    usleep(200000);
    res = f_mount(&fatfs, "0:/", 1);
    return (res == FR_OK);
}

void check_sd_card(void) {
    if (!sd_ready) {
        if (remount_sd()) {
            sd_ready = 1;
            if (!sd_was_ready) {
                printf("\n[SD] *** CARTE INSEREE *** Enregistrement repris.\n\r");
            }
        }
    }
    sd_was_ready = sd_ready;
}

void write_to_sd(char *filename, char *data) {
    FIL fil;
    UINT bw;
    FRESULT res;

    if (!sd_ready) {
        printf("[SD] Donnee non enregistree (carte absente).\n\r");
        return;
    }

    res = f_open(&fil, filename, FA_WRITE | FA_OPEN_APPEND);
    if (res != FR_OK) {
        if (sd_ready) {
            sd_ready = 0;
            printf("\n[SD] *** CARTE RETIREE *** Donnees perdues !\n\r");
        }
        return;
    }

    res = f_write(&fil, data, strlen(data), &bw);
    if (res != FR_OK || bw != strlen(data)) {
        printf("[SD] ALERTE : Ecriture incomplete !\n\r");
        sd_ready = 0;
    }

    f_close(&fil);
}

/* =========================================================================
 * write_header
 *
 * Format CSV (une seule ligne d'entête) :
 *   Cycle ; Temps ; T ; PWM ;
 *   M1_ROB1_DC0  ; M1_ROB1_DC1  ; M1_ROB1_100Hz  ; M1_ROB1_100MHz  ;
 *   M2_ROB2_DC0  ; M2_ROB2_DC1  ; M2_ROB2_100Hz  ; M2_ROB2_100MHz  ;
 *   M3_ROB3_DC0  ; M3_ROB3_DC1  ; M3_ROB3_100Hz  ; M3_ROB3_100MHz  ;
 *   M4_ROLP1_DC0 ; M4_ROLP1_DC1 ; M4_ROLP1_100Hz ; M4_ROLP1_100MHz ;
 *   M5_ROLP2_DC0 ; M5_ROLP2_DC1 ; M5_ROLP2_100Hz ; M5_ROLP2_100MHz ;
 *   M6_ROLP3_DC0 ; M6_ROLP3_DC1 ; M6_ROLP3_100Hz ; M6_ROLP3_100MHz
 *
 *   Temps : timestamp (h:m:s ou j:h:m:s) au moment de l'écriture du cycle
 *   T     : température en °C (dernière valeur lue à 10 Hz)
 *   PWM   : duty cycle envoyé au PL (0 - 2550)
 *   Fréquences : en Hz (entiers exacts, valeur brute du compteur 32 bits)
 * ========================================================================= */
void write_header(void) {
    FILINFO fno;
    if (f_stat(log_file, &fno) != FR_OK) {
        write_to_sd(log_file,
            "Cycle;Temps;T;PWM;"
            "M1_ROB1_DC0;M1_ROB1_DC1;M1_ROB1_100Hz;M1_ROB1_100MHz;"
            "M2_ROB2_DC0;M2_ROB2_DC1;M2_ROB2_100Hz;M2_ROB2_100MHz;"
            "M3_ROB3_DC0;M3_ROB3_DC1;M3_ROB3_100Hz;M3_ROB3_100MHz;"
            "M4_ROLP1_DC0;M4_ROLP1_DC1;M4_ROLP1_100Hz;M4_ROLP1_100MHz;"
            "M5_ROLP2_DC0;M5_ROLP2_DC1;M5_ROLP2_100Hz;M5_ROLP2_100MHz;"
            "M6_ROLP3_DC0;M6_ROLP3_DC1;M6_ROLP3_100Hz;M6_ROLP3_100MHz\n"
        );
    }
}

/* =========================================================================
 * write_data_line
 *
 * Écrit une ligne CSV pour le cycle courant.
 *   - Cycle : numéro de cycle
 *   - Temps : timestamp pris sur le mode 1 (le plus ancien du cycle)
 *   - T     : température (last_temp, mise à jour à 10 Hz)
 *   - PWM   : duty cycle (last_pwm, mis à jour à 10 Hz)
 *   - 24 fréquences en Hz (entiers exacts), ordre M1...M6, et dans chaque
 *     mode DC0, DC1, 100Hz, 100MHz (= ordre des registres AXI).
 * ========================================================================= */
void write_data_line(int cycle) {
    FIL fil;
    UINT bw;
    FRESULT res;
    char part[64];

    if (!sd_ready) {
        printf("[SD] Donnee non enregistree (carte absente).\n\r");
        return;
    }

    res = f_open(&fil, log_file, FA_WRITE | FA_OPEN_APPEND);
    if (res != FR_OK) {
        if (sd_ready) {
            sd_ready = 0;
            printf("\n[SD] *** CARTE RETIREE *** Donnees perdues !\n\r");
        }
        return;
    }

    /* Préfixe : Cycle ; Temps ; T ; PWM ; */
    sprintf(part, "%d;%s;%.3f;%u;",
            cycle,
            time_mode[0],
            (double)last_temp,
            (unsigned int)last_pwm);
    res = f_write(&fil, part, strlen(part), &bw);
    if (res != FR_OK || bw != strlen(part)) {
        printf("[SD] ALERTE : Ecriture incomplete (prefixe) !\n\r");
        sd_ready = 0; f_close(&fil); return;
    }

    /* 24 fréquences en Hz (entiers exacts uint32_t).
     * %lu = unsigned long, garanti >= 32 bits (cast pour la portabilité).
     * Le séparateur ';' est mis entre les valeurs, '\n' après la dernière. */
    int i;
    for (i = 0; i < NB_RO; i++) {
        if (i < NB_RO - 1) {
            sprintf(part, "%lu;", (unsigned long)freq_all[i]);
        } else {
            sprintf(part, "%lu\n", (unsigned long)freq_all[i]);
        }
        res = f_write(&fil, part, strlen(part), &bw);
        if (res != FR_OK || bw != strlen(part)) {
            printf("[SD] ALERTE : Ecriture incomplete (RO %d) !\n\r", i + 1);
            sd_ready = 0; f_close(&fil); return;
        }
    }

    f_close(&fil);
}

/* Concerne l'enregistrement de la température
 * pour la regulation : sera effacer après
 */

// Dans sd_logger.c
char *temp_log_file = "TEMP_LOG.CSV";

void write_temp_header(void) {
    FILINFO fno;
    if (f_stat(temp_log_file, &fno) != FR_OK) {
        write_to_sd(temp_log_file, "Temps_Sec;Temperature;Voltage\n");
    }
}

void write_temp_line(float temperature, float voltage) {
    char line[100];
    XTime tNow;
    XTime_GetTime(&tNow);
    // On utilise tStart qui est externe ou on le recalcule
    double elapsed = (double)tNow / (double)COUNTS_PER_SECOND;

    sprintf(line, "%.3f;%.3f;%.3f\n", elapsed, temperature, voltage);
    write_to_sd(temp_log_file, line);
}
