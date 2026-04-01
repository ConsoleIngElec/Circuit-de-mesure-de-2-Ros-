----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 26.03.2026 15:38:35
-- Design Name: Circuit de mesure de 3 Ros
-- Module Name: Temp_Voltage_Avarage - Behavioral
-- Project Name: Circuit de mesure de 3 Ros 
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3.1
-- Description: 
-- Ce module effectue un filtrage par moyenne glissante pour la température (SD1)
-- et la tension (SD2) issues du SYSMON.
-- Configuration actuelle : N=13, soit une moyenne sur 8192 points.
-- Objectif : Fixer les valeurs pour éliminer les oscillations résiduelles.
-- 
-- Dependencies: Sliding_Average.vhd
-- 
-- Revision:
-- Revision 1.0 - Code complet avec instances en cascade
-- Additional Comments:
--     Les signaux SS1 et SS2 servent d'horloges de validation (Enable) pour 
--     garantir que chaque filtre ne traite que ses propres données.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Temp_Voltage_Average is
    Port ( 
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC;
        SD1      : in  STD_LOGIC_VECTOR (15 downto 0); -- Donnée brute Température
        SD2      : in  STD_LOGIC_VECTOR (15 downto 0); -- Donnée brute Voltage
        SS1      : in  STD_LOGIC;                      -- Validation Température
        SS2      : in  STD_LOGIC;                      -- Validation Voltage    
        -- Sorties Température
        Temp    : out STD_LOGIC_VECTOR (15 downto 0); -- Température en sortie moyennée 
        Voltage : out STD_LOGIC_VECTOR (15 downto 0)  -- Tension en sortie moyennée
    );
end Temp_Voltage_Average;

architecture Behavioral of Temp_Voltage_Average is

component Sliding_Average
        generic (
            N : integer := 10;
            DATA_WIDTH : integer := 16
        );
        port (
            Clk          : in  STD_LOGIC;
            Reset        : in  STD_LOGIC;
            Enable       : in  STD_LOGIC;
            Data         : in  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
            Data_Average : out STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0)
        );
    end component;

begin

    ------------------------------------------------------------------------------
    -- CHAÎNE TEMPÉRATURE (Canal 1)
    -- Filtrage profond sur 8192 points pour stabiliser la température 
    ------------------------------------------------------------------------------
    
   
    I_Temp_Average_N10 : Sliding_Average
        generic map (
            N          => 10,
            DATA_WIDTH => 16
        )
        port map (
            Clk          => Clk,
            Reset        => Reset,
            Enable       => SS1,
            Data         => SD1,
            Data_Average => Temp 
        );

    ------------------------------------------------------------------------------
    -- CHAÎNE VOLTAGE (Canal 2)
    -- Filtrage profond sur 8192 points pour stabiliser la mesure VCCINT
    ------------------------------------------------------------------------------

    -- Premier étage Voltage : N=10 (1024 points)
    I_Voltage_Average_N10 : Sliding_Average
        generic map (
            N          => 10,
            DATA_WIDTH => 16
        )
        port map (
            Clk          => Clk,
            Reset        => Reset,
            Enable       => SS2,
            Data         => SD2,
            Data_Average => Voltage
        );


end Behavioral;