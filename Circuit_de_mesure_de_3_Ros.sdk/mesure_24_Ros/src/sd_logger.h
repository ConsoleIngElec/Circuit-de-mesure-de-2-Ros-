/*
 * sd_logger.h
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#ifndef SRC_SD_LOGGER_H_
#define SRC_SD_LOGGER_H_

#include <stdint.h>
#include "ff.h"

// --- Nombre de ROs et de modes ---
#define NB_RO    24
#define NB_MODES  6

// --- Fichier de log ---
extern char *log_file;

/* --- Données partagées (remplies par main, lues par le logger) ---
 *
 * freq_all : fréquences en Hz (valeur brute 32 bits du compteur).
 *            Stocké en uint32_t pour conserver la précision exacte
 *            du comptage (un float ne représente pas exactement tous
 *            les entiers au-dessus de 2^24 = 16 777 216).
 */
extern uint32_t freq_all[NB_RO];
extern double   elapsed_mode[NB_MODES];
extern char     time_mode[NB_MODES][40];

/* Dernières valeurs T/PWM mises à jour par TVReady_Intr_Handler à 10 Hz
 * et lues par write_data_line lors de l'écriture du cycle. */
extern volatile float    last_temp;
extern volatile uint16_t last_pwm;

// --- État de la carte SD ---
extern volatile int sd_ready;

// --- API publique ---
int  remount_sd(void);
void check_sd_card(void);
void write_to_sd(char *filename, char *data);
void write_header(void);
void write_data_line(int cycle);
void sd_logger_init(void);

/*A utiliser juste pour l'enregistrement de la température et la tension au cours du temps
 *
 */
extern char *temp_log_file; // Nouveau fichier
void write_temp_header(void);
void write_temp_line(float temperature, float voltage);
/* Peut être effacer*/

#endif /* SRC_SD_LOGGER_H_ */
