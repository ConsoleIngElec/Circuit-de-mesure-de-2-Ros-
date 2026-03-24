-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Mar 20 15:49:45 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Gen_mode_0_1/mesure_Gen_mode_0_1_sim_netlist.vhdl
-- Design      : mesure_Gen_mode_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_mode_0_1_Gen_mode is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Mode : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Send : out STD_LOGIC;
    Reset : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Gen_mode_0_1_Gen_mode : entity is "Gen_mode";
end mesure_Gen_mode_0_1_Gen_mode;

architecture STRUCTURE of mesure_Gen_mode_0_1_Gen_mode is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \Mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[1]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[2]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[3]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[4]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_2_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Reset_RO[0]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_RO[1]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_RO[2]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_RO[3]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_RO[4]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_RO[5]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_RO[5]_i_2_n_0\ : STD_LOGIC;
  signal Send_INST_0_i_2_n_0 : STD_LOGIC;
  signal \count_1hz[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_1hz[0]_i_3_n_0\ : STD_LOGIC;
  signal count_1hz_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \count_1hz_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \count_1hz_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \count_1hz_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \count_1hz_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \count_1hz_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \count_1hz_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \count_1hz_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_1hz_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \count_1hz_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal current_state_i_1_n_0 : STD_LOGIC;
  signal current_state_i_2_n_0 : STD_LOGIC;
  signal current_state_reg_n_0 : STD_LOGIC;
  signal \k[2]_i_1_n_0\ : STD_LOGIC;
  signal \k[2]_i_2_n_0\ : STD_LOGIC;
  signal \k[2]_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pulse_1s_i_1_n_0 : STD_LOGIC;
  signal pulse_1s_i_2_n_0 : STD_LOGIC;
  signal pulse_1s_i_3_n_0 : STD_LOGIC;
  signal pulse_1s_i_4_n_0 : STD_LOGIC;
  signal pulse_1s_i_5_n_0 : STD_LOGIC;
  signal pulse_1s_i_6_n_0 : STD_LOGIC;
  signal pulse_1s_i_7_n_0 : STD_LOGIC;
  signal timer_pause : STD_LOGIC;
  signal \timer_pause[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_pause[5]_i_1_n_0\ : STD_LOGIC;
  signal \timer_pause[8]_i_1_n_0\ : STD_LOGIC;
  signal \timer_pause[8]_i_4_n_0\ : STD_LOGIC;
  signal \timer_pause[8]_i_5_n_0\ : STD_LOGIC;
  signal \timer_pause[8]_i_6_n_0\ : STD_LOGIC;
  signal \timer_pause_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timer_sec : STD_LOGIC;
  signal \timer_sec[5]_i_1_n_0\ : STD_LOGIC;
  signal \timer_sec_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_count_1hz_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_count_1hz_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Mode[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Mode[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Mode[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Mode[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Mode[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Mode[5]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Mode[5]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Reset_RO[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Reset_RO[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Reset_RO[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Reset_RO[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Reset_RO[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Reset_RO[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Reset_RO[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of current_state_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \k[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \k[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \k[2]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \k[2]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \timer_pause[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \timer_pause[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \timer_pause[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \timer_pause[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \timer_pause[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \timer_pause[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \timer_pause[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \timer_pause[8]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \timer_sec[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \timer_sec[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \timer_sec[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \timer_sec[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \timer_sec[4]_i_1\ : label is "soft_lutpair5";
begin
  E(0) <= \^e\(0);
  Q(2 downto 0) <= \^q\(2 downto 0);
\Mode[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \Mode[5]_i_3_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \Mode[0]_i_1_n_0\
    );
\Mode[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \Mode[5]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \Mode[1]_i_1_n_0\
    );
\Mode[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \Mode[5]_i_3_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \Mode[2]_i_1_n_0\
    );
\Mode[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \Mode[5]_i_3_n_0\,
      O => \Mode[3]_i_1_n_0\
    );
\Mode[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \Mode[5]_i_3_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \Mode[4]_i_1_n_0\
    );
\Mode[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Reset,
      I1 => \^e\(0),
      I2 => current_state_reg_n_0,
      O => \Mode[5]_i_1_n_0\
    );
\Mode[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \Mode[5]_i_3_n_0\,
      O => \Mode[5]_i_2_n_0\
    );
\Mode[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15151555"
    )
        port map (
      I0 => \timer_sec_reg__0\(5),
      I1 => \timer_sec_reg__0\(3),
      I2 => \timer_sec_reg__0\(4),
      I3 => \timer_sec_reg__0\(1),
      I4 => \timer_sec_reg__0\(2),
      O => \Mode[5]_i_3_n_0\
    );
\Mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Mode[0]_i_1_n_0\,
      Q => Mode(0),
      R => \Mode[5]_i_1_n_0\
    );
\Mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Mode[1]_i_1_n_0\,
      Q => Mode(1),
      R => \Mode[5]_i_1_n_0\
    );
\Mode_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Mode[2]_i_1_n_0\,
      Q => Mode(2),
      R => \Mode[5]_i_1_n_0\
    );
\Mode_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Mode[3]_i_1_n_0\,
      Q => Mode(3),
      R => \Mode[5]_i_1_n_0\
    );
\Mode_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Mode[4]_i_1_n_0\,
      Q => Mode(4),
      R => \Mode[5]_i_1_n_0\
    );
\Mode_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Mode[5]_i_2_n_0\,
      Q => Mode(5),
      R => \Mode[5]_i_1_n_0\
    );
\Reset_RO[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \Reset_RO[5]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => current_state_reg_n_0,
      O => \Reset_RO[0]_i_1_n_0\
    );
\Reset_RO[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => \Reset_RO[5]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => current_state_reg_n_0,
      O => \Reset_RO[1]_i_1_n_0\
    );
\Reset_RO[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => \Reset_RO[5]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => current_state_reg_n_0,
      O => \Reset_RO[2]_i_1_n_0\
    );
\Reset_RO[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \Reset_RO[5]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => current_state_reg_n_0,
      O => \Reset_RO[3]_i_1_n_0\
    );
\Reset_RO[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => \Reset_RO[5]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => current_state_reg_n_0,
      O => \Reset_RO[4]_i_1_n_0\
    );
\Reset_RO[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \Reset_RO[5]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => current_state_reg_n_0,
      O => \Reset_RO[5]_i_1_n_0\
    );
\Reset_RO[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \timer_sec_reg__0\(2),
      I1 => \timer_sec_reg__0\(1),
      I2 => \timer_sec_reg__0\(3),
      I3 => \timer_sec_reg__0\(5),
      I4 => \timer_sec_reg__0\(4),
      O => \Reset_RO[5]_i_2_n_0\
    );
\Reset_RO_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Reset_RO[0]_i_1_n_0\,
      Q => Reset_RO(0),
      R => Reset
    );
\Reset_RO_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Reset_RO[1]_i_1_n_0\,
      Q => Reset_RO(1),
      R => Reset
    );
\Reset_RO_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Reset_RO[2]_i_1_n_0\,
      Q => Reset_RO(2),
      R => Reset
    );
\Reset_RO_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Reset_RO[3]_i_1_n_0\,
      Q => Reset_RO(3),
      R => Reset
    );
\Reset_RO_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Reset_RO[4]_i_1_n_0\,
      Q => Reset_RO(4),
      R => Reset
    );
\Reset_RO_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \^e\(0),
      D => \Reset_RO[5]_i_1_n_0\,
      Q => Reset_RO(5),
      R => Reset
    );
Send_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \timer_sec_reg__0\(2),
      I1 => \timer_sec_reg__0\(5),
      I2 => timer_sec,
      I3 => \timer_sec_reg__0\(1),
      I4 => \timer_sec_reg__0\(0),
      I5 => Send_INST_0_i_2_n_0,
      O => Send
    );
Send_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^e\(0),
      I1 => current_state_reg_n_0,
      O => timer_sec
    );
Send_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \timer_sec_reg__0\(3),
      I1 => \timer_sec_reg__0\(4),
      O => Send_INST_0_i_2_n_0
    );
\count_1hz[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEAAAAEEEA"
    )
        port map (
      I0 => Reset,
      I1 => count_1hz_reg(26),
      I2 => count_1hz_reg(19),
      I3 => pulse_1s_i_2_n_0,
      I4 => pulse_1s_i_3_n_0,
      I5 => count_1hz_reg(25),
      O => \count_1hz[0]_i_1_n_0\
    );
\count_1hz[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_1hz_reg(0),
      O => \count_1hz[0]_i_3_n_0\
    );
\count_1hz_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[0]_i_2_n_15\,
      Q => count_1hz_reg(0),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_1hz_reg[0]_i_2_n_0\,
      CO(6) => \count_1hz_reg[0]_i_2_n_1\,
      CO(5) => \count_1hz_reg[0]_i_2_n_2\,
      CO(4) => \count_1hz_reg[0]_i_2_n_3\,
      CO(3) => \count_1hz_reg[0]_i_2_n_4\,
      CO(2) => \count_1hz_reg[0]_i_2_n_5\,
      CO(1) => \count_1hz_reg[0]_i_2_n_6\,
      CO(0) => \count_1hz_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \count_1hz_reg[0]_i_2_n_8\,
      O(6) => \count_1hz_reg[0]_i_2_n_9\,
      O(5) => \count_1hz_reg[0]_i_2_n_10\,
      O(4) => \count_1hz_reg[0]_i_2_n_11\,
      O(3) => \count_1hz_reg[0]_i_2_n_12\,
      O(2) => \count_1hz_reg[0]_i_2_n_13\,
      O(1) => \count_1hz_reg[0]_i_2_n_14\,
      O(0) => \count_1hz_reg[0]_i_2_n_15\,
      S(7 downto 1) => count_1hz_reg(7 downto 1),
      S(0) => \count_1hz[0]_i_3_n_0\
    );
\count_1hz_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[8]_i_1_n_13\,
      Q => count_1hz_reg(10),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[8]_i_1_n_12\,
      Q => count_1hz_reg(11),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[8]_i_1_n_11\,
      Q => count_1hz_reg(12),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[8]_i_1_n_10\,
      Q => count_1hz_reg(13),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[8]_i_1_n_9\,
      Q => count_1hz_reg(14),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[8]_i_1_n_8\,
      Q => count_1hz_reg(15),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[16]_i_1_n_15\,
      Q => count_1hz_reg(16),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_1hz_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_1hz_reg[16]_i_1_n_0\,
      CO(6) => \count_1hz_reg[16]_i_1_n_1\,
      CO(5) => \count_1hz_reg[16]_i_1_n_2\,
      CO(4) => \count_1hz_reg[16]_i_1_n_3\,
      CO(3) => \count_1hz_reg[16]_i_1_n_4\,
      CO(2) => \count_1hz_reg[16]_i_1_n_5\,
      CO(1) => \count_1hz_reg[16]_i_1_n_6\,
      CO(0) => \count_1hz_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \count_1hz_reg[16]_i_1_n_8\,
      O(6) => \count_1hz_reg[16]_i_1_n_9\,
      O(5) => \count_1hz_reg[16]_i_1_n_10\,
      O(4) => \count_1hz_reg[16]_i_1_n_11\,
      O(3) => \count_1hz_reg[16]_i_1_n_12\,
      O(2) => \count_1hz_reg[16]_i_1_n_13\,
      O(1) => \count_1hz_reg[16]_i_1_n_14\,
      O(0) => \count_1hz_reg[16]_i_1_n_15\,
      S(7 downto 0) => count_1hz_reg(23 downto 16)
    );
\count_1hz_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[16]_i_1_n_14\,
      Q => count_1hz_reg(17),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[16]_i_1_n_13\,
      Q => count_1hz_reg(18),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[16]_i_1_n_12\,
      Q => count_1hz_reg(19),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[0]_i_2_n_14\,
      Q => count_1hz_reg(1),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[16]_i_1_n_11\,
      Q => count_1hz_reg(20),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[16]_i_1_n_10\,
      Q => count_1hz_reg(21),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[16]_i_1_n_9\,
      Q => count_1hz_reg(22),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[16]_i_1_n_8\,
      Q => count_1hz_reg(23),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[24]_i_1_n_15\,
      Q => count_1hz_reg(24),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_1hz_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_count_1hz_reg[24]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \count_1hz_reg[24]_i_1_n_6\,
      CO(0) => \count_1hz_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_count_1hz_reg[24]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2) => \count_1hz_reg[24]_i_1_n_13\,
      O(1) => \count_1hz_reg[24]_i_1_n_14\,
      O(0) => \count_1hz_reg[24]_i_1_n_15\,
      S(7 downto 3) => B"00000",
      S(2 downto 0) => count_1hz_reg(26 downto 24)
    );
\count_1hz_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[24]_i_1_n_14\,
      Q => count_1hz_reg(25),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[24]_i_1_n_13\,
      Q => count_1hz_reg(26),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[0]_i_2_n_13\,
      Q => count_1hz_reg(2),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[0]_i_2_n_12\,
      Q => count_1hz_reg(3),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[0]_i_2_n_11\,
      Q => count_1hz_reg(4),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[0]_i_2_n_10\,
      Q => count_1hz_reg(5),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[0]_i_2_n_9\,
      Q => count_1hz_reg(6),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[0]_i_2_n_8\,
      Q => count_1hz_reg(7),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[8]_i_1_n_15\,
      Q => count_1hz_reg(8),
      R => \count_1hz[0]_i_1_n_0\
    );
\count_1hz_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_1hz_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \count_1hz_reg[8]_i_1_n_0\,
      CO(6) => \count_1hz_reg[8]_i_1_n_1\,
      CO(5) => \count_1hz_reg[8]_i_1_n_2\,
      CO(4) => \count_1hz_reg[8]_i_1_n_3\,
      CO(3) => \count_1hz_reg[8]_i_1_n_4\,
      CO(2) => \count_1hz_reg[8]_i_1_n_5\,
      CO(1) => \count_1hz_reg[8]_i_1_n_6\,
      CO(0) => \count_1hz_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \count_1hz_reg[8]_i_1_n_8\,
      O(6) => \count_1hz_reg[8]_i_1_n_9\,
      O(5) => \count_1hz_reg[8]_i_1_n_10\,
      O(4) => \count_1hz_reg[8]_i_1_n_11\,
      O(3) => \count_1hz_reg[8]_i_1_n_12\,
      O(2) => \count_1hz_reg[8]_i_1_n_13\,
      O(1) => \count_1hz_reg[8]_i_1_n_14\,
      O(0) => \count_1hz_reg[8]_i_1_n_15\,
      S(7 downto 0) => count_1hz_reg(15 downto 8)
    );
\count_1hz_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \count_1hz_reg[8]_i_1_n_14\,
      Q => count_1hz_reg(9),
      R => \count_1hz[0]_i_1_n_0\
    );
current_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000056666666"
    )
        port map (
      I0 => current_state_reg_n_0,
      I1 => \timer_pause[8]_i_4_n_0\,
      I2 => \^q\(2),
      I3 => current_state_i_2_n_0,
      I4 => \k[2]_i_2_n_0\,
      I5 => Reset,
      O => current_state_i_1_n_0
    );
current_state_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => current_state_i_2_n_0
    );
current_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => current_state_i_1_n_0,
      Q => current_state_reg_n_0,
      R => '0'
    );
\k[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_1_in(0)
    );
\k[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => p_1_in(1)
    );
\k[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEAAAAA"
    )
        port map (
      I0 => Reset,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \k[2]_i_2_n_0\,
      O => \k[2]_i_1_n_0\
    );
\k[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00000000000000"
    )
        port map (
      I0 => \timer_sec_reg__0\(0),
      I1 => \timer_sec_reg__0\(3),
      I2 => \k[2]_i_4_n_0\,
      I3 => \timer_sec_reg__0\(4),
      I4 => \timer_sec_reg__0\(5),
      I5 => timer_sec,
      O => \k[2]_i_2_n_0\
    );
\k[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => p_1_in(2)
    );
\k[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \timer_sec_reg__0\(1),
      I1 => \timer_sec_reg__0\(2),
      O => \k[2]_i_4_n_0\
    );
\k_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_2_n_0\,
      D => p_1_in(0),
      Q => \^q\(0),
      R => \k[2]_i_1_n_0\
    );
\k_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_2_n_0\,
      D => p_1_in(1),
      Q => \^q\(1),
      R => \k[2]_i_1_n_0\
    );
