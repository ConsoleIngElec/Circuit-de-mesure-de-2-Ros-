########################################################################################################################
################################################## STRESS DC:0 SHORT PATH ##############################################
########################################################################################################################

# Placement de l'oscillateur Ro_B mode 1
set_property LOC SLICE_X7Y20 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_B[0].I_Ro_B/gen*]
set_property LOC SLICE_X7Y20 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_B[0].I_Ro_B/ring*]

# Placement de l'oscillateur Ro_B mode 2
set_property LOC SLICE_X7Y25 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_B[1].I_Ro_B/*]
set_property LOC SLICE_X7Y25 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_B[1].I_Ro_B/p_11_out*]

# Placement de l'oscillateur Ro_B mode 3
set_property LOC SLICE_X7Y30 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_B[2].I_Ro_B/*]
set_property LOC SLICE_X7Y30 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_B[2].I_Ro_B/p_11_out*]

########################################################################################################################
################################################## STRESS DC:1 SHORT PATH ##############################################
########################################################################################################################

# Placement de l'oscillateur Ro_B mode 7
set_property LOC SLICE_X8Y20 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_B[0].I_Ro_B/*]
set_property LOC SLICE_X8Y20 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_B[0].I_Ro_B/p_11_out*]

# Placement de l'oscillateur Ro_B mode 8
set_property LOC SLICE_X8Y25 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_B[1].I_Ro_B/*]
set_property LOC SLICE_X8Y25 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_B[1].I_Ro_B/p_11_out*]

# Placement de l'oscillateur Ro_B mode 9
set_property LOC SLICE_X8Y30 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_B[2].I_Ro_B/*]
set_property LOC SLICE_X8Y30 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_B[2].I_Ro_B/p_11_out*]

########################################################################################################################
################################################ STRESS 100 Hz SHORT PATH ##############################################
########################################################################################################################

# Placement de l'oscillateur Ro_B mode 13
set_property LOC SLICE_X10Y20 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_B[0].I_Ro_B/*]
set_property LOC SLICE_X10Y20 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_B[0].I_Ro_B/p_11_out*]

# Placement de l'oscillateur Ro_B mode 14
set_property LOC SLICE_X10Y25 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_B[1].I_Ro_B/*]
set_property LOC SLICE_X10Y25 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_B[1].I_Ro_B/p_11_out*]

# Placement de l'oscillateur Ro_B mode 15
set_property LOC SLICE_X10Y30 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_B[2].I_Ro_B/*]
set_property LOC SLICE_X10Y30 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_B[2].I_Ro_B/p_11_out*]

########################################################################################################################
############################################### STRESS 100 MHz SHORT PATH ##############################################
########################################################################################################################

# Placement de l'oscillateur Ro_B mode 19
set_property LOC SLICE_X11Y20 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_B[0].I_Ro_B/*]
set_property LOC SLICE_X11Y20 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_B[0].I_Ro_B/p_11_out*]

# Placement de l'oscillateur Ro_B mode 20
set_property LOC SLICE_X11Y25 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_B[1].I_Ro_B/*]
set_property LOC SLICE_X11Y25 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_B[1].I_Ro_B/p_11_out*]

# Placement de l'oscillateur Ro_B mode 21
set_property LOC SLICE_X11Y30 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_B[2].I_Ro_B/*]
set_property LOC SLICE_X11Y30 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_B[2].I_Ro_B/p_11_out*]

########################################################################################################################
############################################### STRESS DC:0 LONG PATH ##################################################
########################################################################################################################

# Placement de l'oscillateur Ro_path mode 4
set_property LOC SLICE_X15Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_path[0].I_Ro_path/S1]
set_property LOC SLICE_X15Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_path[0].I_Ro_path/p*]

# Placement de l'oscillateur Ro_path mode 5
set_property LOC SLICE_X15Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_path[1].I_Ro_path/S1]
set_property LOC SLICE_X15Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_path[1].I_Ro_path/p*]

# Placement de l'oscillateur Ro_path mode 6
set_property LOC SLICE_X15Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_path[2].I_Ro_path/S1]
set_property LOC SLICE_X15Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[0].I_Ro_out/I_Ro_bench/I_Ro_path[2].I_Ro_path/p*]

########################################################################################################################
############################################### STRESS DC:1 LONG PATH ##################################################
########################################################################################################################

# Placement de l'oscillateur Ro_path mode 10
set_property LOC SLICE_X18Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_path[0].I_Ro_path/S1]
set_property LOC SLICE_X18Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_path[0].I_Ro_path/p*]

# Placement de l'oscillateur Ro_path mode 11
set_property LOC SLICE_X18Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_path[1].I_Ro_path/S1]
set_property LOC SLICE_X18Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_path[1].I_Ro_path/p*]

# Placement de l'oscillateur Ro_path mode 12
set_property LOC SLICE_X18Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_path[2].I_Ro_path/S1]
set_property LOC SLICE_X18Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[1].I_Ro_out/I_Ro_bench/I_Ro_path[2].I_Ro_path/p*]

########################################################################################################################
############################################### STRESS 100Hz LONG PATH ##################################################
########################################################################################################################

# Placement de l'oscillateur Ro_path mode 16
set_property LOC SLICE_X21Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_path[0].I_Ro_path/S1]
set_property LOC SLICE_X21Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_path[0].I_Ro_path/p*]

# Placement de l'oscillateur Ro_path mode 17
set_property LOC SLICE_X21Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_path[1].I_Ro_path/S1]
set_property LOC SLICE_X21Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_path[1].I_Ro_path/p*]

# Placement de l'oscillateur Ro_path mode 18
set_property LOC SLICE_X21Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_path[2].I_Ro_path/S1]
set_property LOC SLICE_X21Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[2].I_Ro_out/I_Ro_bench/I_Ro_path[2].I_Ro_path/p*]

########################################################################################################################
############################################### STRESS 100MHz LONG PATH ##################################################
########################################################################################################################

# Placement de l'oscillateur Ro_path mode 22
set_property LOC SLICE_X25Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_path[0].I_Ro_path/S1]
set_property LOC SLICE_X25Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_path[0].I_Ro_path/p*]

# Placement de l'oscillateur Ro_path mode 23
set_property LOC SLICE_X25Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_path[1].I_Ro_path/S1]
set_property LOC SLICE_X25Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_path[1].I_Ro_path/p*]

# Placement de l'oscillateur Ro_path mode 24
set_property LOC SLICE_X25Y179 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_path[2].I_Ro_path/S1]
set_property LOC SLICE_X25Y1 [get_cells mesure_i/All_Ro_out_0/U0/I_Ro_out[3].I_Ro_out/I_Ro_bench/I_Ro_path[2].I_Ro_path/p*]
