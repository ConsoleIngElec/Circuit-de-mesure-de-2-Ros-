/*
 * acquisition.c

 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#include <stdio.h>
#include <string.h>
#include "acquisition.h"
#include "sd_logger.h"
#include "main.h"
#include "xil_io.h"
#include "xtime_l.h"

// --- Labels des stress ---
const char *stress_label[4] = {
    "DC:  0",
    "DC:  1",
    "100 Hz",
    "100 MHz"
};


void format_time(double total_seconds, char *out_str) {
    int days = (int)total_seconds / 86400;
    int rest = (int)total_seconds % 86400;
    int h    = rest / 3600;
    int m    = (rest % 3600) / 60;
    int s    = rest % 60;
    if (days > 0) sprintf(out_str, "%02dj:%02dh:%02dmin:%02ds", days, h, m, s);
    else sprintf(out_str, "%02dh:%02dmin:%02ds", h, m, s);
}

void run_capture_cycle(int cycle_count, XTime tStart) {
    u8  raw_bytes[16]; // Uniquement pour les fréquences
    u32 frequency_32bit;
    char time_str[40], mode_label[20];
    XTime tNow;

    for (int k = 0; k < NB_MODES; k++) {
        check_sd_card();

        // 1. Attente ALLOW
        while ((Xil_In32(BASE_ADDR + REG_DATA_ALLOW_OFFSET) & MASK_ALLOW) == 0);

        // 2. Horodatage
        XTime_GetTime(&tNow);
        double elapsed = (double)(tNow - tStart) / COUNTS_PER_SECOND;
        format_time(elapsed, time_str);
        elapsed_mode[k] = elapsed;
        strcpy(time_mode[k], time_str);

        if (k < 3) sprintf(mode_label, "RO_B %d",  k + 1);
        else       sprintf(mode_label, "RO_LP %d", k - 2);

        // 3. Lecture des ROs (Multiplexeur)
        for (int i = 0; i < 16; i++) {
            raw_bytes[i] = Xil_In32(BASE_ADDR + REG_DATA_ALLOW_OFFSET) & MASK_DATA;
            Xil_Out32(BASE_ADDR + REG_DONE_OFFSET, 1);
            Xil_Out32(BASE_ADDR + REG_DONE_OFFSET, 0);
            for (volatile int d = 0; d < 500; d++);
        }

        // 4. Affichage entête (Sans Sysmon)
        printf("\n  CAPTURE %06d | %s | Mode %d: %s | SD:%s\n",
               cycle_count, time_str, k + 1, mode_label, sd_ready ? "OK" : "ABSENTE");
        printf("  --------------------------------------------------\n");

        // 5. Reconstruction fréquences
        for (int ro_idx = 0; ro_idx < 4; ro_idx++) {
            int base = ro_idx * 4;
            frequency_32bit = ((u32)raw_bytes[base+3] << 24) | ((u32)raw_bytes[base+2] << 16)
                            | ((u32)raw_bytes[base+1] <<  8) | (u32)raw_bytes[base];

            float freq_mhz = (float)frequency_32bit / 1000000.0f;
            int global_ro_id = (k * 4) + ro_idx + 1;
            freq_all[global_ro_id - 1] = freq_mhz;

            printf("    RO %-2d (%s) : %.3f MHz\n", global_ro_id, stress_label[ro_idx], freq_mhz);
        }
        printf("\n");

        // 6. Libération ALLOW
        while ((Xil_In32(BASE_ADDR + REG_DATA_ALLOW_OFFSET) & MASK_ALLOW) != 0);
    }
}
