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
--     Ce module effectue un double filtrage en cascade pour la température (SD1)
--     et la tension (SD2). 
--     - Étage 1 (N=10) : Fournit une moyenne sur 1024 points (Temp1 / Voltage1).
--     - Étage 2 (N=3)  : Applique un lissage supplémentaire sur le premier étage
--                        pour obtenir une stabilité de 8192 points (Temp2 / Voltage2).
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

entity Temp_Voltage_Avarage is
    Port ( 
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC;
        SD1      : in  STD_LOGIC_VECTOR (15 downto 0); -- Donnée brute Température
        SD2      : in  STD_LOGIC_VECTOR (15 downto 0); -- Donnée brute Voltage
        SS1      : in  STD_LOGIC;                      -- Validation Température
        SS2      : in  STD_LOGIC;                      -- Validation Voltage    
        -- Sorties Température
        Temp1    : out STD_LOGIC_VECTOR (15 downto 0); -- N=10 (Contrôle/Asservissement)
        Temp2    : out STD_LOGIC_VECTOR (15 downto 0); -- N=13 (Affichage stable)
        -- Sorties Voltage
        Voltage1 : out STD_LOGIC_VECTOR (15 downto 0); -- N=10 (Contrôle/Asservissement)
        Voltage2 : out STD_LOGIC_VECTOR (15 downto 0)  -- N=13 (Affichage stable)
    );
end Temp_Voltage_Avarage;

architecture Behavioral of Temp_Voltage_Avarage is

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

    -- Signaux internes pour la liaison entre l'étage N=10 et l'étage N=3
    signal sig_temp_n10 : std_logic_vector(15 downto 0);
    signal sig_volt_n10 : std_logic_vector(15 downto 0);

begin

    ------------------------------------------------------------------------------
    -- CHAÎNE TEMPÉRATURE (Canal 1)
    ------------------------------------------------------------------------------
    
    -- Premier étage Température : N=10 (1024 points)
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
            Data_Average => sig_temp_n10
        );

    -- Deuxième étage Température : N=3 (Lissage final cascade)
    I_Temp_Average_N13 : Sliding_Average
        generic map (
            N          => 3,
            DATA_WIDTH => 16
        )
        port map (
            Clk          => Clk,
            Reset        => Reset,
            Enable       => SS1,
            Data         => sig_temp_n10, -- On filtre le résultat du premier bloc
            Data_Average => Temp2
        );

    -- Affectation de la sortie N=10
    Temp1 <= sig_temp_n10;


    ------------------------------------------------------------------------------
    -- CHAÎNE VOLTAGE (Canal 2)
    ------------------------------------------------------------------------------

    -- Premier étage Voltage : N=10 (1024 points)
    I_Volt_Average_N10 : Sliding_Average
        generic map (
            N          => 10,
            DATA_WIDTH => 16
        )
        port map (
            Clk          => Clk,
            Reset        => Reset,
            Enable       => SS2,
            Data         => SD2,
            Data_Average => sig_volt_n10
        );

    -- Deuxième étage Voltage : N=3 (Lissage final cascade)
    I_Volt_Average_N13 : Sliding_Average
        generic map (
            N          => 3,
            DATA_WIDTH => 16
        )
        port map (
            Clk          => Clk,
            Reset        => Reset,
            Enable       => SS2,
            Data         => sig_volt_n10, -- On filtre le résultat du premier bloc
            Data_Average => Voltage2
        );

    -- Affectation de la sortie N=10
    Voltage1 <= sig_volt_n10;

end Behavioral;