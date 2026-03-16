----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 10.03.2026 11:28:32
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: Gen_mode - Behavioral
-- Project Name: Circuit de mesure de 3 ROs 
-- Target Devices: Zynq UltraScale +
-- Tool Versions: Vivado 2018.3
-- Description: 
-- Ce module est le "Top Level". Il orchestre la génération des signaux de contrôle 
-- pour la mesure du vieillissement ou de la variabilité des ROs.
-- 
-- Fonctions principales :
-- 1. Divise l'horloge système à 1Hz (via Generateur_signal_1Hz).
-- 2. Gère un cycle global de 10 min (300s Mesure / 300s Repos du système global via Counter_mode).
-- 3. Séquence l'activation individuelle des 6 ROs (via State_machine_mode).
-- 
-- Hiérarchie : 
--    Gen_mode (Top)
--       ??? I_Generateur_signal_1Hz : horloge de référence 1 seconde
--       ??? I_Counter_mode          : gestion du cycle ON/OFF global
--       ??? I_State_machine_mode    : automate de séquençage des mesures
-- 
-- Dependencies: Generateur_signal_1Hz, Counter_mode, State_machine_mode
-- 
-- Revision: version 1.0
-- Revision 0.01 - File Created
-- Additional Comments: Code validé avec interconnexion des 3 sous-modules
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gen_mode is
    Generic (
        CLK_FREQ : integer := 100000000;
        RISING_EDGE_DURATION : integer := 300; 
        TOTAL_DURATION       : integer := 600;
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
    );
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           CE_1Hz : out STD_LOGIC;
           Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           RO_sel   : out STD_LOGIC_VECTOR(2 downto 0); 
           Send     : out STD_LOGIC 
   );
end Gen_mode;

architecture Behavioral of Gen_mode is

Component Generateur_signal_1Hz is
    Generic (
        CLK_FREQ : integer := 100000000 
    );
    Port ( 
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC;
        CE_1HZ   : out STD_LOGIC
    );
end Component;

Component Counter_mode is
generic (
        RISING_EDGE_DURATION : integer := 300; 
        TOTAL_DURATION       : integer := 600
    );
    Port ( Clk    : in  STD_LOGIC;
           Reset  : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Mode_G : out STD_LOGIC);
end Component;

Component State_machine_mode is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
    );
    Port ( 
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC; 
        Mode_G   : in  STD_LOGIC; 
        CE_1Hz   : in  STD_LOGIC; 
        Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        RO_sel   : out STD_LOGIC_VECTOR(2 downto 0); 
        Send     : out STD_LOGIC 
    );
end Component;

signal Mode_G_int : STD_LOGIC;
signal CE_1Hz_int : STD_LOGIC;

begin

I_Generateur_signal_1Hz : Generateur_signal_1Hz
 Generic map
(
   CLK_FREQ =>  CLK_FREQ
)
 port map
(
    Clk => Clk,
    Reset => Reset,
    CE_1Hz => CE_1Hz_int
);

I_Counter_mode: Counter_mode 
 Generic map
(
   RISING_EDGE_DURATION => RISING_EDGE_DURATION,
   TOTAL_DURATION => TOTAL_DURATION
)
port map
(
    Clk => Clk,
    Reset => Reset,
    ENABLE => CE_1Hz_int,
    Mode_G => Mode_G_int
);

I_State_machine_mode: State_machine_mode 
 Generic map
(
   Architecture_number => Architecture_number,
   RO_by_architecture => RO_by_architecture
)
port map
(
   Clk  =>  Clk,
   Reset => Reset,
   Mode_G =>  Mode_G_int,
   CE_1Hz  => CE_1Hz_int,
   Mode   => Mode,
   Reset_RO => Reset_RO,
   RO_sel =>  RO_sel,
   Send  =>  Send
);
end Behavioral;
