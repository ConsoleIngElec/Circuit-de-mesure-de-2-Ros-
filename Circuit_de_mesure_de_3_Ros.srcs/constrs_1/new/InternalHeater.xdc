################################################################################
# Fichier de contraintes - InternalHeater (Optimisé A1)
################################################################################

# 1. Placement des 7 LUTs dans la même SLICE pour maximiser la chaleur
set_property LOC SLICE_X2Y2 [get_cells -hierarchical -filter {NAME =~ *InternalHeater_0*gate_inst*}]

# 2. Force l'utilisation de l'entrée physique A1 sur chaque LUT
# Cela garantit que le signal utilise le même chemin silicium pour chaque inverseur
set_property LOCK_PINS {I0:A1} [get_cells -hierarchical -filter {NAME =~ *InternalHeater_0*gate_inst*}]

# 3. Autorise la boucle combinatoire (Ring Oscillator)
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -hierarchical -filter {NAME =~ *InternalHeater_0*ring*}]

# 4. Désactive l'analyse de timing sur la boucle (évite les erreurs de calcul inutiles)
set_false_path -through [get_nets -hierarchical -filter {NAME =~ *InternalHeater_0*ring*}]

# 5. Configuration de la sortie physique (Pin C5)
set_property PACKAGE_PIN C5 [get_ports S_IH_0]
set_property IOSTANDARD LVCMOS18 [get_ports S_IH_0]

################################################################################