\k_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_2_n_0\,
      D => p_1_in(2),
      Q => \^q\(2),
      R => \k[2]_i_1_n_0\
    );
pulse_1s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444400004440"
    )
        port map (
      I0 => Reset,
      I1 => count_1hz_reg(26),
      I2 => count_1hz_reg(19),
      I3 => pulse_1s_i_2_n_0,
      I4 => pulse_1s_i_3_n_0,
      I5 => count_1hz_reg(25),
      O => pulse_1s_i_1_n_0
    );
pulse_1s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A8A8A88"
    )
        port map (
      I0 => count_1hz_reg(18),
      I1 => count_1hz_reg(17),
      I2 => pulse_1s_i_4_n_0,
      I3 => pulse_1s_i_5_n_0,
      I4 => pulse_1s_i_6_n_0,
      I5 => pulse_1s_i_7_n_0,
      O => pulse_1s_i_2_n_0
    );
pulse_1s_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => count_1hz_reg(21),
      I1 => count_1hz_reg(23),
      I2 => count_1hz_reg(22),
      I3 => count_1hz_reg(20),
      I4 => count_1hz_reg(24),
      O => pulse_1s_i_3_n_0
    );
pulse_1s_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_1hz_reg(13),
      I1 => count_1hz_reg(16),
      I2 => count_1hz_reg(14),
      I3 => count_1hz_reg(15),
      O => pulse_1s_i_4_n_0
    );
