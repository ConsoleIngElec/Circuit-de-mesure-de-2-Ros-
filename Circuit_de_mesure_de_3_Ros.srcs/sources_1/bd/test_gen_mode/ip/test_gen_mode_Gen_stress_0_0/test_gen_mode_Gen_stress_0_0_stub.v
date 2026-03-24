// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Mar 18 13:36:41 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/test_gen_mode/ip/test_gen_mode_Gen_stress_0_0/test_gen_mode_Gen_stress_0_0_stub.v
// Design      : test_gen_mode_Gen_stress_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Gen_stress,Vivado 2018.3" *)
module test_gen_mode_Gen_stress_0_0(Clk, Reset, Stress)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,Stress[3:0]" */;
  input Clk;
  input Reset;
  output [3:0]Stress;
endmodule
