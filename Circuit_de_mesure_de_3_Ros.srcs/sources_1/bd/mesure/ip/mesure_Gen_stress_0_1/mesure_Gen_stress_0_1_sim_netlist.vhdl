-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Mar 12 17:04:34 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Gen_stress_0_1/mesure_Gen_stress_0_1_sim_netlist.vhdl
-- Design      : mesure_Gen_stress_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_stress_0_1_Clock_Diviser is
  port (
    Stress : out STD_LOGIC_VECTOR ( 0 to 0 );
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Gen_stress_0_1_Clock_Diviser : entity is "Clock_Diviser";
end mesure_Gen_stress_0_1_Clock_Diviser;

architecture STRUCTURE of mesure_Gen_stress_0_1_Clock_Diviser is
  signal Clk_out_i_1_n_0 : STD_LOGIC;
  signal Clk_out_i_2_n_0 : STD_LOGIC;
  signal Clk_out_i_3_n_0 : STD_LOGIC;
  signal Clk_out_i_4_n_0 : STD_LOGIC;
  signal \S[0]_i_1_n_0\ : STD_LOGIC;
  signal \S[0]_i_3_n_0\ : STD_LOGIC;
  signal \S[0]_i_4_n_0\ : STD_LOGIC;
  signal \S[0]_i_5_n_0\ : STD_LOGIC;
  signal \S[0]_i_6_n_0\ : STD_LOGIC;
  signal \S[0]_i_7_n_0\ : STD_LOGIC;
  signal S_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \S_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_S_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_S_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Clk_out_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[0]_i_4\ : label is "soft_lutpair0";
begin
Clk_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEAFF"
    )
        port map (
      I0 => Clk_out_i_2_n_0,
      I1 => Clk_out_i_3_n_0,
      I2 => Clk_out_i_4_n_0,
      I3 => S_reg(13),
      I4 => S_reg(19),
      I5 => S_reg(14),
      O => Clk_out_i_1_n_0
    );
Clk_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAFAFAFAFAFAFAF"
    )
        port map (
      I0 => Reset,
      I1 => S_reg(15),
      I2 => S_reg(19),
      I3 => S_reg(17),
      I4 => S_reg(16),
      I5 => S_reg(18),
      O => Clk_out_i_2_n_0
    );
Clk_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => S_reg(5),
      I1 => S_reg(6),
      I2 => S_reg(7),
      I3 => S_reg(8),
      O => Clk_out_i_3_n_0
    );
Clk_out_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => S_reg(10),
      I1 => S_reg(9),
      I2 => S_reg(12),
      I3 => S_reg(11),
      O => Clk_out_i_4_n_0
    );
Clk_out_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => Clk_out_i_1_n_0,
      Q => Stress(0),
      R => '0'
    );
\S[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABBFBFBFB"
    )
        port map (
      I0 => Reset,
      I1 => \S[0]_i_3_n_0\,
      I2 => S_reg(9),
      I3 => \S[0]_i_4_n_0\,
      I4 => \S[0]_i_5_n_0\,
      I5 => \S[0]_i_6_n_0\,
      O => \S[0]_i_1_n_0\
    );
\S[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => S_reg(15),
      I1 => S_reg(10),
      I2 => S_reg(11),
      I3 => S_reg(13),
      I4 => S_reg(12),
      O => \S[0]_i_3_n_0\
    );
\S[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => S_reg(8),
      I1 => S_reg(7),
      I2 => S_reg(6),
      O => \S[0]_i_4_n_0\
    );
\S[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => S_reg(2),
      I1 => S_reg(3),
      I2 => S_reg(4),
      I3 => S_reg(5),
      I4 => S_reg(1),
      I5 => S_reg(0),
      O => \S[0]_i_5_n_0\
    );
\S[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FFFFFFFFFFFFFF"
    )
        port map (
      I0 => S_reg(19),
      I1 => S_reg(15),
      I2 => S_reg(14),
      I3 => S_reg(18),
      I4 => S_reg(16),
      I5 => S_reg(17),
      O => \S[0]_i_6_n_0\
    );
\S[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_reg(0),
      O => \S[0]_i_7_n_0\
    );
\S_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[0]_i_2_n_15\,
      Q => S_reg(0),
      R => \S[0]_i_1_n_0\
    );
\S_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \S_reg[0]_i_2_n_0\,
      CO(6) => \S_reg[0]_i_2_n_1\,
      CO(5) => \S_reg[0]_i_2_n_2\,
      CO(4) => \S_reg[0]_i_2_n_3\,
      CO(3) => \S_reg[0]_i_2_n_4\,
      CO(2) => \S_reg[0]_i_2_n_5\,
      CO(1) => \S_reg[0]_i_2_n_6\,
      CO(0) => \S_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \S_reg[0]_i_2_n_8\,
      O(6) => \S_reg[0]_i_2_n_9\,
      O(5) => \S_reg[0]_i_2_n_10\,
      O(4) => \S_reg[0]_i_2_n_11\,
      O(3) => \S_reg[0]_i_2_n_12\,
      O(2) => \S_reg[0]_i_2_n_13\,
      O(1) => \S_reg[0]_i_2_n_14\,
      O(0) => \S_reg[0]_i_2_n_15\,
      S(7 downto 1) => S_reg(7 downto 1),
      S(0) => \S[0]_i_7_n_0\
    );
\S_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[8]_i_1_n_13\,
      Q => S_reg(10),
      R => \S[0]_i_1_n_0\
    );
\S_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[8]_i_1_n_12\,
      Q => S_reg(11),
      R => \S[0]_i_1_n_0\
    );
