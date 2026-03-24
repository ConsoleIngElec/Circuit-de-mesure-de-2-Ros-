// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Mar 18 13:36:41 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/test_gen_mode/ip/test_gen_mode_Gen_stress_0_0/test_gen_mode_Gen_stress_0_0_sim_netlist.v
// Design      : test_gen_mode_Gen_stress_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "test_gen_mode_Gen_stress_0_0,Gen_stress,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Gen_stress,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module test_gen_mode_Gen_stress_0_0
   (Clk,
    Reset,
    Stress);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN test_gen_mode_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  output [3:0]Stress;

  wire \<const0> ;
  wire \<const1> ;
  wire Clk;
  wire Reset;
  wire [2:2]\^Stress ;

  assign Stress[3] = Clk;
  assign Stress[2] = \^Stress [2];
  assign Stress[1] = \<const1> ;
  assign Stress[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  test_gen_mode_Gen_stress_0_0_Gen_stress U0
       (.Clk(Clk),
        .Reset(Reset),
        .Stress(\^Stress ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Clock_Diviser" *) 
module test_gen_mode_Gen_stress_0_0_Clock_Diviser
   (Stress,
    Clk,
    Reset);
  output [0:0]Stress;
  input Clk;
  input Reset;

  wire Clk;
  wire Clk_out_i_1_n_0;
  wire Clk_out_i_2_n_0;
  wire Clk_out_i_3_n_0;
  wire Clk_out_i_4_n_0;
  wire Reset;
  wire \S[0]_i_1_n_0 ;
  wire \S[0]_i_3_n_0 ;
  wire \S[0]_i_4_n_0 ;
  wire \S[0]_i_5_n_0 ;
  wire \S[0]_i_6_n_0 ;
  wire \S[0]_i_7_n_0 ;
  wire [19:0]S_reg;
  wire \S_reg[0]_i_2_n_0 ;
  wire \S_reg[0]_i_2_n_1 ;
  wire \S_reg[0]_i_2_n_10 ;
  wire \S_reg[0]_i_2_n_11 ;
  wire \S_reg[0]_i_2_n_12 ;
  wire \S_reg[0]_i_2_n_13 ;
  wire \S_reg[0]_i_2_n_14 ;
  wire \S_reg[0]_i_2_n_15 ;
  wire \S_reg[0]_i_2_n_2 ;
  wire \S_reg[0]_i_2_n_3 ;
  wire \S_reg[0]_i_2_n_4 ;
  wire \S_reg[0]_i_2_n_5 ;
  wire \S_reg[0]_i_2_n_6 ;
  wire \S_reg[0]_i_2_n_7 ;
  wire \S_reg[0]_i_2_n_8 ;
  wire \S_reg[0]_i_2_n_9 ;
  wire \S_reg[16]_i_1_n_12 ;
  wire \S_reg[16]_i_1_n_13 ;
  wire \S_reg[16]_i_1_n_14 ;
  wire \S_reg[16]_i_1_n_15 ;
  wire \S_reg[16]_i_1_n_5 ;
  wire \S_reg[16]_i_1_n_6 ;
  wire \S_reg[16]_i_1_n_7 ;
  wire \S_reg[8]_i_1_n_0 ;
  wire \S_reg[8]_i_1_n_1 ;
  wire \S_reg[8]_i_1_n_10 ;
  wire \S_reg[8]_i_1_n_11 ;
  wire \S_reg[8]_i_1_n_12 ;
  wire \S_reg[8]_i_1_n_13 ;
  wire \S_reg[8]_i_1_n_14 ;
  wire \S_reg[8]_i_1_n_15 ;
  wire \S_reg[8]_i_1_n_2 ;
  wire \S_reg[8]_i_1_n_3 ;
  wire \S_reg[8]_i_1_n_4 ;
  wire \S_reg[8]_i_1_n_5 ;
  wire \S_reg[8]_i_1_n_6 ;
  wire \S_reg[8]_i_1_n_7 ;
  wire \S_reg[8]_i_1_n_8 ;
  wire \S_reg[8]_i_1_n_9 ;
  wire [0:0]Stress;
  wire [7:3]\NLW_S_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_S_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAFF)) 
    Clk_out_i_1
       (.I0(Clk_out_i_2_n_0),
        .I1(Clk_out_i_3_n_0),
        .I2(Clk_out_i_4_n_0),
        .I3(S_reg[13]),
        .I4(S_reg[19]),
        .I5(S_reg[14]),
        .O(Clk_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hABAFAFAFAFAFAFAF)) 
    Clk_out_i_2
       (.I0(Reset),
        .I1(S_reg[15]),
        .I2(S_reg[19]),
        .I3(S_reg[17]),
        .I4(S_reg[16]),
        .I5(S_reg[18]),
        .O(Clk_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    Clk_out_i_3
       (.I0(S_reg[5]),
        .I1(S_reg[6]),
        .I2(S_reg[7]),
        .I3(S_reg[8]),
        .O(Clk_out_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Clk_out_i_4
       (.I0(S_reg[10]),
        .I1(S_reg[9]),
        .I2(S_reg[12]),
        .I3(S_reg[11]),
        .O(Clk_out_i_4_n_0));
  FDRE Clk_out_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Clk_out_i_1_n_0),
        .Q(Stress),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABBFBFBFB)) 
    \S[0]_i_1 
       (.I0(Reset),
        .I1(\S[0]_i_3_n_0 ),
        .I2(S_reg[9]),
        .I3(\S[0]_i_4_n_0 ),
        .I4(\S[0]_i_5_n_0 ),
        .I5(\S[0]_i_6_n_0 ),
        .O(\S[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \S[0]_i_3 
       (.I0(S_reg[15]),
        .I1(S_reg[10]),
        .I2(S_reg[11]),
        .I3(S_reg[13]),
        .I4(S_reg[12]),
        .O(\S[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \S[0]_i_4 
       (.I0(S_reg[8]),
        .I1(S_reg[7]),
        .I2(S_reg[6]),
        .O(\S[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \S[0]_i_5 
       (.I0(S_reg[2]),
        .I1(S_reg[3]),
        .I2(S_reg[4]),
        .I3(S_reg[5]),
        .I4(S_reg[1]),
        .I5(S_reg[0]),
        .O(\S[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h57FFFFFFFFFFFFFF)) 
    \S[0]_i_6 
       (.I0(S_reg[19]),
        .I1(S_reg[15]),
        .I2(S_reg[14]),
        .I3(S_reg[18]),
        .I4(S_reg[16]),
        .I5(S_reg[17]),
        .O(\S[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \S[0]_i_7 
       (.I0(S_reg[0]),
        .O(\S[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_15 ),
        .Q(S_reg[0]),
        .R(\S[0]_i_1_n_0 ));
  CARRY8 \S_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\S_reg[0]_i_2_n_0 ,\S_reg[0]_i_2_n_1 ,\S_reg[0]_i_2_n_2 ,\S_reg[0]_i_2_n_3 ,\S_reg[0]_i_2_n_4 ,\S_reg[0]_i_2_n_5 ,\S_reg[0]_i_2_n_6 ,\S_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\S_reg[0]_i_2_n_8 ,\S_reg[0]_i_2_n_9 ,\S_reg[0]_i_2_n_10 ,\S_reg[0]_i_2_n_11 ,\S_reg[0]_i_2_n_12 ,\S_reg[0]_i_2_n_13 ,\S_reg[0]_i_2_n_14 ,\S_reg[0]_i_2_n_15 }),
        .S({S_reg[7:1],\S[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[10] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_13 ),
        .Q(S_reg[10]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_12 ),
        .Q(S_reg[11]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[12] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_11 ),
        .Q(S_reg[12]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[13] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_10 ),
        .Q(S_reg[13]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[14] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_9 ),
        .Q(S_reg[14]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[15] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_8 ),
        .Q(S_reg[15]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[16] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_15 ),
        .Q(S_reg[16]),
        .R(\S[0]_i_1_n_0 ));
  CARRY8 \S_reg[16]_i_1 
       (.CI(\S_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_S_reg[16]_i_1_CO_UNCONNECTED [7:3],\S_reg[16]_i_1_n_5 ,\S_reg[16]_i_1_n_6 ,\S_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_S_reg[16]_i_1_O_UNCONNECTED [7:4],\S_reg[16]_i_1_n_12 ,\S_reg[16]_i_1_n_13 ,\S_reg[16]_i_1_n_14 ,\S_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,S_reg[19:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[17] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_14 ),
        .Q(S_reg[17]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[18] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_13 ),
        .Q(S_reg[18]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[19] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_12 ),
        .Q(S_reg[19]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_14 ),
        .Q(S_reg[1]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_13 ),
        .Q(S_reg[2]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_12 ),
        .Q(S_reg[3]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_11 ),
        .Q(S_reg[4]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_10 ),
        .Q(S_reg[5]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_9 ),
        .Q(S_reg[6]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_8 ),
        .Q(S_reg[7]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_15 ),
        .Q(S_reg[8]),
        .R(\S[0]_i_1_n_0 ));
  CARRY8 \S_reg[8]_i_1 
       (.CI(\S_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[8]_i_1_n_0 ,\S_reg[8]_i_1_n_1 ,\S_reg[8]_i_1_n_2 ,\S_reg[8]_i_1_n_3 ,\S_reg[8]_i_1_n_4 ,\S_reg[8]_i_1_n_5 ,\S_reg[8]_i_1_n_6 ,\S_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[8]_i_1_n_8 ,\S_reg[8]_i_1_n_9 ,\S_reg[8]_i_1_n_10 ,\S_reg[8]_i_1_n_11 ,\S_reg[8]_i_1_n_12 ,\S_reg[8]_i_1_n_13 ,\S_reg[8]_i_1_n_14 ,\S_reg[8]_i_1_n_15 }),
        .S(S_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_14 ),
        .Q(S_reg[9]),
        .R(\S[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "Gen_stress" *) 
module test_gen_mode_Gen_stress_0_0_Gen_stress
   (Stress,
    Clk,
    Reset);
  output [0:0]Stress;
  input Clk;
  input Reset;

  wire Clk;
  wire Reset;
  wire [0:0]Stress;

  test_gen_mode_Gen_stress_0_0_Stress_100Hz I_Stress_100Hz
       (.Clk(Clk),
        .Reset(Reset),
        .Stress(Stress));
endmodule

(* ORIG_REF_NAME = "Stress_100Hz" *) 
module test_gen_mode_Gen_stress_0_0_Stress_100Hz
   (Stress,
    Clk,
    Reset);
  output [0:0]Stress;
  input Clk;
  input Reset;

  wire Clk;
  wire Reset;
  wire [0:0]Stress;

  test_gen_mode_Gen_stress_0_0_Clock_Diviser I_Clock_Diviser
       (.Clk(Clk),
        .Reset(Reset),
        .Stress(Stress));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