pulse_1s_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_1hz_reg(11),
      I1 => count_1hz_reg(12),
      I2 => count_1hz_reg(9),
      I3 => count_1hz_reg(8),
      I4 => count_1hz_reg(10),
      O => pulse_1s_i_5_n_0
    );
pulse_1s_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => count_1hz_reg(2),
      I1 => count_1hz_reg(3),
      I2 => count_1hz_reg(6),
      I3 => count_1hz_reg(0),
      O => pulse_1s_i_6_n_0
    );
pulse_1s_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_1hz_reg(5),
      I1 => count_1hz_reg(7),
      I2 => count_1hz_reg(1),
      I3 => count_1hz_reg(4),
      O => pulse_1s_i_7_n_0
    );
pulse_1s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => pulse_1s_i_1_n_0,
      Q => \^e\(0),
      R => '0'
    );
\timer_pause[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timer_pause_reg__0\(0),
      O => p_0_in(0)
    );
\timer_pause[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \timer_pause_reg__0\(0),
      I1 => \timer_pause_reg__0\(1),
      O => p_0_in(1)
    );
\timer_pause[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \timer_pause_reg__0\(2),
      I1 => \timer_pause_reg__0\(1),
      I2 => \timer_pause_reg__0\(0),
      O => p_0_in(2)
    );