\S_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[8]_i_1_n_11\,
      Q => S_reg(12),
      R => \S[0]_i_1_n_0\
    );
\S_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[8]_i_1_n_10\,
      Q => S_reg(13),
      R => \S[0]_i_1_n_0\
    );
\S_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[8]_i_1_n_9\,
      Q => S_reg(14),
      R => \S[0]_i_1_n_0\
    );
\S_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[8]_i_1_n_8\,
      Q => S_reg(15),
      R => \S[0]_i_1_n_0\
    );
\S_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[16]_i_1_n_15\,
      Q => S_reg(16),
      R => \S[0]_i_1_n_0\
    );
\S_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_S_reg[16]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \S_reg[16]_i_1_n_5\,
      CO(1) => \S_reg[16]_i_1_n_6\,
      CO(0) => \S_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_S_reg[16]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \S_reg[16]_i_1_n_12\,
      O(2) => \S_reg[16]_i_1_n_13\,
      O(1) => \S_reg[16]_i_1_n_14\,
      O(0) => \S_reg[16]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => S_reg(19 downto 16)
    );
\S_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[16]_i_1_n_14\,
      Q => S_reg(17),
      R => \S[0]_i_1_n_0\
    );
\S_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[16]_i_1_n_13\,
      Q => S_reg(18),
      R => \S[0]_i_1_n_0\
    );
\S_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[16]_i_1_n_12\,
      Q => S_reg(19),
      R => \S[0]_i_1_n_0\
    );
\S_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[0]_i_2_n_14\,
      Q => S_reg(1),
      R => \S[0]_i_1_n_0\
    );
\S_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[0]_i_2_n_13\,
      Q => S_reg(2),
      R => \S[0]_i_1_n_0\
    );
\S_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[0]_i_2_n_12\,
      Q => S_reg(3),
      R => \S[0]_i_1_n_0\
    );
\S_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[0]_i_2_n_11\,
      Q => S_reg(4),
      R => \S[0]_i_1_n_0\
    );
\S_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[0]_i_2_n_10\,
      Q => S_reg(5),
      R => \S[0]_i_1_n_0\
    );
\S_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[0]_i_2_n_9\,
      Q => S_reg(6),
      R => \S[0]_i_1_n_0\
    );
\S_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[0]_i_2_n_8\,
      Q => S_reg(7),
      R => \S[0]_i_1_n_0\
    );
\S_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[8]_i_1_n_15\,
      Q => S_reg(8),
      R => \S[0]_i_1_n_0\
    );
\S_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[8]_i_1_n_0\,
      CO(6) => \S_reg[8]_i_1_n_1\,
      CO(5) => \S_reg[8]_i_1_n_2\,
      CO(4) => \S_reg[8]_i_1_n_3\,
      CO(3) => \S_reg[8]_i_1_n_4\,
      CO(2) => \S_reg[8]_i_1_n_5\,
      CO(1) => \S_reg[8]_i_1_n_6\,
      CO(0) => \S_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[8]_i_1_n_8\,
      O(6) => \S_reg[8]_i_1_n_9\,
      O(5) => \S_reg[8]_i_1_n_10\,
      O(4) => \S_reg[8]_i_1_n_11\,
      O(3) => \S_reg[8]_i_1_n_12\,
      O(2) => \S_reg[8]_i_1_n_13\,
      O(1) => \S_reg[8]_i_1_n_14\,
      O(0) => \S_reg[8]_i_1_n_15\,
      S(7 downto 0) => S_reg(15 downto 8)
    );
\S_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \S_reg[8]_i_1_n_14\,
      Q => S_reg(9),
      R => \S[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_stress_0_1_Stress_100Hz is
  port (
    Stress : out STD_LOGIC_VECTOR ( 0 to 0 );
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Gen_stress_0_1_Stress_100Hz : entity is "Stress_100Hz";
end mesure_Gen_stress_0_1_Stress_100Hz;

architecture STRUCTURE of mesure_Gen_stress_0_1_Stress_100Hz is
begin
I_Clock_Diviser: entity work.mesure_Gen_stress_0_1_Clock_Diviser
     port map (
      Clk => Clk,
      Reset => Reset,
      Stress(0) => Stress(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_stress_0_1_Gen_stress is
  port (
    Stress : out STD_LOGIC_VECTOR ( 0 to 0 );
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Gen_stress_0_1_Gen_stress : entity is "Gen_stress";
end mesure_Gen_stress_0_1_Gen_stress;

architecture STRUCTURE of mesure_Gen_stress_0_1_Gen_stress is
begin
I_Stress_100Hz: entity work.mesure_Gen_stress_0_1_Stress_100Hz
     port map (
      Clk => Clk,
      Reset => Reset,
      Stress(0) => Stress(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_stress_0_1 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Stress : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mesure_Gen_stress_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mesure_Gen_stress_0_1 : entity is "mesure_Gen_stress_0_1,Gen_stress,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mesure_Gen_stress_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of mesure_Gen_stress_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of mesure_Gen_stress_0_1 : entity is "Gen_stress,Vivado 2018.3";
end mesure_Gen_stress_0_1;

architecture STRUCTURE of mesure_Gen_stress_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal \^stress\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mesure_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  Stress(3) <= \^clk\;
  Stress(2) <= \^stress\(2);
  Stress(1) <= \<const1>\;
  Stress(0) <= \<const0>\;
  \^clk\ <= Clk;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.mesure_Gen_stress_0_1_Gen_stress
     port map (
      Clk => \^clk\,
      Reset => Reset,
      Stress(0) => \^stress\(2)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
