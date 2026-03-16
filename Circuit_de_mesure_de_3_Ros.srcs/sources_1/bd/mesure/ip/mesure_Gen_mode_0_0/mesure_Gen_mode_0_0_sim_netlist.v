// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar 12 17:04:35 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Gen_mode_0_0/mesure_Gen_mode_0_0_sim_netlist.v
// Design      : mesure_Gen_mode_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mesure_Gen_mode_0_0,Gen_mode,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Gen_mode,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mesure_Gen_mode_0_0
   (Clk,
    Reset,
    CE_1Hz,
    Mode,
    Reset_RO,
    RO_sel,
    Send);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mesure_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  output CE_1Hz;
  output [5:0]Mode;
  output [5:0]Reset_RO;
  output [2:0]RO_sel;
  output Send;

  wire Clk;
  wire [5:0]Mode;
  wire [2:0]RO_sel;
  wire Reset;
  wire [5:0]Reset_RO;
  wire Send;

  mesure_Gen_mode_0_0_Gen_mode U0
       (.Clk(Clk),
        .Mode(Mode),
        .Q(RO_sel),
        .Reset(Reset),
        .Reset_RO(Reset_RO),
        .Send(Send));
endmodule

(* ORIG_REF_NAME = "Counter_mode" *) 
module mesure_Gen_mode_0_0_Counter_mode
   (Mode_G_int,
    Reset,
    Clk,
    CE_1Hz_int);
  output Mode_G_int;
  input Reset;
  input Clk;
  input CE_1Hz_int;

  wire CE_1Hz_int;
  wire Clk;
  wire Mode_G_i_1_n_0;
  wire Mode_G_i_2_n_0;
  wire Mode_G_int;
  wire Reset;
  wire [9:0]p_0_in;
  wire \s[4]_i_1_n_0 ;
  wire \s[5]_i_1_n_0 ;
  wire \s[6]_i_2_n_0 ;
  wire \s[9]_i_1_n_0 ;
  wire \s[9]_i_3_n_0 ;
  wire \s[9]_i_4_n_0 ;
  wire \s[9]_i_5_n_0 ;
  wire [9:0]s_reg__0;

  LUT5 #(
    .INIT(32'h0DFF0D00)) 
    Mode_G_i_1
       (.I0(s_reg__0[8]),
        .I1(Mode_G_i_2_n_0),
        .I2(s_reg__0[9]),
        .I3(CE_1Hz_int),
        .I4(Mode_G_int),
        .O(Mode_G_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000005777)) 
    Mode_G_i_2
       (.I0(s_reg__0[5]),
        .I1(s_reg__0[4]),
        .I2(s_reg__0[3]),
        .I3(s_reg__0[2]),
        .I4(s_reg__0[7]),
        .I5(s_reg__0[6]),
        .O(Mode_G_i_2_n_0));
  FDRE Mode_G_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Mode_G_i_1_n_0),
        .Q(Mode_G_int),
        .R(Reset));
  LUT1 #(
    .INIT(2'h1)) 
    \s[0]_i_1 
       (.I0(s_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[1]_i_1 
       (.I0(s_reg__0[0]),
        .I1(s_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s[2]_i_1 
       (.I0(s_reg__0[0]),
        .I1(s_reg__0[1]),
        .I2(s_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s[3]_i_1 
       (.I0(s_reg__0[3]),
        .I1(s_reg__0[0]),
        .I2(s_reg__0[1]),
        .I3(s_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \s[4]_i_1 
       (.I0(s_reg__0[4]),
        .I1(s_reg__0[2]),
        .I2(s_reg__0[3]),
        .I3(s_reg__0[0]),
        .I4(s_reg__0[1]),
        .O(\s[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \s[5]_i_1 
       (.I0(s_reg__0[5]),
        .I1(s_reg__0[4]),
        .I2(s_reg__0[1]),
        .I3(s_reg__0[0]),
        .I4(s_reg__0[3]),
        .I5(s_reg__0[2]),
        .O(\s[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \s[6]_i_1 
       (.I0(s_reg__0[6]),
        .I1(s_reg__0[2]),
        .I2(s_reg__0[3]),
        .I3(\s[6]_i_2_n_0 ),
        .I4(s_reg__0[4]),
        .I5(s_reg__0[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s[6]_i_2 
       (.I0(s_reg__0[0]),
        .I1(s_reg__0[1]),
        .O(\s[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \s[7]_i_1 
       (.I0(s_reg__0[7]),
        .I1(\s[9]_i_4_n_0 ),
        .I2(s_reg__0[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s[8]_i_1 
       (.I0(s_reg__0[8]),
        .I1(s_reg__0[6]),
        .I2(\s[9]_i_4_n_0 ),
        .I3(s_reg__0[7]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    \s[9]_i_1 
       (.I0(Reset),
        .I1(CE_1Hz_int),
        .I2(s_reg__0[9]),
        .I3(\s[9]_i_3_n_0 ),
        .I4(s_reg__0[8]),
        .I5(s_reg__0[7]),
        .O(\s[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \s[9]_i_2 
       (.I0(s_reg__0[9]),
        .I1(s_reg__0[7]),
        .I2(\s[9]_i_4_n_0 ),
        .I3(s_reg__0[6]),
        .I4(s_reg__0[8]),
        .O(p_0_in[9]));
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \s[9]_i_3 
       (.I0(s_reg__0[6]),
        .I1(s_reg__0[4]),
        .I2(\s[9]_i_5_n_0 ),
        .I3(s_reg__0[3]),
        .I4(s_reg__0[5]),
        .O(\s[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \s[9]_i_4 
       (.I0(s_reg__0[5]),
        .I1(s_reg__0[4]),
        .I2(s_reg__0[1]),
        .I3(s_reg__0[0]),
        .I4(s_reg__0[3]),
        .I5(s_reg__0[2]),
        .O(\s[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s[9]_i_5 
       (.I0(s_reg__0[2]),
        .I1(s_reg__0[1]),
        .I2(s_reg__0[0]),
        .O(\s[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[0] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(p_0_in[0]),
        .Q(s_reg__0[0]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(p_0_in[1]),
        .Q(s_reg__0[1]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[2] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(p_0_in[2]),
        .Q(s_reg__0[2]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[3] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(p_0_in[3]),
        .Q(s_reg__0[3]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[4] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(\s[4]_i_1_n_0 ),
        .Q(s_reg__0[4]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[5] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(\s[5]_i_1_n_0 ),
        .Q(s_reg__0[5]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[6] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(p_0_in[6]),
        .Q(s_reg__0[6]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[7] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(p_0_in[7]),
        .Q(s_reg__0[7]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[8] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(p_0_in[8]),
        .Q(s_reg__0[8]),
        .R(\s[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[9] 
       (.C(Clk),
        .CE(CE_1Hz_int),
        .D(p_0_in[9]),
        .Q(s_reg__0[9]),
        .R(\s[9]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "Gen_mode" *) 
module mesure_Gen_mode_0_0_Gen_mode
   (Q,
    Mode,
    Reset_RO,
    Send,
    Reset,
    Clk);
  output [2:0]Q;
  output [5:0]Mode;
  output [5:0]Reset_RO;
  output Send;
  input Reset;
  input Clk;

  wire CE_1Hz_int;
  wire Clk;
  wire [5:0]Mode;
  wire Mode_G_int;
  wire [2:0]Q;
  wire Reset;
  wire [5:0]Reset_RO;
  wire Send;

  mesure_Gen_mode_0_0_Counter_mode I_Counter_mode
       (.CE_1Hz_int(CE_1Hz_int),
        .Clk(Clk),
        .Mode_G_int(Mode_G_int),
        .Reset(Reset));
  mesure_Gen_mode_0_0_Generateur_signal_1Hz I_Generateur_signal_1Hz
       (.CE_1Hz_int(CE_1Hz_int),
        .Clk(Clk),
        .Reset(Reset));
  mesure_Gen_mode_0_0_State_machine_mode I_State_machine_mode
       (.CE_1Hz_int(CE_1Hz_int),
        .Clk(Clk),
        .Mode(Mode),
        .Mode_G_int(Mode_G_int),
        .Q(Q),
        .Reset(Reset),
        .Reset_RO(Reset_RO),
        .Send(Send));
endmodule

(* ORIG_REF_NAME = "Generateur_signal_1Hz" *) 
module mesure_Gen_mode_0_0_Generateur_signal_1Hz
   (CE_1Hz_int,
    Reset,
    Clk);
  output CE_1Hz_int;
  input Reset;
  input Clk;

  wire CE_1HZ;
  wire CE_1Hz_int;
  wire Clk;
  wire Reset;
  wire [26:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[26]_i_2_n_0 ;
  wire \counter[26]_i_3_n_0 ;
  wire \counter[26]_i_4_n_0 ;
  wire \counter[26]_i_5_n_0 ;
  wire \counter[26]_i_6_n_0 ;
  wire \counter[26]_i_7_n_0 ;
  wire \counter[26]_i_8_n_0 ;
  wire [26:0]counter_0;
  wire [26:1]data0;
  wire [7:1]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [7:2]NLW_counter0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    CE_1HZ_i_1
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .O(CE_1HZ));
  FDRE CE_1HZ_reg
       (.C(Clk),
        .CE(1'b1),
        .D(CE_1HZ),
        .Q(CE_1Hz_int),
        .R(Reset));
  CARRY8 counter0_carry
       (.CI(counter[0]),
        .CI_TOP(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3,counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:1]),
        .S(counter[8:1]));
  CARRY8 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3,counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:9]),
        .S(counter[16:9]));
  CARRY8 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3,counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:17]),
        .S(counter[24:17]));
  CARRY8 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[7:1],counter0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__2_O_UNCONNECTED[7:2],data0[26:25]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,counter[26:25]}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[10]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[10]),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[11]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[11]),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[12]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[12]),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[13]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[13]),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[14]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[14]),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[15]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[15]),
        .O(counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[16]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[16]),
        .O(counter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[17]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[17]),
        .O(counter_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[18]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[18]),
        .O(counter_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[19]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[19]),
        .O(counter_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[1]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[1]),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[20]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[20]),
        .O(counter_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[21]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[21]),
        .O(counter_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[22]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[22]),
        .O(counter_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[23]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[23]),
        .O(counter_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[24]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[24]),
        .O(counter_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[25]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[25]),
        .O(counter_0[25]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[26]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[26]),
        .O(counter_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \counter[26]_i_2 
       (.I0(counter[26]),
        .I1(counter[25]),
        .I2(counter[0]),
        .I3(\counter[26]_i_5_n_0 ),
        .I4(\counter[26]_i_6_n_0 ),
        .O(\counter[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \counter[26]_i_3 
       (.I0(counter[8]),
        .I1(counter[7]),
        .I2(counter[5]),
        .I3(counter[6]),
        .I4(\counter[26]_i_7_n_0 ),
        .O(\counter[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \counter[26]_i_4 
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(counter[13]),
        .I3(counter[14]),
        .I4(\counter[26]_i_8_n_0 ),
        .O(\counter[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[26]_i_5 
       (.I0(counter[22]),
        .I1(counter[21]),
        .I2(counter[24]),
        .I3(counter[23]),
        .O(\counter[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[26]_i_6 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(\counter[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[26]_i_7 
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[12]),
        .I3(counter[11]),
        .O(\counter[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[26]_i_8 
       (.I0(counter[18]),
        .I1(counter[17]),
        .I2(counter[20]),
        .I3(counter[19]),
        .O(\counter[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[2]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[2]),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[3]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[3]),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[4]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[4]),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[5]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[5]),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[6]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[6]),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[7]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[7]),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[8]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[8]),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[9]_i_1 
       (.I0(\counter[26]_i_2_n_0 ),
        .I1(\counter[26]_i_3_n_0 ),
        .I2(\counter[26]_i_4_n_0 ),
        .I3(data0[9]),
        .O(counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[11]),
        .Q(counter[11]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[12]),
        .Q(counter[12]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[13]),
        .Q(counter[13]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[14]),
        .Q(counter[14]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[15]),
        .Q(counter[15]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[16]),
        .Q(counter[16]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[17]),
        .Q(counter[17]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[18]),
        .Q(counter[18]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[19]),
        .Q(counter[19]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[20]),
        .Q(counter[20]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[21]),
        .Q(counter[21]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[22]),
        .Q(counter[22]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[23]),
        .Q(counter[23]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[24]),
        .Q(counter[24]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[25]),
        .Q(counter[25]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[26]),
        .Q(counter[26]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(Reset));
endmodule

(* ORIG_REF_NAME = "State_machine_mode" *) 
module mesure_Gen_mode_0_0_State_machine_mode
   (Send,
    Q,
    Mode,
    Reset_RO,
    Reset,
    Clk,
    CE_1Hz_int,
    Mode_G_int);
  output Send;
  output [2:0]Q;
  output [5:0]Mode;
  output [5:0]Reset_RO;
  input Reset;
  input Clk;
  input CE_1Hz_int;
  input Mode_G_int;

  wire CE_1Hz_int;
  wire Clk;
  wire \FSM_sequential_etat[0]_i_1_n_0 ;
  wire \FSM_sequential_etat[1]_i_1_n_0 ;
  wire \FSM_sequential_etat[1]_i_2_n_0 ;
  wire [5:0]Mode;
  wire \Mode[0]_i_1_n_0 ;
  wire \Mode[1]_i_1_n_0 ;
  wire \Mode[2]_i_1_n_0 ;
  wire \Mode[3]_i_1_n_0 ;
  wire \Mode[3]_i_2_n_0 ;
  wire \Mode[3]_i_3_n_0 ;
  wire \Mode[3]_i_4_n_0 ;
  wire \Mode[3]_i_5_n_0 ;
  wire \Mode[4]_i_1_n_0 ;
  wire \Mode[4]_i_2_n_0 ;
  wire \Mode[5]_i_10_n_0 ;
  wire \Mode[5]_i_11_n_0 ;
  wire \Mode[5]_i_1_n_0 ;
  wire \Mode[5]_i_2_n_0 ;
  wire \Mode[5]_i_3_n_0 ;
  wire \Mode[5]_i_4_n_0 ;
  wire \Mode[5]_i_5_n_0 ;
  wire \Mode[5]_i_6_n_0 ;
  wire \Mode[5]_i_7_n_0 ;
  wire \Mode[5]_i_8_n_0 ;
  wire \Mode[5]_i_9_n_0 ;
  wire Mode_G_int;
  wire [2:0]Q;
  wire Reset;
  wire [5:0]Reset_RO;
  wire \Reset_RO[5]_i_1_n_0 ;
  wire Send;
  wire Send_i_1_n_0;
  wire Send_i_2_n_0;
  wire etat1_carry__0_i_1_n_0;
  wire etat1_carry__0_i_2_n_0;
  wire etat1_carry__0_i_3_n_0;
  wire etat1_carry__0_i_4_n_0;
  wire etat1_carry__0_i_5_n_0;
  wire etat1_carry__0_i_6_n_0;
  wire etat1_carry__0_i_7_n_0;
  wire etat1_carry__0_i_8_n_0;
  wire etat1_carry__0_n_0;
  wire etat1_carry__0_n_1;
  wire etat1_carry__0_n_2;
  wire etat1_carry__0_n_3;
  wire etat1_carry__0_n_4;
  wire etat1_carry__0_n_5;
  wire etat1_carry__0_n_6;
  wire etat1_carry__0_n_7;
  wire etat1_carry_i_10_n_0;
  wire etat1_carry_i_1_n_0;
  wire etat1_carry_i_2_n_0;
  wire etat1_carry_i_3_n_0;
  wire etat1_carry_i_4_n_0;
  wire etat1_carry_i_5_n_0;
  wire etat1_carry_i_6_n_0;
  wire etat1_carry_i_7_n_0;
  wire etat1_carry_i_8_n_0;
  wire etat1_carry_i_9_n_0;
  wire etat1_carry_n_0;
  wire etat1_carry_n_1;
  wire etat1_carry_n_2;
  wire etat1_carry_n_3;
  wire etat1_carry_n_4;
  wire etat1_carry_n_5;
  wire etat1_carry_n_6;
  wire etat1_carry_n_7;
  wire [1:0]etat__0;
  wire [5:0]i;
  wire \i[4]_i_2_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[5]_i_3_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire [31:1]k;
  wire [31:1]k0;
  wire \k[0]_i_1_n_0 ;
  wire \k[2]_i_1_n_0 ;
  wire \k[2]_i_3_n_0 ;
  wire \k_reg[16]_i_2_n_0 ;
  wire \k_reg[16]_i_2_n_1 ;
  wire \k_reg[16]_i_2_n_2 ;
  wire \k_reg[16]_i_2_n_3 ;
  wire \k_reg[16]_i_2_n_4 ;
  wire \k_reg[16]_i_2_n_5 ;
  wire \k_reg[16]_i_2_n_6 ;
  wire \k_reg[16]_i_2_n_7 ;
  wire \k_reg[24]_i_2_n_0 ;
  wire \k_reg[24]_i_2_n_1 ;
  wire \k_reg[24]_i_2_n_2 ;
  wire \k_reg[24]_i_2_n_3 ;
  wire \k_reg[24]_i_2_n_4 ;
  wire \k_reg[24]_i_2_n_5 ;
  wire \k_reg[24]_i_2_n_6 ;
  wire \k_reg[24]_i_2_n_7 ;
  wire \k_reg[2]_i_4_n_0 ;
  wire \k_reg[2]_i_4_n_1 ;
  wire \k_reg[2]_i_4_n_2 ;
  wire \k_reg[2]_i_4_n_3 ;
  wire \k_reg[2]_i_4_n_4 ;
  wire \k_reg[2]_i_4_n_5 ;
  wire \k_reg[2]_i_4_n_6 ;
  wire \k_reg[2]_i_4_n_7 ;
  wire \k_reg[31]_i_2_n_2 ;
  wire \k_reg[31]_i_2_n_3 ;
  wire \k_reg[31]_i_2_n_4 ;
  wire \k_reg[31]_i_2_n_5 ;
  wire \k_reg[31]_i_2_n_6 ;
  wire \k_reg[31]_i_2_n_7 ;
  wire \k_reg_n_0_[10] ;
  wire \k_reg_n_0_[11] ;
  wire \k_reg_n_0_[12] ;
  wire \k_reg_n_0_[13] ;
  wire \k_reg_n_0_[14] ;
  wire \k_reg_n_0_[15] ;
  wire \k_reg_n_0_[16] ;
  wire \k_reg_n_0_[17] ;
  wire \k_reg_n_0_[18] ;
  wire \k_reg_n_0_[19] ;
  wire \k_reg_n_0_[20] ;
  wire \k_reg_n_0_[21] ;
  wire \k_reg_n_0_[22] ;
  wire \k_reg_n_0_[23] ;
  wire \k_reg_n_0_[24] ;
  wire \k_reg_n_0_[25] ;
  wire \k_reg_n_0_[26] ;
  wire \k_reg_n_0_[27] ;
  wire \k_reg_n_0_[28] ;
  wire \k_reg_n_0_[29] ;
  wire \k_reg_n_0_[30] ;
  wire \k_reg_n_0_[31] ;
  wire \k_reg_n_0_[3] ;
  wire \k_reg_n_0_[4] ;
  wire \k_reg_n_0_[5] ;
  wire \k_reg_n_0_[6] ;
  wire \k_reg_n_0_[7] ;
  wire \k_reg_n_0_[8] ;
  wire \k_reg_n_0_[9] ;
  wire [7:0]NLW_etat1_carry_O_UNCONNECTED;
  wire [7:0]NLW_etat1_carry__0_O_UNCONNECTED;
  wire [7:6]\NLW_k_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_k_reg[31]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_etat[0]_i_1 
       (.I0(Mode_G_int),
        .I1(etat__0[1]),
        .I2(etat__0[0]),
        .O(\FSM_sequential_etat[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F53A0A0A0A)) 
    \FSM_sequential_etat[1]_i_1 
       (.I0(Mode_G_int),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .I3(CE_1Hz_int),
        .I4(\k[2]_i_3_n_0 ),
        .I5(etat__0[1]),
        .O(\FSM_sequential_etat[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_etat[1]_i_2 
       (.I0(Mode_G_int),
        .I1(etat__0[1]),
        .I2(etat__0[0]),
        .O(\FSM_sequential_etat[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "envoi:01,attendre:10,eteint:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_etat_reg[0] 
       (.C(Clk),
        .CE(\FSM_sequential_etat[1]_i_1_n_0 ),
        .D(\FSM_sequential_etat[0]_i_1_n_0 ),
        .Q(etat__0[0]),
        .R(Reset));
  (* FSM_ENCODED_STATES = "envoi:01,attendre:10,eteint:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_etat_reg[1] 
       (.C(Clk),
        .CE(\FSM_sequential_etat[1]_i_1_n_0 ),
        .D(\FSM_sequential_etat[1]_i_2_n_0 ),
        .Q(etat__0[1]),
        .R(Reset));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \Mode[0]_i_1 
       (.I0(Q[2]),
        .I1(\Mode[5]_i_4_n_0 ),
        .I2(\Mode[5]_i_5_n_0 ),
        .I3(\Mode[5]_i_6_n_0 ),
        .I4(\Mode[4]_i_2_n_0 ),
        .I5(etat__0[0]),
        .O(\Mode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \Mode[1]_i_1 
       (.I0(Q[2]),
        .I1(\Mode[5]_i_4_n_0 ),
        .I2(\Mode[5]_i_5_n_0 ),
        .I3(\Mode[5]_i_6_n_0 ),
        .I4(\Mode[5]_i_3_n_0 ),
        .I5(etat__0[0]),
        .O(\Mode[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \Mode[2]_i_1 
       (.I0(\Mode[3]_i_2_n_0 ),
        .I1(\Mode[5]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\Mode[3]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(etat__0[0]),
        .O(\Mode[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \Mode[3]_i_1 
       (.I0(\Mode[3]_i_2_n_0 ),
        .I1(\Mode[5]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\Mode[3]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(etat__0[0]),
        .O(\Mode[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Mode[3]_i_2 
       (.I0(\Mode[5]_i_10_n_0 ),
        .I1(\Mode[3]_i_4_n_0 ),
        .I2(\Mode[3]_i_5_n_0 ),
        .I3(\k_reg_n_0_[3] ),
        .I4(\k_reg_n_0_[26] ),
        .I5(\k_reg_n_0_[27] ),
        .O(\Mode[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \Mode[3]_i_3 
       (.I0(CE_1Hz_int),
        .I1(etat__0[1]),
        .I2(Q[1]),
        .O(\Mode[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Mode[3]_i_4 
       (.I0(\k_reg_n_0_[12] ),
        .I1(\k_reg_n_0_[13] ),
        .I2(\k_reg_n_0_[28] ),
        .I3(\k_reg_n_0_[29] ),
        .O(\Mode[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Mode[3]_i_5 
       (.I0(\k_reg_n_0_[4] ),
        .I1(\k_reg_n_0_[5] ),
        .I2(\k_reg_n_0_[24] ),
        .I3(\k_reg_n_0_[25] ),
        .O(\Mode[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000008FFFFFFFF)) 
    \Mode[4]_i_1 
       (.I0(\Mode[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\Mode[5]_i_4_n_0 ),
        .I3(\Mode[5]_i_5_n_0 ),
        .I4(\Mode[5]_i_6_n_0 ),
        .I5(etat__0[0]),
        .O(\Mode[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \Mode[4]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(CE_1Hz_int),
        .I3(etat__0[1]),
        .O(\Mode[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000008FFFFFFFF)) 
    \Mode[5]_i_1 
       (.I0(\Mode[5]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\Mode[5]_i_4_n_0 ),
        .I3(\Mode[5]_i_5_n_0 ),
        .I4(\Mode[5]_i_6_n_0 ),
        .I5(etat__0[0]),
        .O(\Mode[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Mode[5]_i_10 
       (.I0(\k_reg_n_0_[8] ),
        .I1(\k_reg_n_0_[9] ),
        .I2(\k_reg_n_0_[20] ),
        .I3(\k_reg_n_0_[21] ),
        .O(\Mode[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Mode[5]_i_11 
       (.I0(\k_reg_n_0_[25] ),
        .I1(\k_reg_n_0_[24] ),
        .O(\Mode[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h04444444)) 
    \Mode[5]_i_2 
       (.I0(\i_reg_n_0_[5] ),
        .I1(etat__0[0]),
        .I2(\i_reg_n_0_[3] ),
        .I3(\i_reg_n_0_[4] ),
        .I4(\Mode[5]_i_7_n_0 ),
        .O(\Mode[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \Mode[5]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(CE_1Hz_int),
        .I3(etat__0[1]),
        .O(\Mode[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Mode[5]_i_4 
       (.I0(\Mode[5]_i_8_n_0 ),
        .I1(\Mode[5]_i_9_n_0 ),
        .I2(\k_reg_n_0_[6] ),
        .I3(\k_reg_n_0_[7] ),
        .I4(\k_reg_n_0_[22] ),
        .I5(\k_reg_n_0_[23] ),
        .O(\Mode[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Mode[5]_i_5 
       (.I0(\k_reg_n_0_[29] ),
        .I1(\k_reg_n_0_[28] ),
        .I2(\k_reg_n_0_[13] ),
        .I3(\k_reg_n_0_[12] ),
        .I4(\Mode[5]_i_10_n_0 ),
        .O(\Mode[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Mode[5]_i_6 
       (.I0(\k_reg_n_0_[27] ),
        .I1(\k_reg_n_0_[26] ),
        .I2(\k_reg_n_0_[3] ),
        .I3(\Mode[5]_i_11_n_0 ),
        .I4(\k_reg_n_0_[5] ),
        .I5(\k_reg_n_0_[4] ),
        .O(\Mode[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Mode[5]_i_7 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(\Mode[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Mode[5]_i_8 
       (.I0(\k_reg_n_0_[14] ),
        .I1(\k_reg_n_0_[15] ),
        .I2(\k_reg_n_0_[19] ),
        .I3(\k_reg_n_0_[18] ),
        .I4(\k_reg_n_0_[17] ),
        .I5(\k_reg_n_0_[16] ),
        .O(\Mode[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Mode[5]_i_9 
       (.I0(\k_reg_n_0_[10] ),
        .I1(\k_reg_n_0_[11] ),
        .I2(\k_reg_n_0_[30] ),
        .I3(\k_reg_n_0_[31] ),
        .O(\Mode[5]_i_9_n_0 ));
  FDRE \Mode_reg[0] 
       (.C(Clk),
        .CE(\Mode[0]_i_1_n_0 ),
        .D(\Mode[5]_i_2_n_0 ),
        .Q(Mode[0]),
        .R(Reset));
  FDRE \Mode_reg[1] 
       (.C(Clk),
        .CE(\Mode[1]_i_1_n_0 ),
        .D(\Mode[5]_i_2_n_0 ),
        .Q(Mode[1]),
        .R(Reset));
  FDRE \Mode_reg[2] 
       (.C(Clk),
        .CE(\Mode[2]_i_1_n_0 ),
        .D(\Mode[5]_i_2_n_0 ),
        .Q(Mode[2]),
        .R(Reset));
  FDRE \Mode_reg[3] 
       (.C(Clk),
        .CE(\Mode[3]_i_1_n_0 ),
        .D(\Mode[5]_i_2_n_0 ),
        .Q(Mode[3]),
        .R(Reset));
  FDRE \Mode_reg[4] 
       (.C(Clk),
        .CE(\Mode[4]_i_1_n_0 ),
        .D(\Mode[5]_i_2_n_0 ),
        .Q(Mode[4]),
        .R(Reset));
  FDRE \Mode_reg[5] 
       (.C(Clk),
        .CE(\Mode[5]_i_1_n_0 ),
        .D(\Mode[5]_i_2_n_0 ),
        .Q(Mode[5]),
        .R(Reset));
  LUT6 #(
    .INIT(64'h0000000000000444)) 
    \Reset_RO[5]_i_1 
       (.I0(\i_reg_n_0_[5] ),
        .I1(etat__0[0]),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[3] ),
        .I5(\i_reg_n_0_[4] ),
        .O(\Reset_RO[5]_i_1_n_0 ));
  FDRE \Reset_RO_reg[0] 
       (.C(Clk),
        .CE(\Mode[0]_i_1_n_0 ),
        .D(\Reset_RO[5]_i_1_n_0 ),
        .Q(Reset_RO[0]),
        .R(Reset));
  FDRE \Reset_RO_reg[1] 
       (.C(Clk),
        .CE(\Mode[1]_i_1_n_0 ),
        .D(\Reset_RO[5]_i_1_n_0 ),
        .Q(Reset_RO[1]),
        .R(Reset));
  FDRE \Reset_RO_reg[2] 
       (.C(Clk),
        .CE(\Mode[2]_i_1_n_0 ),
        .D(\Reset_RO[5]_i_1_n_0 ),
        .Q(Reset_RO[2]),
        .R(Reset));
  FDRE \Reset_RO_reg[3] 
       (.C(Clk),
        .CE(\Mode[3]_i_1_n_0 ),
        .D(\Reset_RO[5]_i_1_n_0 ),
        .Q(Reset_RO[3]),
        .R(Reset));
  FDRE \Reset_RO_reg[4] 
       (.C(Clk),
        .CE(\Mode[4]_i_1_n_0 ),
        .D(\Reset_RO[5]_i_1_n_0 ),
        .Q(Reset_RO[4]),
        .R(Reset));
  FDRE \Reset_RO_reg[5] 
       (.C(Clk),
        .CE(\Mode[5]_i_1_n_0 ),
        .D(\Reset_RO[5]_i_1_n_0 ),
        .Q(Reset_RO[5]),
        .R(Reset));
  LUT5 #(
    .INIT(32'hF2220222)) 
    Send_i_1
       (.I0(Send_i_2_n_0),
        .I1(\Mode[5]_i_7_n_0 ),
        .I2(etat__0[0]),
        .I3(etat__0[1]),
        .I4(Send),
        .O(Send_i_1_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    Send_i_2
       (.I0(\i_reg_n_0_[4] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(CE_1Hz_int),
        .I3(etat__0[0]),
        .I4(\i_reg_n_0_[5] ),
        .O(Send_i_2_n_0));
  FDRE Send_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Send_i_1_n_0),
        .Q(Send),
        .R(Reset));
  CARRY8 etat1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({etat1_carry_n_0,etat1_carry_n_1,etat1_carry_n_2,etat1_carry_n_3,etat1_carry_n_4,etat1_carry_n_5,etat1_carry_n_6,etat1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,etat1_carry_i_1_n_0,etat1_carry_i_2_n_0}),
        .O(NLW_etat1_carry_O_UNCONNECTED[7:0]),
        .S({etat1_carry_i_3_n_0,etat1_carry_i_4_n_0,etat1_carry_i_5_n_0,etat1_carry_i_6_n_0,etat1_carry_i_7_n_0,etat1_carry_i_8_n_0,etat1_carry_i_9_n_0,etat1_carry_i_10_n_0}));
  CARRY8 etat1_carry__0
       (.CI(etat1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({etat1_carry__0_n_0,etat1_carry__0_n_1,etat1_carry__0_n_2,etat1_carry__0_n_3,etat1_carry__0_n_4,etat1_carry__0_n_5,etat1_carry__0_n_6,etat1_carry__0_n_7}),
        .DI({\k_reg_n_0_[31] ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_etat1_carry__0_O_UNCONNECTED[7:0]),
        .S({etat1_carry__0_i_1_n_0,etat1_carry__0_i_2_n_0,etat1_carry__0_i_3_n_0,etat1_carry__0_i_4_n_0,etat1_carry__0_i_5_n_0,etat1_carry__0_i_6_n_0,etat1_carry__0_i_7_n_0,etat1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry__0_i_1
       (.I0(\k_reg_n_0_[30] ),
        .I1(\k_reg_n_0_[31] ),
        .O(etat1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry__0_i_2
       (.I0(\k_reg_n_0_[28] ),
        .I1(\k_reg_n_0_[29] ),
        .O(etat1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry__0_i_3
       (.I0(\k_reg_n_0_[26] ),
        .I1(\k_reg_n_0_[27] ),
        .O(etat1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry__0_i_4
       (.I0(\k_reg_n_0_[24] ),
        .I1(\k_reg_n_0_[25] ),
        .O(etat1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry__0_i_5
       (.I0(\k_reg_n_0_[22] ),
        .I1(\k_reg_n_0_[23] ),
        .O(etat1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry__0_i_6
       (.I0(\k_reg_n_0_[20] ),
        .I1(\k_reg_n_0_[21] ),
        .O(etat1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry__0_i_7
       (.I0(\k_reg_n_0_[18] ),
        .I1(\k_reg_n_0_[19] ),
        .O(etat1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry__0_i_8
       (.I0(\k_reg_n_0_[16] ),
        .I1(\k_reg_n_0_[17] ),
        .O(etat1_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry_i_1
       (.I0(Q[2]),
        .I1(\k_reg_n_0_[3] ),
        .O(etat1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    etat1_carry_i_10
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(etat1_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(etat1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry_i_3
       (.I0(\k_reg_n_0_[14] ),
        .I1(\k_reg_n_0_[15] ),
        .O(etat1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry_i_4
       (.I0(\k_reg_n_0_[12] ),
        .I1(\k_reg_n_0_[13] ),
        .O(etat1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry_i_5
       (.I0(\k_reg_n_0_[10] ),
        .I1(\k_reg_n_0_[11] ),
        .O(etat1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry_i_6
       (.I0(\k_reg_n_0_[8] ),
        .I1(\k_reg_n_0_[9] ),
        .O(etat1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry_i_7
       (.I0(\k_reg_n_0_[6] ),
        .I1(\k_reg_n_0_[7] ),
        .O(etat1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    etat1_carry_i_8
       (.I0(\k_reg_n_0_[4] ),
        .I1(\k_reg_n_0_[5] ),
        .O(etat1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    etat1_carry_i_9
       (.I0(Q[2]),
        .I1(\k_reg_n_0_[3] ),
        .O(etat1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \i[0]_i_1 
       (.I0(\k[2]_i_3_n_0 ),
        .I1(etat__0[0]),
        .I2(\i_reg_n_0_[0] ),
        .O(i[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \i[1]_i_1 
       (.I0(\k[2]_i_3_n_0 ),
        .I1(etat__0[0]),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .O(i[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \i[2]_i_1 
       (.I0(\k[2]_i_3_n_0 ),
        .I1(etat__0[0]),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .O(i[2]));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \i[3]_i_1 
       (.I0(etat__0[0]),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\k[2]_i_3_n_0 ),
        .O(i[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \i[4]_i_1 
       (.I0(\i[4]_i_2_n_0 ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\i_reg_n_0_[4] ),
        .O(i[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[4]_i_2 
       (.I0(etat__0[0]),
        .I1(\k[2]_i_3_n_0 ),
        .O(\i[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \i[5]_i_1 
       (.I0(etat__0[0]),
        .I1(CE_1Hz_int),
        .I2(etat__0[1]),
        .O(\i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4440404040404040)) 
    \i[5]_i_2 
       (.I0(\k[2]_i_3_n_0 ),
        .I1(etat__0[0]),
        .I2(\i_reg_n_0_[5] ),
        .I3(\i_reg_n_0_[4] ),
        .I4(\i_reg_n_0_[3] ),
        .I5(\i[5]_i_3_n_0 ),
        .O(i[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \i[5]_i_3 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(\i[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(Clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[0]),
        .Q(\i_reg_n_0_[0] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(Clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[1]),
        .Q(\i_reg_n_0_[1] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(Clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[2]),
        .Q(\i_reg_n_0_[2] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(Clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[3]),
        .Q(\i_reg_n_0_[3] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(Clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[4]),
        .Q(\i_reg_n_0_[4] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(Clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[5]),
        .Q(\i_reg_n_0_[5] ),
        .R(Reset));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \k[0]_i_1 
       (.I0(Q[0]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(\k[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[10]_i_1 
       (.I0(k0[10]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[11]_i_1 
       (.I0(k0[11]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[12]_i_1 
       (.I0(k0[12]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[13]_i_1 
       (.I0(k0[13]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[14]_i_1 
       (.I0(k0[14]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[15]_i_1 
       (.I0(k0[15]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[16]_i_1 
       (.I0(k0[16]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[16]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[17]_i_1 
       (.I0(k0[17]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[17]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[18]_i_1 
       (.I0(k0[18]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[19]_i_1 
       (.I0(k0[19]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[19]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[1]_i_1 
       (.I0(k0[1]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[20]_i_1 
       (.I0(k0[20]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[21]_i_1 
       (.I0(k0[21]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[22]_i_1 
       (.I0(k0[22]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[22]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[23]_i_1 
       (.I0(k0[23]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[24]_i_1 
       (.I0(k0[24]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[25]_i_1 
       (.I0(k0[25]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[26]_i_1 
       (.I0(k0[26]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[26]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[27]_i_1 
       (.I0(k0[27]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[27]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[28]_i_1 
       (.I0(k0[28]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[28]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[29]_i_1 
       (.I0(k0[29]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[29]));
  LUT4 #(
    .INIT(16'h3111)) 
    \k[2]_i_1 
       (.I0(etat__0[0]),
        .I1(etat__0[1]),
        .I2(CE_1Hz_int),
        .I3(\k[2]_i_3_n_0 ),
        .O(\k[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[2]_i_2 
       (.I0(k0[2]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[2]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \k[2]_i_3 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[4] ),
        .I5(\i_reg_n_0_[5] ),
        .O(\k[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[30]_i_1 
       (.I0(k0[30]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[30]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[31]_i_1 
       (.I0(k0[31]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[31]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[3]_i_1 
       (.I0(k0[3]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[4]_i_1 
       (.I0(k0[4]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[5]_i_1 
       (.I0(k0[5]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[6]_i_1 
       (.I0(k0[6]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[7]_i_1 
       (.I0(k0[7]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[8]_i_1 
       (.I0(k0[8]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k[9]_i_1 
       (.I0(k0[9]),
        .I1(etat1_carry__0_n_0),
        .I2(etat__0[0]),
        .O(k[9]));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[0] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(\k[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[10] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[10]),
        .Q(\k_reg_n_0_[10] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[11] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[11]),
        .Q(\k_reg_n_0_[11] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[12] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[12]),
        .Q(\k_reg_n_0_[12] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[13] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[13]),
        .Q(\k_reg_n_0_[13] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[14] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[14]),
        .Q(\k_reg_n_0_[14] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[15] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[15]),
        .Q(\k_reg_n_0_[15] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[16] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[16]),
        .Q(\k_reg_n_0_[16] ),
        .R(Reset));
  CARRY8 \k_reg[16]_i_2 
       (.CI(\k_reg[2]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\k_reg[16]_i_2_n_0 ,\k_reg[16]_i_2_n_1 ,\k_reg[16]_i_2_n_2 ,\k_reg[16]_i_2_n_3 ,\k_reg[16]_i_2_n_4 ,\k_reg[16]_i_2_n_5 ,\k_reg[16]_i_2_n_6 ,\k_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(k0[16:9]),
        .S({\k_reg_n_0_[16] ,\k_reg_n_0_[15] ,\k_reg_n_0_[14] ,\k_reg_n_0_[13] ,\k_reg_n_0_[12] ,\k_reg_n_0_[11] ,\k_reg_n_0_[10] ,\k_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[17] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[17]),
        .Q(\k_reg_n_0_[17] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[18] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[18]),
        .Q(\k_reg_n_0_[18] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[19] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[19]),
        .Q(\k_reg_n_0_[19] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[1] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[1]),
        .Q(Q[1]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[20] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[20]),
        .Q(\k_reg_n_0_[20] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[21] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[21]),
        .Q(\k_reg_n_0_[21] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[22] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[22]),
        .Q(\k_reg_n_0_[22] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[23] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[23]),
        .Q(\k_reg_n_0_[23] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[24] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[24]),
        .Q(\k_reg_n_0_[24] ),
        .R(Reset));
  CARRY8 \k_reg[24]_i_2 
       (.CI(\k_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\k_reg[24]_i_2_n_0 ,\k_reg[24]_i_2_n_1 ,\k_reg[24]_i_2_n_2 ,\k_reg[24]_i_2_n_3 ,\k_reg[24]_i_2_n_4 ,\k_reg[24]_i_2_n_5 ,\k_reg[24]_i_2_n_6 ,\k_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(k0[24:17]),
        .S({\k_reg_n_0_[24] ,\k_reg_n_0_[23] ,\k_reg_n_0_[22] ,\k_reg_n_0_[21] ,\k_reg_n_0_[20] ,\k_reg_n_0_[19] ,\k_reg_n_0_[18] ,\k_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[25] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[25]),
        .Q(\k_reg_n_0_[25] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[26] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[26]),
        .Q(\k_reg_n_0_[26] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[27] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[27]),
        .Q(\k_reg_n_0_[27] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[28] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[28]),
        .Q(\k_reg_n_0_[28] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[29] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[29]),
        .Q(\k_reg_n_0_[29] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[2] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[2]),
        .Q(Q[2]),
        .R(Reset));
  CARRY8 \k_reg[2]_i_4 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\k_reg[2]_i_4_n_0 ,\k_reg[2]_i_4_n_1 ,\k_reg[2]_i_4_n_2 ,\k_reg[2]_i_4_n_3 ,\k_reg[2]_i_4_n_4 ,\k_reg[2]_i_4_n_5 ,\k_reg[2]_i_4_n_6 ,\k_reg[2]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(k0[8:1]),
        .S({\k_reg_n_0_[8] ,\k_reg_n_0_[7] ,\k_reg_n_0_[6] ,\k_reg_n_0_[5] ,\k_reg_n_0_[4] ,\k_reg_n_0_[3] ,Q[2:1]}));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[30] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[30]),
        .Q(\k_reg_n_0_[30] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[31] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[31]),
        .Q(\k_reg_n_0_[31] ),
        .R(Reset));
  CARRY8 \k_reg[31]_i_2 
       (.CI(\k_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_k_reg[31]_i_2_CO_UNCONNECTED [7:6],\k_reg[31]_i_2_n_2 ,\k_reg[31]_i_2_n_3 ,\k_reg[31]_i_2_n_4 ,\k_reg[31]_i_2_n_5 ,\k_reg[31]_i_2_n_6 ,\k_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_k_reg[31]_i_2_O_UNCONNECTED [7],k0[31:25]}),
        .S({1'b0,\k_reg_n_0_[31] ,\k_reg_n_0_[30] ,\k_reg_n_0_[29] ,\k_reg_n_0_[28] ,\k_reg_n_0_[27] ,\k_reg_n_0_[26] ,\k_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[3] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[3]),
        .Q(\k_reg_n_0_[3] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[4] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[4]),
        .Q(\k_reg_n_0_[4] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[5] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[5]),
        .Q(\k_reg_n_0_[5] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[6] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[6]),
        .Q(\k_reg_n_0_[6] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[7] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[7]),
        .Q(\k_reg_n_0_[7] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[8] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[8]),
        .Q(\k_reg_n_0_[8] ),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[9] 
       (.C(Clk),
        .CE(\k[2]_i_1_n_0 ),
        .D(k[9]),
        .Q(\k_reg_n_0_[9] ),
        .R(Reset));
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
