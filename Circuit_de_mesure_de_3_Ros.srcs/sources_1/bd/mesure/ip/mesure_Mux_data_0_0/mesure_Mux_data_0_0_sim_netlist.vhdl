-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Mar 20 14:06:47 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Mux_data_0_0/mesure_Mux_data_0_0_sim_netlist.vhdl
-- Design      : mesure_Mux_data_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Mux_data_0_0 is
  port (
    Data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    Sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mesure_Mux_data_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mesure_Mux_data_0_0 : entity is "mesure_Mux_data_0_0,Mux_data,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mesure_Mux_data_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of mesure_Mux_data_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of mesure_Mux_data_0_0 : entity is "Mux_data,Vivado 2018.3";
end mesure_Mux_data_0_0;

architecture STRUCTURE of mesure_Mux_data_0_0 is
  signal \Data_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data_out[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Data_out[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Data_out[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Data_out[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Data_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data_out[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Data_out[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Data_out[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Data_out[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Data_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data_out[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Data_out[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Data_out[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Data_out[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Data_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data_out[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Data_out[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Data_out[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Data_out[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Data_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data_out[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Data_out[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Data_out[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Data_out[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Data_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data_out[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Data_out[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Data_out[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Data_out[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Data_out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data_out[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Data_out[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Data_out[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Data_out[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Data_out[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data_out[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Data_out[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Data_out[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Data_out[7]_INST_0_i_5_n_0\ : STD_LOGIC;
begin
\Data_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \Data_out[0]_INST_0_i_1_n_0\,
      I1 => Sel(2),
      I2 => \Data_out[0]_INST_0_i_2_n_0\,
      I3 => Sel(3),
      I4 => \Data_out[0]_INST_0_i_3_n_0\,
      I5 => Sel(4),
      O => Data_out(0)
    );
\Data_out[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(120),
      I1 => Data_in(112),
      I2 => Sel(1),
      I3 => Data_in(104),
      I4 => Sel(0),
      I5 => Data_in(96),
      O => \Data_out[0]_INST_0_i_1_n_0\
    );
\Data_out[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(88),
      I1 => Data_in(80),
      I2 => Sel(1),
      I3 => Data_in(72),
      I4 => Sel(0),
      I5 => Data_in(64),
      O => \Data_out[0]_INST_0_i_2_n_0\
    );
\Data_out[0]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Data_out[0]_INST_0_i_4_n_0\,
      I1 => \Data_out[0]_INST_0_i_5_n_0\,
      O => \Data_out[0]_INST_0_i_3_n_0\,
      S => Sel(2)
    );
\Data_out[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(24),
      I1 => Data_in(16),
      I2 => Sel(1),
      I3 => Data_in(8),
      I4 => Sel(0),
      I5 => Data_in(0),
      O => \Data_out[0]_INST_0_i_4_n_0\
    );
\Data_out[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(56),
      I1 => Data_in(48),
      I2 => Sel(1),
      I3 => Data_in(40),
      I4 => Sel(0),
      I5 => Data_in(32),
      O => \Data_out[0]_INST_0_i_5_n_0\
    );
\Data_out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \Data_out[1]_INST_0_i_1_n_0\,
      I1 => Sel(2),
      I2 => \Data_out[1]_INST_0_i_2_n_0\,
      I3 => Sel(3),
      I4 => \Data_out[1]_INST_0_i_3_n_0\,
      I5 => Sel(4),
      O => Data_out(1)
    );
\Data_out[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(121),
      I1 => Data_in(113),
      I2 => Sel(1),
      I3 => Data_in(105),
      I4 => Sel(0),
      I5 => Data_in(97),
      O => \Data_out[1]_INST_0_i_1_n_0\
    );
\Data_out[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(89),
      I1 => Data_in(81),
      I2 => Sel(1),
      I3 => Data_in(73),
      I4 => Sel(0),
      I5 => Data_in(65),
      O => \Data_out[1]_INST_0_i_2_n_0\
    );
\Data_out[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Data_out[1]_INST_0_i_4_n_0\,
      I1 => \Data_out[1]_INST_0_i_5_n_0\,
      O => \Data_out[1]_INST_0_i_3_n_0\,
      S => Sel(2)
    );
\Data_out[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(25),
      I1 => Data_in(17),
      I2 => Sel(1),
      I3 => Data_in(9),
      I4 => Sel(0),
      I5 => Data_in(1),
      O => \Data_out[1]_INST_0_i_4_n_0\
    );
\Data_out[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(57),
      I1 => Data_in(49),
      I2 => Sel(1),
      I3 => Data_in(41),
      I4 => Sel(0),
      I5 => Data_in(33),
      O => \Data_out[1]_INST_0_i_5_n_0\
    );
\Data_out[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \Data_out[2]_INST_0_i_1_n_0\,
      I1 => Sel(2),
      I2 => \Data_out[2]_INST_0_i_2_n_0\,
      I3 => Sel(3),
      I4 => \Data_out[2]_INST_0_i_3_n_0\,
      I5 => Sel(4),
      O => Data_out(2)
    );
\Data_out[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(122),
      I1 => Data_in(114),
      I2 => Sel(1),
      I3 => Data_in(106),
      I4 => Sel(0),
      I5 => Data_in(98),
      O => \Data_out[2]_INST_0_i_1_n_0\
    );
\Data_out[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(90),
      I1 => Data_in(82),
      I2 => Sel(1),
      I3 => Data_in(74),
      I4 => Sel(0),
      I5 => Data_in(66),
      O => \Data_out[2]_INST_0_i_2_n_0\
    );
\Data_out[2]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Data_out[2]_INST_0_i_4_n_0\,
      I1 => \Data_out[2]_INST_0_i_5_n_0\,
      O => \Data_out[2]_INST_0_i_3_n_0\,
      S => Sel(2)
    );
\Data_out[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(26),
      I1 => Data_in(18),
      I2 => Sel(1),
      I3 => Data_in(10),
      I4 => Sel(0),
      I5 => Data_in(2),
      O => \Data_out[2]_INST_0_i_4_n_0\
    );
\Data_out[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(58),
      I1 => Data_in(50),
      I2 => Sel(1),
      I3 => Data_in(42),
      I4 => Sel(0),
      I5 => Data_in(34),
      O => \Data_out[2]_INST_0_i_5_n_0\
    );
\Data_out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \Data_out[3]_INST_0_i_1_n_0\,
      I1 => Sel(2),
      I2 => \Data_out[3]_INST_0_i_2_n_0\,
      I3 => Sel(3),
      I4 => \Data_out[3]_INST_0_i_3_n_0\,
      I5 => Sel(4),
      O => Data_out(3)
    );
\Data_out[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(123),
      I1 => Data_in(115),
      I2 => Sel(1),
      I3 => Data_in(107),
      I4 => Sel(0),
      I5 => Data_in(99),
      O => \Data_out[3]_INST_0_i_1_n_0\
    );
\Data_out[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(91),
      I1 => Data_in(83),
      I2 => Sel(1),
      I3 => Data_in(75),
      I4 => Sel(0),
      I5 => Data_in(67),
      O => \Data_out[3]_INST_0_i_2_n_0\
    );
\Data_out[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Data_out[3]_INST_0_i_4_n_0\,
      I1 => \Data_out[3]_INST_0_i_5_n_0\,
      O => \Data_out[3]_INST_0_i_3_n_0\,
      S => Sel(2)
    );
\Data_out[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(27),
      I1 => Data_in(19),
      I2 => Sel(1),
      I3 => Data_in(11),
      I4 => Sel(0),
      I5 => Data_in(3),
      O => \Data_out[3]_INST_0_i_4_n_0\
    );
\Data_out[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(59),
      I1 => Data_in(51),
      I2 => Sel(1),
      I3 => Data_in(43),
      I4 => Sel(0),
      I5 => Data_in(35),
      O => \Data_out[3]_INST_0_i_5_n_0\
    );
\Data_out[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \Data_out[4]_INST_0_i_1_n_0\,
      I1 => Sel(2),
      I2 => \Data_out[4]_INST_0_i_2_n_0\,
      I3 => Sel(3),
      I4 => \Data_out[4]_INST_0_i_3_n_0\,
      I5 => Sel(4),
      O => Data_out(4)
    );
\Data_out[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(124),
      I1 => Data_in(116),
      I2 => Sel(1),
      I3 => Data_in(108),
      I4 => Sel(0),
      I5 => Data_in(100),
      O => \Data_out[4]_INST_0_i_1_n_0\
    );
\Data_out[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(92),
      I1 => Data_in(84),
      I2 => Sel(1),
      I3 => Data_in(76),
      I4 => Sel(0),
      I5 => Data_in(68),
      O => \Data_out[4]_INST_0_i_2_n_0\
    );
\Data_out[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Data_out[4]_INST_0_i_4_n_0\,
      I1 => \Data_out[4]_INST_0_i_5_n_0\,
      O => \Data_out[4]_INST_0_i_3_n_0\,
      S => Sel(2)
    );
\Data_out[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(28),
      I1 => Data_in(20),
      I2 => Sel(1),
      I3 => Data_in(12),
      I4 => Sel(0),
      I5 => Data_in(4),
      O => \Data_out[4]_INST_0_i_4_n_0\
    );
\Data_out[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(60),
      I1 => Data_in(52),
      I2 => Sel(1),
      I3 => Data_in(44),
      I4 => Sel(0),
      I5 => Data_in(36),
      O => \Data_out[4]_INST_0_i_5_n_0\
    );
\Data_out[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \Data_out[5]_INST_0_i_1_n_0\,
      I1 => Sel(2),
      I2 => \Data_out[5]_INST_0_i_2_n_0\,
      I3 => Sel(3),
      I4 => \Data_out[5]_INST_0_i_3_n_0\,
      I5 => Sel(4),
      O => Data_out(5)
    );
\Data_out[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(125),
      I1 => Data_in(117),
      I2 => Sel(1),
      I3 => Data_in(109),
      I4 => Sel(0),
      I5 => Data_in(101),
      O => \Data_out[5]_INST_0_i_1_n_0\
    );
\Data_out[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(93),
      I1 => Data_in(85),
      I2 => Sel(1),
      I3 => Data_in(77),
      I4 => Sel(0),
      I5 => Data_in(69),
      O => \Data_out[5]_INST_0_i_2_n_0\
    );
\Data_out[5]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Data_out[5]_INST_0_i_4_n_0\,
      I1 => \Data_out[5]_INST_0_i_5_n_0\,
      O => \Data_out[5]_INST_0_i_3_n_0\,
      S => Sel(2)
    );
\Data_out[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(29),
      I1 => Data_in(21),
      I2 => Sel(1),
      I3 => Data_in(13),
      I4 => Sel(0),
      I5 => Data_in(5),
      O => \Data_out[5]_INST_0_i_4_n_0\
    );
\Data_out[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(61),
      I1 => Data_in(53),
      I2 => Sel(1),
      I3 => Data_in(45),
      I4 => Sel(0),
      I5 => Data_in(37),
      O => \Data_out[5]_INST_0_i_5_n_0\
    );
\Data_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \Data_out[6]_INST_0_i_1_n_0\,
      I1 => Sel(2),
      I2 => \Data_out[6]_INST_0_i_2_n_0\,
      I3 => Sel(3),
      I4 => \Data_out[6]_INST_0_i_3_n_0\,
      I5 => Sel(4),
      O => Data_out(6)
    );
\Data_out[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(126),
      I1 => Data_in(118),
      I2 => Sel(1),
      I3 => Data_in(110),
      I4 => Sel(0),
      I5 => Data_in(102),
      O => \Data_out[6]_INST_0_i_1_n_0\
    );
\Data_out[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(94),
      I1 => Data_in(86),
      I2 => Sel(1),
      I3 => Data_in(78),
      I4 => Sel(0),
      I5 => Data_in(70),
      O => \Data_out[6]_INST_0_i_2_n_0\
    );
\Data_out[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Data_out[6]_INST_0_i_4_n_0\,
      I1 => \Data_out[6]_INST_0_i_5_n_0\,
      O => \Data_out[6]_INST_0_i_3_n_0\,
      S => Sel(2)
    );
\Data_out[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(30),
      I1 => Data_in(22),
      I2 => Sel(1),
      I3 => Data_in(14),
      I4 => Sel(0),
      I5 => Data_in(6),
      O => \Data_out[6]_INST_0_i_4_n_0\
    );
\Data_out[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(62),
      I1 => Data_in(54),
      I2 => Sel(1),
      I3 => Data_in(46),
      I4 => Sel(0),
      I5 => Data_in(38),
      O => \Data_out[6]_INST_0_i_5_n_0\
    );
\Data_out[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \Data_out[7]_INST_0_i_1_n_0\,
      I1 => Sel(2),
      I2 => \Data_out[7]_INST_0_i_2_n_0\,
      I3 => Sel(3),
      I4 => \Data_out[7]_INST_0_i_3_n_0\,
      I5 => Sel(4),
      O => Data_out(7)
    );
\Data_out[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(127),
      I1 => Data_in(119),
      I2 => Sel(1),
      I3 => Data_in(111),
      I4 => Sel(0),
      I5 => Data_in(103),
      O => \Data_out[7]_INST_0_i_1_n_0\
    );
\Data_out[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(95),
      I1 => Data_in(87),
      I2 => Sel(1),
      I3 => Data_in(79),
      I4 => Sel(0),
      I5 => Data_in(71),
      O => \Data_out[7]_INST_0_i_2_n_0\
    );
\Data_out[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Data_out[7]_INST_0_i_4_n_0\,
      I1 => \Data_out[7]_INST_0_i_5_n_0\,
      O => \Data_out[7]_INST_0_i_3_n_0\,
      S => Sel(2)
    );
\Data_out[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(31),
      I1 => Data_in(23),
      I2 => Sel(1),
      I3 => Data_in(15),
      I4 => Sel(0),
      I5 => Data_in(7),
      O => \Data_out[7]_INST_0_i_4_n_0\
    );
\Data_out[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Data_in(63),
      I1 => Data_in(55),
      I2 => Sel(1),
      I3 => Data_in(47),
      I4 => Sel(0),
      I5 => Data_in(39),
      O => \Data_out[7]_INST_0_i_5_n_0\
    );
end STRUCTURE;