\timer_pause[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \timer_pause_reg__0\(3),
      I1 => \timer_pause_reg__0\(2),
      I2 => \timer_pause_reg__0\(1),
      I3 => \timer_pause_reg__0\(0),
      O => p_0_in(3)
    );
\timer_pause[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \timer_pause_reg__0\(4),
      I1 => \timer_pause_reg__0\(3),
      I2 => \timer_pause_reg__0\(2),
      I3 => \timer_pause_reg__0\(1),
      I4 => \timer_pause_reg__0\(0),
      O => \timer_pause[4]_i_1_n_0\
    );
\timer_pause[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \timer_pause_reg__0\(5),
      I1 => \timer_pause_reg__0\(4),
      I2 => \timer_pause_reg__0\(0),
      I3 => \timer_pause_reg__0\(1),
      I4 => \timer_pause_reg__0\(2),
      I5 => \timer_pause_reg__0\(3),
      O => \timer_pause[5]_i_1_n_0\
    );
\timer_pause[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \timer_pause_reg__0\(6),
      I1 => \timer_pause_reg__0\(4),
      I2 => \timer_pause[8]_i_5_n_0\,
      I3 => \timer_pause_reg__0\(5),
      O => p_0_in(6)
    );
\timer_pause[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \timer_pause_reg__0\(5),
      I1 => \timer_pause[8]_i_5_n_0\,
      I2 => \timer_pause_reg__0\(4),
      I3 => \timer_pause_reg__0\(6),
      I4 => \timer_pause_reg__0\(7),
      O => p_0_in(7)
    );
