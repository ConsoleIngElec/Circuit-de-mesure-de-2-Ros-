/*
 * sd_logger.c
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#include <stdio.h>
#include <string.h>
#include "sd_logger.h"
#include "sleep.h"

// --- Fichier de log ---
char *log_file = "24_ROS.CSV";

// --- État SD ---
volatile int sd_ready     = 0;
static   int sd_was_ready = 0;

// --- Données partagées (définies ici, déclarées extern dans le .h) ---
float  freq_all[NB_RO];
double elapsed_mode[NB_MODES];
char   time_mode[NB_MODES][40];

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

void write_header(void) {
    FILINFO fno;
    if (f_stat(log_file, &fno) != FR_OK) {
        write_to_sd(log_file,
            ";;;MODE 1 - RO_B 1"
            ";;;;;;;;MODE 2 - RO_B 2"
            ";;;;;;;;MODE 3 - RO_B 3"
            ";;;;;;;;MODE 4 - RO_LP 1"
            ";;;;;;;;MODE 5 - RO_LP 2"
            ";;;;;;;;MODE 6 - RO_LP 3\n"
        );

        write_to_sd(log_file,
            "Cycle;Temps;Temps_Sec;RO1_DC0;RO2_DC1;RO3_100Hz;RO4_100MHz;"
            ";Cycle;Temps;Temps_Sec;RO5_DC0;RO6_DC1;RO7_100Hz;RO8_100MHz;"
            ";Cycle;Temps;Temps_Sec;RO9_DC0;RO10_DC1;RO11_100Hz;RO12_100MHz;"
            ";Cycle;Temps;Temps_Sec;RO13_DC0;RO14_DC1;RO15_100Hz;RO16_100MHz;"
            ";Cycle;Temps;Temps_Sec;RO17_DC0;RO18_DC1;RO19_100Hz;RO20_100MHz;"
            ";Cycle;Temps;Temps_Sec;RO21_DC0;RO22_DC1;RO23_100Hz;RO24_100MHz\n"
        );
    }
}

void write_data_line(int cycle) {
    FIL fil;
    UINT bw;
    FRESULT res;
    char part[300];

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

    sprintf(part,
            "%d;%s;%.0f;%.3f;%.3f;%.3f;%.3f;"
            ";%d;%s;%.0f;%.3f;%.3f;%.3f;%.3f;",
            cycle, time_mode[0], elapsed_mode[0],
            freq_all[0],  freq_all[1],  freq_all[2],  freq_all[3],
            cycle, time_mode[1], elapsed_mode[1],
            freq_all[4],  freq_all[5],  freq_all[6],  freq_all[7]);
    res = f_write(&fil, part, strlen(part), &bw);
    if (res != FR_OK || bw != strlen(part)) {
        printf("[SD] ALERTE : Ecriture incomplete partie 1 !\n\r");
        sd_ready = 0; f_close(&fil); return;
    }

    sprintf(part,
            ";%d;%s;%.0f;%.3f;%.3f;%.3f;%.3f;"
            ";%d;%s;%.0f;%.3f;%.3f;%.3f;%.3f;",
            cycle, time_mode[2], elapsed_mode[2],
            freq_all[8],  freq_all[9],  freq_all[10], freq_all[11],
            cycle, time_mode[3], elapsed_mode[3],
            freq_all[12], freq_all[13], freq_all[14], freq_all[15]);
    res = f_write(&fil, part, strlen(part), &bw);
    if (res != FR_OK || bw != strlen(part)) {
        printf("[SD] ALERTE : Ecriture incomplete partie 2 !\n\r");
        sd_ready = 0; f_close(&fil); return;
    }

    sprintf(part,
            ";%d;%s;%.0f;%.3f;%.3f;%.3f;%.3f;"
            ";%d;%s;%.0f;%.3f;%.3f;%.3f;%.3f\n",
            cycle, time_mode[4], elapsed_mode[4],
            freq_all[16], freq_all[17], freq_all[18], freq_all[19],
            cycle, time_mode[5], elapsed_mode[5],
            freq_all[20], freq_all[21], freq_all[22], freq_all[23]);
    res = f_write(&fil, part, strlen(part), &bw);
    if (res != FR_OK || bw != strlen(part)) {
        printf("[SD] ALERTE : Ecriture incomplete partie 3 !\n\r");
        sd_ready = 0;
    }

    f_close(&fil);
}
