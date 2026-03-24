// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 20 15:49:45 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Gen_mode_0_1/mesure_Gen_mode_0_1_sim_netlist.v
// Design      : mesure_Gen_mode_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mesure_Gen_mode_0_1,Gen_mode,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Gen_mode,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mesure_Gen_mode_0_1
   (Clk,
    Reset,
    CE_1Hz,
    Mode,
    Reset_RO,
    Ro_sel,
    Send);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mesure_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  output CE_1Hz;
  output [5:0]Mode;
  output [5:0]Reset_RO;
  output [2:0]Ro_sel;
  output Send;

  wire CE_1Hz;
  wire Clk;
  wire [5:0]Mode;
  wire Reset;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  wire Send;

  mesure_Gen_mode_0_1_Gen_mode U0
       (.Clk(Clk),
        .E(CE_1Hz),
        .Mode(Mode),
        .Q(Ro_sel),
        .Reset(Reset),
        .Reset_RO(Reset_RO),
        .Send(Send));
endmodule

(* ORIG_REF_NAME = "Gen_mode" *) 
module mesure_Gen_mode_0_1_Gen_mode
   (Q,
    Mode,
    E,
    Reset_RO,
    Send,
    Reset,
    Clk);
  output [2:0]Q;
  output [5:0]Mode;
  output [0:0]E;
  output [5:0]Reset_RO;
  output Send;
  input Reset;
  input Clk;

  wire Clk;
  wire [0:0]E;
  wire [5:0]Mode;
  wire \Mode[0]_i_1_n_0 ;
  wire \Mode[1]_i_1_n_0 ;
  wire \Mode[2]_i_1_n_0 ;
  wire \Mode[3]_i_1_n_0 ;
  wire \Mode[4]_i_1_n_0 ;
  wire \Mode[5]_i_1_n_0 ;
  wire \Mode[5]_i_2_n_0 ;
  wire \Mode[5]_i_3_n_0 ;
  wire [2:0]Q;
  wire Reset;
  wire [5:0]Reset_RO;
  wire \Reset_RO[0]_i_1_n_0 ;
  wire \Reset_RO[1]_i_1_n_0 ;
  wire \Reset_RO[2]_i_1_n_0 ;
  wire \Reset_RO[3]_i_1_n_0 ;
  wire \Reset_RO[4]_i_1_n_0 ;
  wire \Reset_RO[5]_i_1_n_0 ;
  wire \Reset_RO[5]_i_2_n_0 ;
  wire Send;
  wire Send_INST_0_i_2_n_0;
  wire \count_1hz[0]_i_1_n_0 ;
  wire \count_1hz[0]_i_3_n_0 ;
  wire [26:0]count_1hz_reg;
  wire \count_1hz_reg[0]_i_2_n_0 ;
  wire \count_1hz_reg[0]_i_2_n_1 ;
  wire \count_1hz_reg[0]_i_2_n_10 ;
  wire \count_1hz_reg[0]_i_2_n_11 ;
  wire \count_1hz_reg[0]_i_2_n_12 ;
  wire \count_1hz_reg[0]_i_2_n_13 ;
  wire \count_1hz_reg[0]_i_2_n_14 ;
  wire \count_1hz_reg[0]_i_2_n_15 ;
  wire \count_1hz_reg[0]_i_2_n_2 ;
  wire \count_1hz_reg[0]_i_2_n_3 ;
  wire \count_1hz_reg[0]_i_2_n_4 ;
  wire \count_1hz_reg[0]_i_2_n_5 ;
  wire \count_1hz_reg[0]_i_2_n_6 ;
  wire \count_1hz_reg[0]_i_2_n_7 ;
  wire \count_1hz_reg[0]_i_2_n_8 ;
  wire \count_1hz_reg[0]_i_2_n_9 ;
  wire \count_1hz_reg[16]_i_1_n_0 ;
  wire \count_1hz_reg[16]_i_1_n_1 ;
  wire \count_1hz_reg[16]_i_1_n_10 ;
  wire \count_1hz_reg[16]_i_1_n_11 ;
  wire \count_1hz_reg[16]_i_1_n_12 ;
  wire \count_1hz_reg[16]_i_1_n_13 ;
  wire \count_1hz_reg[16]_i_1_n_14 ;
  wire \count_1hz_reg[16]_i_1_n_15 ;
  wire \count_1hz_reg[16]_i_1_n_2 ;
  wire \count_1hz_reg[16]_i_1_n_3 ;
  wire \count_1hz_reg[16]_i_1_n_4 ;
  wire \count_1hz_reg[16]_i_1_n_5 ;
  wire \count_1hz_reg[16]_i_1_n_6 ;
  wire \count_1hz_reg[16]_i_1_n_7 ;
  wire \count_1hz_reg[16]_i_1_n_8 ;
  wire \count_1hz_reg[16]_i_1_n_9 ;
  wire \count_1hz_reg[24]_i_1_n_13 ;
  wire \count_1hz_reg[24]_i_1_n_14 ;
  wire \count_1hz_reg[24]_i_1_n_15 ;
  wire \count_1hz_reg[24]_i_1_n_6 ;
  wire \count_1hz_reg[24]_i_1_n_7 ;
  wire \count_1hz_reg[8]_i_1_n_0 ;
  wire \count_1hz_reg[8]_i_1_n_1 ;
  wire \count_1hz_reg[8]_i_1_n_10 ;
  wire \count_1hz_reg[8]_i_1_n_11 ;
  wire \count_1hz_reg[8]_i_1_n_12 ;
  wire \count_1hz_reg[8]_i_1_n_13 ;
  wire \count_1hz_reg[8]_i_1_n_14 ;
  wire \count_1hz_reg[8]_i_1_n_15 ;
  wire \count_1hz_reg[8]_i_1_n_2 ;
  wire \count_1hz_reg[8]_i_1_n_3 ;
  wire \count_1hz_reg[8]_i_1_n_4 ;
  wire \count_1hz_reg[8]_i_1_n_5 ;
  wire \count_1hz_reg[8]_i_1_n_6 ;
  wire \count_1hz_reg[8]_i_1_n_7 ;
  wire \count_1hz_reg[8]_i_1_n_8 ;
  wire \count_1hz_reg[8]_i_1_n_9 ;
  wire current_state_i_1_n_0;
  wire current_state_i_2_n_0;
  wire current_state_reg_n_0;
  wire \k[2]_i_1_n_0 ;
  wire \k[2]_i_2_n_0 ;
  wire \k[2]_i_4_n_0 ;
  wire [8:0]p_0_in;
  wire [5:0]p_0_in__0;
  wire [2:0]p_1_in;
  wire pulse_1s_i_1_n_0;
  wire pulse_1s_i_2_n_0;
  wire pulse_1s_i_3_n_0;
  wire pulse_1s_i_4_n_0;
  wire pulse_1s_i_5_n_0;
  wire pulse_1s_i_6_n_0;
  wire pulse_1s_i_7_n_0;
  wire timer_pause;
  wire \timer_pause[4]_i_1_n_0 ;
  wire \timer_pause[5]_i_1_n_0 ;
  wire \timer_pause[8]_i_1_n_0 ;
  wire \timer_pause[8]_i_4_n_0 ;
  wire \timer_pause[8]_i_5_n_0 ;
  wire \timer_pause[8]_i_6_n_0 ;
  wire [8:0]timer_pause_reg__0;
  wire timer_sec;
  wire \timer_sec[5]_i_1_n_0 ;
  wire [5:0]timer_sec_reg__0;
  wire [7:2]\NLW_count_1hz_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_count_1hz_reg[24]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \Mode[0]_i_1 
       (.I0(\Mode[5]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\Mode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \Mode[1]_i_1 
       (.I0(\Mode[5]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\Mode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \Mode[2]_i_1 
       (.I0(\Mode[5]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\Mode[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \Mode[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\Mode[5]_i_3_n_0 ),
        .O(\Mode[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \Mode[4]_i_1 
       (.I0(\Mode[5]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\Mode[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \Mode[5]_i_1 
       (.I0(Reset),
        .I1(E),
        .I2(current_state_reg_n_0),
        .O(\Mode[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \Mode[5]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\Mode[5]_i_3_n_0 ),
        .O(\Mode[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h15151555)) 
    \Mode[5]_i_3 
       (.I0(timer_sec_reg__0[5]),
        .I1(timer_sec_reg__0[3]),
        .I2(timer_sec_reg__0[4]),
        .I3(timer_sec_reg__0[1]),
        .I4(timer_sec_reg__0[2]),
        .O(\Mode[5]_i_3_n_0 ));
  FDRE \Mode_reg[0] 
       (.C(Clk),
        .CE(E),
        .D(\Mode[0]_i_1_n_0 ),
        .Q(Mode[0]),
        .R(\Mode[5]_i_1_n_0 ));
  FDRE \Mode_reg[1] 
       (.C(Clk),
        .CE(E),
        .D(\Mode[1]_i_1_n_0 ),
        .Q(Mode[1]),
        .R(\Mode[5]_i_1_n_0 ));
  FDRE \Mode_reg[2] 
       (.C(Clk),
        .CE(E),
        .D(\Mode[2]_i_1_n_0 ),
        .Q(Mode[2]),
        .R(\Mode[5]_i_1_n_0 ));
  FDRE \Mode_reg[3] 
       (.C(Clk),
        .CE(E),
        .D(\Mode[3]_i_1_n_0 ),
        .Q(Mode[3]),
        .R(\Mode[5]_i_1_n_0 ));
  FDRE \Mode_reg[4] 
       (.C(Clk),
        .CE(E),
        .D(\Mode[4]_i_1_n_0 ),
        .Q(Mode[4]),
        .R(\Mode[5]_i_1_n_0 ));
  FDRE \Mode_reg[5] 
       (.C(Clk),
        .CE(E),
        .D(\Mode[5]_i_2_n_0 ),
        .Q(Mode[5]),
        .R(\Mode[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \Reset_RO[0]_i_1 
       (.I0(\Reset_RO[5]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(current_state_reg_n_0),
        .O(\Reset_RO[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \Reset_RO[1]_i_1 
       (.I0(\Reset_RO[5]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(current_state_reg_n_0),
        .O(\Reset_RO[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \Reset_RO[2]_i_1 
       (.I0(\Reset_RO[5]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(current_state_reg_n_0),
        .O(\Reset_RO[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \Reset_RO[3]_i_1 
       (.I0(\Reset_RO[5]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(current_state_reg_n_0),
        .O(\Reset_RO[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \Reset_RO[4]_i_1 
       (.I0(\Reset_RO[5]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(current_state_reg_n_0),
        .O(\Reset_RO[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \Reset_RO[5]_i_1 
       (.I0(\Reset_RO[5]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(current_state_reg_n_0),
        .O(\Reset_RO[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \Reset_RO[5]_i_2 
       (.I0(timer_sec_reg__0[2]),
        .I1(timer_sec_reg__0[1]),
        .I2(timer_sec_reg__0[3]),
        .I3(timer_sec_reg__0[5]),
        .I4(timer_sec_reg__0[4]),
        .O(\Reset_RO[5]_i_2_n_0 ));
  FDRE \Reset_RO_reg[0] 
       (.C(Clk),
        .CE(E),
        .D(\Reset_RO[0]_i_1_n_0 ),
        .Q(Reset_RO[0]),
        .R(Reset));
  FDRE \Reset_RO_reg[1] 
       (.C(Clk),
        .CE(E),
        .D(\Reset_RO[1]_i_1_n_0 ),
        .Q(Reset_RO[1]),
        .R(Reset));
  FDRE \Reset_RO_reg[2] 
       (.C(Clk),
        .CE(E),
        .D(\Reset_RO[2]_i_1_n_0 ),
        .Q(Reset_RO[2]),
        .R(Reset));
  FDRE \Reset_RO_reg[3] 
       (.C(Clk),
        .CE(E),
        .D(\Reset_RO[3]_i_1_n_0 ),
        .Q(Reset_RO[3]),
        .R(Reset));
  FDRE \Reset_RO_reg[4] 
       (.C(Clk),
        .CE(E),
        .D(\Reset_RO[4]_i_1_n_0 ),
        .Q(Reset_RO[4]),
        .R(Reset));
  FDRE \Reset_RO_reg[5] 
       (.C(Clk),
        .CE(E),
        .D(\Reset_RO[5]_i_1_n_0 ),
        .Q(Reset_RO[5]),
        .R(Reset));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    Send_INST_0
       (.I0(timer_sec_reg__0[2]),
        .I1(timer_sec_reg__0[5]),
        .I2(timer_sec),
        .I3(timer_sec_reg__0[1]),
        .I4(timer_sec_reg__0[0]),
        .I5(Send_INST_0_i_2_n_0),
        .O(Send));
  LUT2 #(
    .INIT(4'h2)) 
    Send_INST_0_i_1
       (.I0(E),
        .I1(current_state_reg_n_0),
        .O(timer_sec));
  LUT2 #(
    .INIT(4'h7)) 
    Send_INST_0_i_2
       (.I0(timer_sec_reg__0[3]),
        .I1(timer_sec_reg__0[4]),
        .O(Send_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEAAAAEEEA)) 
    \count_1hz[0]_i_1 
       (.I0(Reset),
        .I1(count_1hz_reg[26]),
        .I2(count_1hz_reg[19]),
        .I3(pulse_1s_i_2_n_0),
        .I4(pulse_1s_i_3_n_0),
        .I5(count_1hz_reg[25]),
        .O(\count_1hz[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_1hz[0]_i_3 
       (.I0(count_1hz_reg[0]),
        .O(\count_1hz[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[0]_i_2_n_15 ),
        .Q(count_1hz_reg[0]),
        .R(\count_1hz[0]_i_1_n_0 ));
  CARRY8 \count_1hz_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_1hz_reg[0]_i_2_n_0 ,\count_1hz_reg[0]_i_2_n_1 ,\count_1hz_reg[0]_i_2_n_2 ,\count_1hz_reg[0]_i_2_n_3 ,\count_1hz_reg[0]_i_2_n_4 ,\count_1hz_reg[0]_i_2_n_5 ,\count_1hz_reg[0]_i_2_n_6 ,\count_1hz_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\count_1hz_reg[0]_i_2_n_8 ,\count_1hz_reg[0]_i_2_n_9 ,\count_1hz_reg[0]_i_2_n_10 ,\count_1hz_reg[0]_i_2_n_11 ,\count_1hz_reg[0]_i_2_n_12 ,\count_1hz_reg[0]_i_2_n_13 ,\count_1hz_reg[0]_i_2_n_14 ,\count_1hz_reg[0]_i_2_n_15 }),
        .S({count_1hz_reg[7:1],\count_1hz[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[10] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[8]_i_1_n_13 ),
        .Q(count_1hz_reg[10]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[8]_i_1_n_12 ),
        .Q(count_1hz_reg[11]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[12] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[8]_i_1_n_11 ),
        .Q(count_1hz_reg[12]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[13] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[8]_i_1_n_10 ),
        .Q(count_1hz_reg[13]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[14] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[8]_i_1_n_9 ),
        .Q(count_1hz_reg[14]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[15] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[8]_i_1_n_8 ),
        .Q(count_1hz_reg[15]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[16] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[16]_i_1_n_15 ),
        .Q(count_1hz_reg[16]),
        .R(\count_1hz[0]_i_1_n_0 ));
  CARRY8 \count_1hz_reg[16]_i_1 
       (.CI(\count_1hz_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_1hz_reg[16]_i_1_n_0 ,\count_1hz_reg[16]_i_1_n_1 ,\count_1hz_reg[16]_i_1_n_2 ,\count_1hz_reg[16]_i_1_n_3 ,\count_1hz_reg[16]_i_1_n_4 ,\count_1hz_reg[16]_i_1_n_5 ,\count_1hz_reg[16]_i_1_n_6 ,\count_1hz_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_1hz_reg[16]_i_1_n_8 ,\count_1hz_reg[16]_i_1_n_9 ,\count_1hz_reg[16]_i_1_n_10 ,\count_1hz_reg[16]_i_1_n_11 ,\count_1hz_reg[16]_i_1_n_12 ,\count_1hz_reg[16]_i_1_n_13 ,\count_1hz_reg[16]_i_1_n_14 ,\count_1hz_reg[16]_i_1_n_15 }),
        .S(count_1hz_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[17] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[16]_i_1_n_14 ),
        .Q(count_1hz_reg[17]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[18] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[16]_i_1_n_13 ),
        .Q(count_1hz_reg[18]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[19] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[16]_i_1_n_12 ),
        .Q(count_1hz_reg[19]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[0]_i_2_n_14 ),
        .Q(count_1hz_reg[1]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[20] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[16]_i_1_n_11 ),
        .Q(count_1hz_reg[20]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[21] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[16]_i_1_n_10 ),
        .Q(count_1hz_reg[21]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[22] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[16]_i_1_n_9 ),
        .Q(count_1hz_reg[22]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[23] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[16]_i_1_n_8 ),
        .Q(count_1hz_reg[23]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[24] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[24]_i_1_n_15 ),
        .Q(count_1hz_reg[24]),
        .R(\count_1hz[0]_i_1_n_0 ));
  CARRY8 \count_1hz_reg[24]_i_1 
       (.CI(\count_1hz_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_1hz_reg[24]_i_1_CO_UNCONNECTED [7:2],\count_1hz_reg[24]_i_1_n_6 ,\count_1hz_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_1hz_reg[24]_i_1_O_UNCONNECTED [7:3],\count_1hz_reg[24]_i_1_n_13 ,\count_1hz_reg[24]_i_1_n_14 ,\count_1hz_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,count_1hz_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[25] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[24]_i_1_n_14 ),
        .Q(count_1hz_reg[25]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[26] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[24]_i_1_n_13 ),
        .Q(count_1hz_reg[26]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[0]_i_2_n_13 ),
        .Q(count_1hz_reg[2]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[0]_i_2_n_12 ),
        .Q(count_1hz_reg[3]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[0]_i_2_n_11 ),
        .Q(count_1hz_reg[4]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[0]_i_2_n_10 ),
        .Q(count_1hz_reg[5]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[0]_i_2_n_9 ),
        .Q(count_1hz_reg[6]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[0]_i_2_n_8 ),
        .Q(count_1hz_reg[7]),
        .R(\count_1hz[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[8]_i_1_n_15 ),
        .Q(count_1hz_reg[8]),
        .R(\count_1hz[0]_i_1_n_0 ));
  CARRY8 \count_1hz_reg[8]_i_1 
       (.CI(\count_1hz_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_1hz_reg[8]_i_1_n_0 ,\count_1hz_reg[8]_i_1_n_1 ,\count_1hz_reg[8]_i_1_n_2 ,\count_1hz_reg[8]_i_1_n_3 ,\count_1hz_reg[8]_i_1_n_4 ,\count_1hz_reg[8]_i_1_n_5 ,\count_1hz_reg[8]_i_1_n_6 ,\count_1hz_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_1hz_reg[8]_i_1_n_8 ,\count_1hz_reg[8]_i_1_n_9 ,\count_1hz_reg[8]_i_1_n_10 ,\count_1hz_reg[8]_i_1_n_11 ,\count_1hz_reg[8]_i_1_n_12 ,\count_1hz_reg[8]_i_1_n_13 ,\count_1hz_reg[8]_i_1_n_14 ,\count_1hz_reg[8]_i_1_n_15 }),
        .S(count_1hz_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_1hz_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count_1hz_reg[8]_i_1_n_14 ),
        .Q(count_1hz_reg[9]),
        .R(\count_1hz[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000056666666)) 
    current_state_i_1
       (.I0(current_state_reg_n_0),
        .I1(\timer_pause[8]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(current_state_i_2_n_0),
        .I4(\k[2]_i_2_n_0 ),
        .I5(Reset),
        .O(current_state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    current_state_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(current_state_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_state_reg
       (.C(Clk),
        .CE(1'b1),
        .D(current_state_i_1_n_0),
        .Q(current_state_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \k[0]_i_1 
       (.I0(Q[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \k[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hEEEAAAAA)) 
    \k[2]_i_1 
       (.I0(Reset),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\k[2]_i_2_n_0 ),
        .O(\k[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    \k[2]_i_2 
       (.I0(timer_sec_reg__0[0]),
        .I1(timer_sec_reg__0[3]),
        .I2(\k[2]_i_4_n_0 ),
        .I3(timer_sec_reg__0[4]),
        .I4(timer_sec_reg__0[5]),
        .I5(timer_sec),
        .O(\k[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \k[2]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \k[2]_i_4 
       (.I0(timer_sec_reg__0[1]),
        .I1(timer_sec_reg__0[2]),
        .O(\k[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[0] 
       (.C(Clk),
        .CE(\k[2]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(\k[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[1] 
       (.C(Clk),
        .CE(\k[2]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(\k[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[2] 
       (.C(Clk),
        .CE(\k[2]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(\k[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400004440)) 
    pulse_1s_i_1
       (.I0(Reset),
        .I1(count_1hz_reg[26]),
        .I2(count_1hz_reg[19]),
        .I3(pulse_1s_i_2_n_0),
        .I4(pulse_1s_i_3_n_0),
        .I5(count_1hz_reg[25]),
        .O(pulse_1s_i_1_n_0));
  LUT6 #(
    .INIT(64'h8A888A888A8A8A88)) 
    pulse_1s_i_2
       (.I0(count_1hz_reg[18]),
        .I1(count_1hz_reg[17]),
        .I2(pulse_1s_i_4_n_0),
        .I3(pulse_1s_i_5_n_0),
        .I4(pulse_1s_i_6_n_0),
        .I5(pulse_1s_i_7_n_0),
        .O(pulse_1s_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    pulse_1s_i_3
       (.I0(count_1hz_reg[21]),
        .I1(count_1hz_reg[23]),
        .I2(count_1hz_reg[22]),
        .I3(count_1hz_reg[20]),
        .I4(count_1hz_reg[24]),
        .O(pulse_1s_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    pulse_1s_i_4
       (.I0(count_1hz_reg[13]),
        .I1(count_1hz_reg[16]),
        .I2(count_1hz_reg[14]),
        .I3(count_1hz_reg[15]),
        .O(pulse_1s_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pulse_1s_i_5
       (.I0(count_1hz_reg[11]),
        .I1(count_1hz_reg[12]),
        .I2(count_1hz_reg[9]),
        .I3(count_1hz_reg[8]),
        .I4(count_1hz_reg[10]),
        .O(pulse_1s_i_5_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    pulse_1s_i_6
       (.I0(count_1hz_reg[2]),
        .I1(count_1hz_reg[3]),
        .I2(count_1hz_reg[6]),
        .I3(count_1hz_reg[0]),
        .O(pulse_1s_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    pulse_1s_i_7
       (.I0(count_1hz_reg[5]),
        .I1(count_1hz_reg[7]),
        .I2(count_1hz_reg[1]),
        .I3(count_1hz_reg[4]),
        .O(pulse_1s_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pulse_1s_reg
       (.C(Clk),
        .CE(1'b1),
        .D(pulse_1s_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \timer_pause[0]_i_1 
       (.I0(timer_pause_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \timer_pause[1]_i_1 
       (.I0(timer_pause_reg__0[0]),
        .I1(timer_pause_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \timer_pause[2]_i_1 
       (.I0(timer_pause_reg__0[2]),
        .I1(timer_pause_reg__0[1]),
        .I2(timer_pause_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \timer_pause[3]_i_1 
       (.I0(timer_pause_reg__0[3]),
        .I1(timer_pause_reg__0[2]),
        .I2(timer_pause_reg__0[1]),
        .I3(timer_pause_reg__0[0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \timer_pause[4]_i_1 
       (.I0(timer_pause_reg__0[4]),
        .I1(timer_pause_reg__0[3]),
        .I2(timer_pause_reg__0[2]),
        .I3(timer_pause_reg__0[1]),
        .I4(timer_pause_reg__0[0]),
        .O(\timer_pause[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \timer_pause[5]_i_1 
       (.I0(timer_pause_reg__0[5]),
        .I1(timer_pause_reg__0[4]),
        .I2(timer_pause_reg__0[0]),
        .I3(timer_pause_reg__0[1]),
        .I4(timer_pause_reg__0[2]),
        .I5(timer_pause_reg__0[3]),
        .O(\timer_pause[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \timer_pause[6]_i_1 
       (.I0(timer_pause_reg__0[6]),
        .I1(timer_pause_reg__0[4]),
        .I2(\timer_pause[8]_i_5_n_0 ),
        .I3(timer_pause_reg__0[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \timer_pause[7]_i_1 
       (.I0(timer_pause_reg__0[5]),
        .I1(\timer_pause[8]_i_5_n_0 ),
        .I2(timer_pause_reg__0[4]),
        .I3(timer_pause_reg__0[6]),
        .I4(timer_pause_reg__0[7]),
        .O(p_0_in[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_pause[8]_i_1 
       (.I0(Reset),
        .I1(\timer_pause[8]_i_4_n_0 ),
        .O(\timer_pause[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \timer_pause[8]_i_2 
       (.I0(current_state_reg_n_0),
        .I1(E),
        .O(timer_pause));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \timer_pause[8]_i_3 
       (.I0(timer_pause_reg__0[8]),
        .I1(timer_pause_reg__0[5]),
        .I2(\timer_pause[8]_i_5_n_0 ),
        .I3(timer_pause_reg__0[4]),
        .I4(timer_pause_reg__0[6]),
        .I5(timer_pause_reg__0[7]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFD00000000000000)) 
    \timer_pause[8]_i_4 
       (.I0(\timer_pause[8]_i_6_n_0 ),
        .I1(timer_pause_reg__0[6]),
        .I2(timer_pause_reg__0[7]),
        .I3(current_state_reg_n_0),
        .I4(E),
        .I5(timer_pause_reg__0[8]),
        .O(\timer_pause[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer_pause[8]_i_5 
       (.I0(timer_pause_reg__0[0]),
        .I1(timer_pause_reg__0[1]),
        .I2(timer_pause_reg__0[2]),
        .I3(timer_pause_reg__0[3]),
        .O(\timer_pause[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000557FFFFFFFFF)) 
    \timer_pause[8]_i_6 
       (.I0(timer_pause_reg__0[3]),
        .I1(timer_pause_reg__0[0]),
        .I2(timer_pause_reg__0[1]),
        .I3(timer_pause_reg__0[2]),
        .I4(timer_pause_reg__0[4]),
        .I5(timer_pause_reg__0[5]),
        .O(\timer_pause[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[0] 
       (.C(Clk),
        .CE(timer_pause),
        .D(p_0_in[0]),
        .Q(timer_pause_reg__0[0]),
        .R(\timer_pause[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[1] 
       (.C(Clk),
        .CE(timer_pause),
        .D(p_0_in[1]),
        .Q(timer_pause_reg__0[1]),
        .R(\timer_pause[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[2] 
       (.C(Clk),
        .CE(timer_pause),
        .D(p_0_in[2]),
        .Q(timer_pause_reg__0[2]),
        .R(\timer_pause[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[3] 
       (.C(Clk),
        .CE(timer_pause),
        .D(p_0_in[3]),
        .Q(timer_pause_reg__0[3]),
        .R(\timer_pause[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[4] 
       (.C(Clk),
        .CE(timer_pause),
        .D(\timer_pause[4]_i_1_n_0 ),
        .Q(timer_pause_reg__0[4]),
        .R(\timer_pause[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[5] 
       (.C(Clk),
        .CE(timer_pause),
        .D(\timer_pause[5]_i_1_n_0 ),
        .Q(timer_pause_reg__0[5]),
        .R(\timer_pause[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[6] 
       (.C(Clk),
        .CE(timer_pause),
        .D(p_0_in[6]),
        .Q(timer_pause_reg__0[6]),
        .R(\timer_pause[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[7] 
       (.C(Clk),
        .CE(timer_pause),
        .D(p_0_in[7]),
        .Q(timer_pause_reg__0[7]),
        .R(\timer_pause[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_pause_reg[8] 
       (.C(Clk),
        .CE(timer_pause),
        .D(p_0_in[8]),
        .Q(timer_pause_reg__0[8]),
        .R(\timer_pause[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \timer_sec[0]_i_1 
       (.I0(timer_sec_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \timer_sec[1]_i_1 
       (.I0(timer_sec_reg__0[0]),
        .I1(timer_sec_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \timer_sec[2]_i_1 
       (.I0(timer_sec_reg__0[2]),
        .I1(timer_sec_reg__0[1]),
        .I2(timer_sec_reg__0[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \timer_sec[3]_i_1 
       (.I0(timer_sec_reg__0[3]),
        .I1(timer_sec_reg__0[0]),
        .I2(timer_sec_reg__0[1]),
        .I3(timer_sec_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \timer_sec[4]_i_1 
       (.I0(timer_sec_reg__0[4]),
        .I1(timer_sec_reg__0[2]),
        .I2(timer_sec_reg__0[1]),
        .I3(timer_sec_reg__0[0]),
        .I4(timer_sec_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_sec[5]_i_1 
       (.I0(Reset),
        .I1(\k[2]_i_2_n_0 ),
        .O(\timer_sec[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \timer_sec[5]_i_2 
       (.I0(timer_sec_reg__0[5]),
        .I1(timer_sec_reg__0[3]),
        .I2(timer_sec_reg__0[4]),
        .I3(timer_sec_reg__0[2]),
        .I4(timer_sec_reg__0[1]),
        .I5(timer_sec_reg__0[0]),
        .O(p_0_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_sec_reg[0] 
       (.C(Clk),
        .CE(timer_sec),
        .D(p_0_in__0[0]),
        .Q(timer_sec_reg__0[0]),
        .R(\timer_sec[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_sec_reg[1] 
       (.C(Clk),
        .CE(timer_sec),
        .D(p_0_in__0[1]),
        .Q(timer_sec_reg__0[1]),
        .R(\timer_sec[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_sec_reg[2] 
       (.C(Clk),
        .CE(timer_sec),
        .D(p_0_in__0[2]),
        .Q(timer_sec_reg__0[2]),
        .R(\timer_sec[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_sec_reg[3] 
       (.C(Clk),
        .CE(timer_sec),
        .D(p_0_in__0[3]),
        .Q(timer_sec_reg__0[3]),
        .R(\timer_sec[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_sec_reg[4] 
       (.C(Clk),
        .CE(timer_sec),
        .D(p_0_in__0[4]),
        .Q(timer_sec_reg__0[4]),
        .R(\timer_sec[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_sec_reg[5] 
       (.C(Clk),
        .CE(timer_sec),
        .D(p_0_in__0[5]),
        .Q(timer_sec_reg__0[5]),
        .R(\timer_sec[5]_i_1_n_0 ));
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