\timer_pause[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Reset,
      I1 => \timer_pause[8]_i_4_n_0\,
      O => \timer_pause[8]_i_1_n_0\
    );
\timer_pause[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state_reg_n_0,
      I1 => \^e\(0),
      O => timer_pause
    );
\timer_pause[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \timer_pause_reg__0\(8),
      I1 => \timer_pause_reg__0\(5),
      I2 => \timer_pause[8]_i_5_n_0\,
      I3 => \timer_pause_reg__0\(4),
      I4 => \timer_pause_reg__0\(6),
      I5 => \timer_pause_reg__0\(7),
      O => p_0_in(8)
    );
\timer_pause[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00000000000000"
    )
        port map (
      I0 => \timer_pause[8]_i_6_n_0\,
      I1 => \timer_pause_reg__0\(6),
      I2 => \timer_pause_reg__0\(7),
      I3 => current_state_reg_n_0,
      I4 => \^e\(0),
      I5 => \timer_pause_reg__0\(8),
      O => \timer_pause[8]_i_4_n_0\
    );
\timer_pause[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \timer_pause_reg__0\(0),
      I1 => \timer_pause_reg__0\(1),
      I2 => \timer_pause_reg__0\(2),
      I3 => \timer_pause_reg__0\(3),
      O => \timer_pause[8]_i_5_n_0\
    );
