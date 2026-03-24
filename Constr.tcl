# ############################################################################################
# SCRIPT TCL D'AUTOMATISATION DES CONTRAINTES (XDC) - VERSION CONSOLIDÉE
# Projet : Ring Oscillators Stress Bench (Short & Long Paths)
# ############################################################################################

# 1. Configuration des chemins de base
set cell_prefix "mesure_i/All_Ro_out_0/U0"

# 2. Sécurité : Vérifier si un design est ouvert
if {[get_design -quiet] == ""} {
    puts "ERREUR : Vous devez ouvrir le Synthesized Design avant de lancer ce script."
    return
}

# 3. NETTOYAGE PRÉALABLE RADICAL (Pour éviter l'erreur LOCK_PINS)
# J'ai utilisé deux méthodes, la méthode manuelle et celle avec le script 
puts "--- NETTOYAGE : Déblocage des anciennes contraintes ---"
set all_prims [get_cells -hierarchical -filter "IS_PRIMITIVE && NAME =~ $cell_prefix/I_Ro_out\[*\]*"]

if {$all_prims != ""} {
    puts "Suppression du placement (LOC)..."
    unplace_cell $all_prims
    reset_property LOC $all_prims
    
    # On cible spécifiquement nos LUTs par leur nom pour le reset des LOCK_PINS
    set luts_to_clean [get_cells -hierarchical -filter "NAME =~ $cell_prefix/I_Ro_out\[*\]* && (NAME =~ *ring_inferred* || NAME =~ *gate_inst* || NAME =~ *S1*)"]
    
    if {$luts_to_clean != ""} {
        puts "Reset des LOCK_PINS sur les LUTs..."
        reset_property -quiet LOCK_PINS $luts_to_clean
    }
    puts "Nettoyage terminé."
}

# ============================================================================================
# PARTIE 1 : SHORT PATHS (RO_B) - Groupes OUT[0] à OUT[3]
# ============================================================================================

dict set sp_coords 0 {6 7 8}
dict set sp_coords 1 {10 11 12}
dict set sp_coords 2 {13 15 17}
dict set sp_coords 3 {18 21 22}

set bels {A6LUT B6LUT C6LUT D6LUT E6LUT F6LUT G6LUT H6LUT}

foreach g [dict keys $sp_coords] {
    set x_list [dict get $sp_coords $g]
    for {set r 0} {$r < 3} {incr r} {
        set curr_x [lindex $x_list $r]
        set ro_path "$cell_prefix/I_Ro_out\[$g\].Inst_Ro_out/I_Ro_bench/I_RO_B\[$r\].Inst_Ro_B"
        
        # 1. LUT de Contrôle
        set ctrl_cell [get_cells -hierarchical -filter "NAME =~ $ro_path/ring_inferred*"]
        if {$ctrl_cell != ""} {
            set_property LOC "SLICE_X${curr_x}Y6" $ctrl_cell
            set_property BEL "A6LUT" $ctrl_cell
            set_property LOCK_PINS {I1:A1} $ctrl_cell
        }
        
        # 2. Buffers 0 à 6 (Y6)
        for {set i 0} {$i < 7} {incr i} {
            set buff_cell [get_cells "$ro_path/P1_gen_ro\[$i\].gate_inst"]
            if {$buff_cell != ""} {
                set_property LOC "SLICE_X${curr_x}Y6" $buff_cell
                set_property BEL "[lindex $bels [expr $i + 1]]" $buff_cell
                set_property LOCK_PINS {I0:A1} $buff_cell
            }
        }
        
        # 3. Buffers 7 à 11 (Y7)
        for {set i 7} {$i < 12} {incr i} {
            set buff_cell [get_cells "$ro_path/P1_gen_ro\[$i\].gate_inst"]
            if {$buff_cell != ""} {
                set_property LOC "SLICE_X${curr_x}Y7" $buff_cell
                set_property BEL "[lindex $bels [expr $i - 7]]" $buff_cell
                set_property LOCK_PINS {I0:A1} $buff_cell
            }
        }
        set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets "$ro_path/ring*"]
    }
}

# ============================================================================================
# PARTIE 2 : LONG PATHS (RO_PATH) - Groupes OUT[0] à OUT[3]
# ============================================================================================

dict set lp_coords 0 {23 25 26}
dict set lp_coords 1 {27 30 32}
dict set lp_coords 2 {33 35 36}
dict set lp_coords 3 {38 41 44}

foreach g [dict keys $lp_coords] {
    set x_list [dict get $lp_coords $g]
    for {set r 0} {$r < 3} {incr r} {
        set curr_x [lindex $x_list $r]
        set lp_base "$cell_prefix/I_Ro_out\[$g\].Inst_Ro_out/I_Ro_bench/I_RO_PATH\[$r\].Inst_Ro_path"
        
        # 1. LUT de contrôle (Y1)
        set ctrl_lp [get_cells -hierarchical -filter "NAME =~ $lp_base/ring_inferred*"]
        if {$ctrl_lp != ""} {
            set_property LOC "SLICE_X${curr_x}Y1" $ctrl_lp
            set_property BEL "A6LUT" $ctrl_lp
        }
        
        # 2. LUT S1 (Y178)
        set s1_cell [get_cells "$lp_base/S1"]
        if {$s1_cell != ""} {
            set_property LOC "SLICE_X${curr_x}Y178" $s1_cell
            set_property BEL "A6LUT" $s1_cell
            set_property LOCK_PINS {I0:A6} $s1_cell
        }
        set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets "$lp_base/*"]
    }
}

puts "--- SCRIPT TERMINÉ : 24 Oscillateurs configurés avec succès ---"