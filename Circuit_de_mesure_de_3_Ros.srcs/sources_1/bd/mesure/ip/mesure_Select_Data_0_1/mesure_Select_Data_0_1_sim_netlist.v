// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 20 16:16:25 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Select_Data_0_1/mesure_Select_Data_0_1_sim_netlist.v
// Design      : mesure_Select_Data_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mesure_Select_Data_0_1,Select_Data,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Select_Data,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mesure_Select_Data_0_1
   (Clk,
    Reset,
    Done,
    Send,
    Sel,
    Allow);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mesure_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input Done;
  input Send;
  output [4:0]Sel;
  output Allow;

  wire Allow;
  wire Clk;
  wire Done;
  wire Reset;
  wire [4:0]Sel;
  wire Send;

  mesure_Select_Data_0_1_Select_Data U0
       (.Allow(Allow),
        .Clk(Clk),
        .Done(Done),
        .Q(Sel),
        .Reset(Reset),
        .Send(Send));
endmodule

(* ORIG_REF_NAME = "Select_Data" *) 
module mesure_Select_Data_0_1_Select_Data
   (Q,
    Allow,
    Reset,
    Clk,
    Done,
    Send);
  output [4:0]Q;
  output Allow;
  input Reset;
  input Clk;
  input Done;
  input Send;

  wire Allow;
  wire Clk;
  wire Done;
  wire Done_Precedent;
  wire Done_Precedent_i_1_n_0;
  wire Etat1_carry__0_i_1_n_0;
  wire Etat1_carry__0_i_2_n_0;
  wire Etat1_carry__0_i_3_n_0;
  wire Etat1_carry__0_i_4_n_0;
  wire Etat1_carry__0_i_5_n_0;
  wire Etat1_carry__0_i_6_n_0;
  wire Etat1_carry__0_i_7_n_0;
  wire Etat1_carry__0_i_8_n_0;
  wire Etat1_carry__0_n_0;
  wire Etat1_carry__0_n_1;
  wire Etat1_carry__0_n_2;
  wire Etat1_carry__0_n_3;
  wire Etat1_carry__0_n_4;
  wire Etat1_carry__0_n_5;
  wire Etat1_carry__0_n_6;
  wire Etat1_carry__0_n_7;
  wire Etat1_carry_i_10_n_0;
  wire Etat1_carry_i_1_n_0;
  wire Etat1_carry_i_2_n_0;
  wire Etat1_carry_i_3_n_0;
  wire Etat1_carry_i_4_n_0;
  wire Etat1_carry_i_5_n_0;
  wire Etat1_carry_i_6_n_0;
  wire Etat1_carry_i_7_n_0;
  wire Etat1_carry_i_8_n_0;
  wire Etat1_carry_i_9_n_0;
  wire Etat1_carry_n_0;
  wire Etat1_carry_n_1;
  wire Etat1_carry_n_2;
  wire Etat1_carry_n_3;
  wire Etat1_carry_n_4;
  wire Etat1_carry_n_5;
  wire Etat1_carry_n_6;
  wire Etat1_carry_n_7;
  wire \FSM_onehot_Etat[0]_i_1_n_0 ;
  wire \FSM_onehot_Etat[1]_i_1_n_0 ;
  wire \FSM_onehot_Etat[1]_i_2_n_0 ;
  wire \FSM_onehot_Etat[2]_i_1_n_0 ;
  wire \FSM_onehot_Etat[2]_i_2_n_0 ;
  wire \FSM_onehot_Etat_reg_n_0_[0] ;
  wire \FSM_onehot_Etat_reg_n_0_[1] ;
  wire \FSM_onehot_Etat_reg_n_0_[2] ;
  wire [31:0]I;
  wire \I[0]_i_1_n_0 ;
  wire \I[10]_i_1_n_0 ;
  wire \I[11]_i_1_n_0 ;
  wire \I[12]_i_1_n_0 ;
  wire \I[13]_i_1_n_0 ;
  wire \I[14]_i_1_n_0 ;
  wire \I[15]_i_1_n_0 ;
  wire \I[16]_i_1_n_0 ;
  wire \I[17]_i_1_n_0 ;
  wire \I[18]_i_1_n_0 ;
  wire \I[19]_i_1_n_0 ;
  wire \I[1]_i_1_n_0 ;
  wire \I[20]_i_1_n_0 ;
  wire \I[21]_i_1_n_0 ;
  wire \I[22]_i_1_n_0 ;
  wire \I[23]_i_1_n_0 ;
  wire \I[24]_i_1_n_0 ;
  wire \I[25]_i_1_n_0 ;
  wire \I[26]_i_1_n_0 ;
  wire \I[27]_i_1_n_0 ;
  wire \I[28]_i_1_n_0 ;
  wire \I[29]_i_1_n_0 ;
  wire \I[2]_i_1_n_0 ;
  wire \I[30]_i_1_n_0 ;
  wire \I[31]_i_2_n_0 ;
  wire \I[3]_i_1_n_0 ;
  wire \I[4]_i_1_n_0 ;
  wire \I[5]_i_1_n_0 ;
  wire \I[6]_i_1_n_0 ;
  wire \I[7]_i_1_n_0 ;
  wire \I[8]_i_1_n_0 ;
  wire \I[9]_i_1_n_0 ;
  wire I_0;
  wire \I_reg[16]_i_2_n_0 ;
  wire \I_reg[16]_i_2_n_1 ;
  wire \I_reg[16]_i_2_n_2 ;
  wire \I_reg[16]_i_2_n_3 ;
  wire \I_reg[16]_i_2_n_4 ;
  wire \I_reg[16]_i_2_n_5 ;
  wire \I_reg[16]_i_2_n_6 ;
  wire \I_reg[16]_i_2_n_7 ;
  wire \I_reg[24]_i_2_n_0 ;
  wire \I_reg[24]_i_2_n_1 ;
  wire \I_reg[24]_i_2_n_2 ;
  wire \I_reg[24]_i_2_n_3 ;
  wire \I_reg[24]_i_2_n_4 ;
  wire \I_reg[24]_i_2_n_5 ;
  wire \I_reg[24]_i_2_n_6 ;
  wire \I_reg[24]_i_2_n_7 ;
  wire \I_reg[31]_i_3_n_2 ;
  wire \I_reg[31]_i_3_n_3 ;
  wire \I_reg[31]_i_3_n_4 ;
  wire \I_reg[31]_i_3_n_5 ;
  wire \I_reg[31]_i_3_n_6 ;
  wire \I_reg[31]_i_3_n_7 ;
  wire \I_reg[8]_i_2_n_0 ;
  wire \I_reg[8]_i_2_n_1 ;
  wire \I_reg[8]_i_2_n_2 ;
  wire \I_reg[8]_i_2_n_3 ;
  wire \I_reg[8]_i_2_n_4 ;
  wire \I_reg[8]_i_2_n_5 ;
  wire \I_reg[8]_i_2_n_6 ;
  wire \I_reg[8]_i_2_n_7 ;
  wire J;
  wire \J[0]_i_1_n_0 ;
  wire \J[1]_i_1_n_0 ;
  wire \J[2]_i_1_n_0 ;
  wire \J[3]_i_1_n_0 ;
  wire \J[4]_i_2_n_0 ;
  wire \J[4]_i_3_n_0 ;
  wire [4:0]Q;
  wire Reset;
  wire Send;
  wire [31:1]in4;
  wire [7:0]NLW_Etat1_carry_O_UNCONNECTED;
  wire [7:0]NLW_Etat1_carry__0_O_UNCONNECTED;
  wire [7:6]\NLW_I_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_I_reg[31]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Allow_INST_0
       (.I0(\FSM_onehot_Etat_reg_n_0_[1] ),
        .I1(\FSM_onehot_Etat_reg_n_0_[2] ),
        .O(Allow));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Done_Precedent_i_1
       (.I0(Done),
        .I1(Reset),
        .O(Done_Precedent_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Done_Precedent_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Done_Precedent_i_1_n_0),
        .Q(Done_Precedent),
        .R(1'b0));
  CARRY8 Etat1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({Etat1_carry_n_0,Etat1_carry_n_1,Etat1_carry_n_2,Etat1_carry_n_3,Etat1_carry_n_4,Etat1_carry_n_5,Etat1_carry_n_6,Etat1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Etat1_carry_i_1_n_0,Etat1_carry_i_2_n_0}),
        .O(NLW_Etat1_carry_O_UNCONNECTED[7:0]),
        .S({Etat1_carry_i_3_n_0,Etat1_carry_i_4_n_0,Etat1_carry_i_5_n_0,Etat1_carry_i_6_n_0,Etat1_carry_i_7_n_0,Etat1_carry_i_8_n_0,Etat1_carry_i_9_n_0,Etat1_carry_i_10_n_0}));
  CARRY8 Etat1_carry__0
       (.CI(Etat1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({Etat1_carry__0_n_0,Etat1_carry__0_n_1,Etat1_carry__0_n_2,Etat1_carry__0_n_3,Etat1_carry__0_n_4,Etat1_carry__0_n_5,Etat1_carry__0_n_6,Etat1_carry__0_n_7}),
        .DI({I[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Etat1_carry__0_O_UNCONNECTED[7:0]),
        .S({Etat1_carry__0_i_1_n_0,Etat1_carry__0_i_2_n_0,Etat1_carry__0_i_3_n_0,Etat1_carry__0_i_4_n_0,Etat1_carry__0_i_5_n_0,Etat1_carry__0_i_6_n_0,Etat1_carry__0_i_7_n_0,Etat1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry__0_i_1
       (.I0(I[30]),
        .I1(I[31]),
        .O(Etat1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry__0_i_2
       (.I0(I[28]),
        .I1(I[29]),
        .O(Etat1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry__0_i_3
       (.I0(I[26]),
        .I1(I[27]),
        .O(Etat1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry__0_i_4
       (.I0(I[24]),
        .I1(I[25]),
        .O(Etat1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry__0_i_5
       (.I0(I[22]),
        .I1(I[23]),
        .O(Etat1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry__0_i_6
       (.I0(I[20]),
        .I1(I[21]),
        .O(Etat1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry__0_i_7
       (.I0(I[18]),
        .I1(I[19]),
        .O(Etat1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry__0_i_8
       (.I0(I[16]),
        .I1(I[17]),
        .O(Etat1_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Etat1_carry_i_1
       (.I0(I[3]),
        .O(Etat1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Etat1_carry_i_10
       (.I0(I[1]),
        .I1(I[0]),
        .O(Etat1_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Etat1_carry_i_2
       (.I0(I[1]),
        .O(Etat1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry_i_3
       (.I0(I[14]),
        .I1(I[15]),
        .O(Etat1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry_i_4
       (.I0(I[12]),
        .I1(I[13]),
        .O(Etat1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry_i_5
       (.I0(I[10]),
        .I1(I[11]),
        .O(Etat1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry_i_6
       (.I0(I[8]),
        .I1(I[9]),
        .O(Etat1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry_i_7
       (.I0(I[6]),
        .I1(I[7]),
        .O(Etat1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Etat1_carry_i_8
       (.I0(I[4]),
        .I1(I[5]),
        .O(Etat1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Etat1_carry_i_9
       (.I0(I[3]),
        .I1(I[2]),
        .O(Etat1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \FSM_onehot_Etat[0]_i_1 
       (.I0(\FSM_onehot_Etat[1]_i_2_n_0 ),
        .I1(Done),
        .I2(Done_Precedent),
        .I3(Q[4]),
        .I4(\FSM_onehot_Etat_reg_n_0_[2] ),
        .O(\FSM_onehot_Etat[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \FSM_onehot_Etat[1]_i_1 
       (.I0(Q[4]),
        .I1(Done_Precedent),
        .I2(Done),
        .I3(\FSM_onehot_Etat[1]_i_2_n_0 ),
        .I4(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I5(\FSM_onehot_Etat_reg_n_0_[0] ),
        .O(\FSM_onehot_Etat[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_Etat[1]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FSM_onehot_Etat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAFFEAEA)) 
    \FSM_onehot_Etat[2]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[1] ),
        .I1(Send),
        .I2(\FSM_onehot_Etat_reg_n_0_[0] ),
        .I3(\FSM_onehot_Etat[2]_i_2_n_0 ),
        .I4(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I5(Etat1_carry__0_n_0),
        .O(\FSM_onehot_Etat[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_onehot_Etat[2]_i_2 
       (.I0(Done),
        .I1(Done_Precedent),
        .I2(Q[4]),
        .O(\FSM_onehot_Etat[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "attendre:100,eteint:001,envoi:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_Etat_reg[0] 
       (.C(Clk),
        .CE(\FSM_onehot_Etat[2]_i_1_n_0 ),
        .D(\FSM_onehot_Etat[0]_i_1_n_0 ),
        .Q(\FSM_onehot_Etat_reg_n_0_[0] ),
        .S(Reset));
  (* FSM_ENCODED_STATES = "attendre:100,eteint:001,envoi:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_Etat_reg[1] 
       (.C(Clk),
        .CE(\FSM_onehot_Etat[2]_i_1_n_0 ),
        .D(\FSM_onehot_Etat[1]_i_1_n_0 ),
        .Q(\FSM_onehot_Etat_reg_n_0_[1] ),
        .R(Reset));
  (* FSM_ENCODED_STATES = "attendre:100,eteint:001,envoi:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_Etat_reg[2] 
       (.C(Clk),
        .CE(\FSM_onehot_Etat[2]_i_1_n_0 ),
        .D(\FSM_onehot_Etat_reg_n_0_[1] ),
        .Q(\FSM_onehot_Etat_reg_n_0_[2] ),
        .R(Reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \I[0]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(I[0]),
        .O(\I[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[10]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[10]),
        .O(\I[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[11]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[11]),
        .O(\I[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[12]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[12]),
        .O(\I[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[13]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[13]),
        .O(\I[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[14]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[14]),
        .O(\I[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[15]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[15]),
        .O(\I[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[16]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[16]),
        .O(\I[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[17]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[17]),
        .O(\I[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[18]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[18]),
        .O(\I[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[19]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[19]),
        .O(\I[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[1]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[1]),
        .O(\I[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[20]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[20]),
        .O(\I[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[21]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[21]),
        .O(\I[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[22]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[22]),
        .O(\I[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[23]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[23]),
        .O(\I[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[24]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[24]),
        .O(\I[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[25]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[25]),
        .O(\I[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[26]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[26]),
        .O(\I[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[27]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[27]),
        .O(\I[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[28]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[28]),
        .O(\I[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[29]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[29]),
        .O(\I[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[2]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[2]),
        .O(\I[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[30]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[30]),
        .O(\I[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \I[31]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(Etat1_carry__0_n_0),
        .I2(\FSM_onehot_Etat_reg_n_0_[1] ),
        .O(I_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[31]_i_2 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[31]),
        .O(\I[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[3]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[3]),
        .O(\I[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[4]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[4]),
        .O(\I[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[5]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[5]),
        .O(\I[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[6]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[6]),
        .O(\I[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[7]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[7]),
        .O(\I[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[8]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[8]),
        .O(\I[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I[9]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(in4[9]),
        .O(\I[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[0] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[0]_i_1_n_0 ),
        .Q(I[0]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[10] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[10]_i_1_n_0 ),
        .Q(I[10]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[11] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[11]_i_1_n_0 ),
        .Q(I[11]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[12] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[12]_i_1_n_0 ),
        .Q(I[12]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[13] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[13]_i_1_n_0 ),
        .Q(I[13]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[14] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[14]_i_1_n_0 ),
        .Q(I[14]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[15] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[15]_i_1_n_0 ),
        .Q(I[15]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[16] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[16]_i_1_n_0 ),
        .Q(I[16]),
        .R(Reset));
  CARRY8 \I_reg[16]_i_2 
       (.CI(\I_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\I_reg[16]_i_2_n_0 ,\I_reg[16]_i_2_n_1 ,\I_reg[16]_i_2_n_2 ,\I_reg[16]_i_2_n_3 ,\I_reg[16]_i_2_n_4 ,\I_reg[16]_i_2_n_5 ,\I_reg[16]_i_2_n_6 ,\I_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in4[16:9]),
        .S(I[16:9]));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[17] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[17]_i_1_n_0 ),
        .Q(I[17]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[18] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[18]_i_1_n_0 ),
        .Q(I[18]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[19] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[19]_i_1_n_0 ),
        .Q(I[19]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[1] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[1]_i_1_n_0 ),
        .Q(I[1]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[20] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[20]_i_1_n_0 ),
        .Q(I[20]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[21] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[21]_i_1_n_0 ),
        .Q(I[21]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[22] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[22]_i_1_n_0 ),
        .Q(I[22]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[23] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[23]_i_1_n_0 ),
        .Q(I[23]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[24] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[24]_i_1_n_0 ),
        .Q(I[24]),
        .R(Reset));
  CARRY8 \I_reg[24]_i_2 
       (.CI(\I_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\I_reg[24]_i_2_n_0 ,\I_reg[24]_i_2_n_1 ,\I_reg[24]_i_2_n_2 ,\I_reg[24]_i_2_n_3 ,\I_reg[24]_i_2_n_4 ,\I_reg[24]_i_2_n_5 ,\I_reg[24]_i_2_n_6 ,\I_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in4[24:17]),
        .S(I[24:17]));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[25] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[25]_i_1_n_0 ),
        .Q(I[25]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[26] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[26]_i_1_n_0 ),
        .Q(I[26]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[27] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[27]_i_1_n_0 ),
        .Q(I[27]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[28] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[28]_i_1_n_0 ),
        .Q(I[28]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[29] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[29]_i_1_n_0 ),
        .Q(I[29]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[2] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[2]_i_1_n_0 ),
        .Q(I[2]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[30] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[30]_i_1_n_0 ),
        .Q(I[30]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[31] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[31]_i_2_n_0 ),
        .Q(I[31]),
        .R(Reset));
  CARRY8 \I_reg[31]_i_3 
       (.CI(\I_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_I_reg[31]_i_3_CO_UNCONNECTED [7:6],\I_reg[31]_i_3_n_2 ,\I_reg[31]_i_3_n_3 ,\I_reg[31]_i_3_n_4 ,\I_reg[31]_i_3_n_5 ,\I_reg[31]_i_3_n_6 ,\I_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_I_reg[31]_i_3_O_UNCONNECTED [7],in4[31:25]}),
        .S({1'b0,I[31:25]}));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[3] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[3]_i_1_n_0 ),
        .Q(I[3]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[4] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[4]_i_1_n_0 ),
        .Q(I[4]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[5] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[5]_i_1_n_0 ),
        .Q(I[5]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[6] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[6]_i_1_n_0 ),
        .Q(I[6]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[7] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[7]_i_1_n_0 ),
        .Q(I[7]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[8] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[8]_i_1_n_0 ),
        .Q(I[8]),
        .R(Reset));
  CARRY8 \I_reg[8]_i_2 
       (.CI(I[0]),
        .CI_TOP(1'b0),
        .CO({\I_reg[8]_i_2_n_0 ,\I_reg[8]_i_2_n_1 ,\I_reg[8]_i_2_n_2 ,\I_reg[8]_i_2_n_3 ,\I_reg[8]_i_2_n_4 ,\I_reg[8]_i_2_n_5 ,\I_reg[8]_i_2_n_6 ,\I_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:1]),
        .S(I[8:1]));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[9] 
       (.C(Clk),
        .CE(I_0),
        .D(\I[9]_i_1_n_0 ),
        .Q(I[9]),
        .R(Reset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \J[0]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I1(Q[0]),
        .O(\J[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \J[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I2(Q[1]),
        .O(\J[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \J[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I3(Q[2]),
        .O(\J[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \J[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I4(Q[3]),
        .O(\J[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \J[4]_i_1 
       (.I0(\FSM_onehot_Etat_reg_n_0_[0] ),
        .I1(Send),
        .I2(\J[4]_i_3_n_0 ),
        .I3(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I4(Etat1_carry__0_n_0),
        .O(J));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \J[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\FSM_onehot_Etat_reg_n_0_[2] ),
        .I5(Q[4]),
        .O(\J[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \J[4]_i_3 
       (.I0(Q[4]),
        .I1(Done_Precedent),
        .I2(Done),
        .I3(\FSM_onehot_Etat[1]_i_2_n_0 ),
        .O(\J[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \J_reg[0] 
       (.C(Clk),
        .CE(J),
        .D(\J[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \J_reg[1] 
       (.C(Clk),
        .CE(J),
        .D(\J[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \J_reg[2] 
       (.C(Clk),
        .CE(J),
        .D(\J[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \J_reg[3] 
       (.C(Clk),
        .CE(J),
        .D(\J[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \J_reg[4] 
       (.C(Clk),
        .CE(J),
        .D(\J[4]_i_2_n_0 ),
        .Q(Q[4]),
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