\timer_pause[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000557FFFFFFFFF"
    )
        port map (
      I0 => \timer_pause_reg__0\(3),
      I1 => \timer_pause_reg__0\(0),
      I2 => \timer_pause_reg__0\(1),
      I3 => \timer_pause_reg__0\(2),
      I4 => \timer_pause_reg__0\(4),
      I5 => \timer_pause_reg__0\(5),
      O => \timer_pause[8]_i_6_n_0\
    );
\timer_pause_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => p_0_in(0),
      Q => \timer_pause_reg__0\(0),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_pause_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => p_0_in(1),
      Q => \timer_pause_reg__0\(1),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_pause_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => p_0_in(2),
      Q => \timer_pause_reg__0\(2),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_pause_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => p_0_in(3),
      Q => \timer_pause_reg__0\(3),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_pause_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => \timer_pause[4]_i_1_n_0\,
      Q => \timer_pause_reg__0\(4),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_pause_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => \timer_pause[5]_i_1_n_0\,
      Q => \timer_pause_reg__0\(5),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_pause_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => p_0_in(6),
      Q => \timer_pause_reg__0\(6),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_pause_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => p_0_in(7),
      Q => \timer_pause_reg__0\(7),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_pause_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_pause,
      D => p_0_in(8),
      Q => \timer_pause_reg__0\(8),
      R => \timer_pause[8]_i_1_n_0\
    );
\timer_sec[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timer_sec_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\timer_sec[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \timer_sec_reg__0\(0),
      I1 => \timer_sec_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\timer_sec[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \timer_sec_reg__0\(2),
      I1 => \timer_sec_reg__0\(1),
      I2 => \timer_sec_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\timer_sec[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \timer_sec_reg__0\(3),
      I1 => \timer_sec_reg__0\(0),
      I2 => \timer_sec_reg__0\(1),
      I3 => \timer_sec_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\timer_sec[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \timer_sec_reg__0\(4),
      I1 => \timer_sec_reg__0\(2),
      I2 => \timer_sec_reg__0\(1),
      I3 => \timer_sec_reg__0\(0),
      I4 => \timer_sec_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\timer_sec[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Reset,
      I1 => \k[2]_i_2_n_0\,
      O => \timer_sec[5]_i_1_n_0\
    );
\timer_sec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \timer_sec_reg__0\(5),
      I1 => \timer_sec_reg__0\(3),
      I2 => \timer_sec_reg__0\(4),
      I3 => \timer_sec_reg__0\(2),
      I4 => \timer_sec_reg__0\(1),
      I5 => \timer_sec_reg__0\(0),
      O => \p_0_in__0\(5)
    );
\timer_sec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_sec,
      D => \p_0_in__0\(0),
      Q => \timer_sec_reg__0\(0),
      R => \timer_sec[5]_i_1_n_0\
    );
\timer_sec_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_sec,
      D => \p_0_in__0\(1),
      Q => \timer_sec_reg__0\(1),
      R => \timer_sec[5]_i_1_n_0\
    );
\timer_sec_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_sec,
      D => \p_0_in__0\(2),
      Q => \timer_sec_reg__0\(2),
      R => \timer_sec[5]_i_1_n_0\
    );
\timer_sec_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_sec,
      D => \p_0_in__0\(3),
      Q => \timer_sec_reg__0\(3),
      R => \timer_sec[5]_i_1_n_0\
    );
\timer_sec_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_sec,
      D => \p_0_in__0\(4),
      Q => \timer_sec_reg__0\(4),
      R => \timer_sec[5]_i_1_n_0\
    );
\timer_sec_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => timer_sec,
      D => \p_0_in__0\(5),
      Q => \timer_sec_reg__0\(5),
      R => \timer_sec[5]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_mode_0_1 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CE_1Hz : out STD_LOGIC;
    Mode : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Reset_RO : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Ro_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Send : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mesure_Gen_mode_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mesure_Gen_mode_0_1 : entity is "mesure_Gen_mode_0_1,Gen_mode,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mesure_Gen_mode_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of mesure_Gen_mode_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of mesure_Gen_mode_0_1 : entity is "Gen_mode,Vivado 2018.3";
end mesure_Gen_mode_0_1;

architecture STRUCTURE of mesure_Gen_mode_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mesure_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.mesure_Gen_mode_0_1_Gen_mode
     port map (
      Clk => Clk,
      E(0) => CE_1Hz,
      Mode(5 downto 0) => Mode(5 downto 0),
      Q(2 downto 0) => Ro_sel(2 downto 0),
      Reset => Reset,
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Send => Send
    );
end STRUCTURE;
