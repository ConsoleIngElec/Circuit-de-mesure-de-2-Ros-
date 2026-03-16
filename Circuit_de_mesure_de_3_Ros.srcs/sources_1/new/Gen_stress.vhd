----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA 
-- 
-- Create Date: 11.03.2026 14:01:43
-- Design Name: Circuit de mesure de 3 Ros
-- Module Name: Gen_stress - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3 
-- Description: Regroupe 4 types de stress pour les Ring Oscillators :
--              Stress_Out(0) : Masse (DC 0)
--              Stress_Out(1) : VCC (DC 1)
--              Stress_Out(2) : Basse fréquence (100 Hz, 50% DC)
--              Stress_Out(3) : Haute fréquence (100 MHz - Horloge directe)
-- Dependencies: Stress_100Hz
-- 
-- Revision: Version 1
-- Revision 0.01 - File Created
-- Additional Comments:
-- 1. Stratégie de Stress : Ce module centralise les différentes conditions de stress 
--    pour l'étude de vieillissement (BTI/HCI) des Ring Oscillators.
-- 2. Affectation du vecteur Stress_Out (3 downto 0) :
--      * Bit 0 : Stress statique bas (0V) - Référence sans stress.
--      * Bit 1 : Stress statique haut (VCC) - Stress DC constant.
--      * Bit 2 : Stress dynamique lent (100 Hz) - Alternance basse fréquence.
--      * Bit 3 : Stress dynamique rapide (100 MHz) - Utilisation du signal Clk 
--        direct pour un stress à la fréquence maximale du système.
-- 3. Synchronisation : Toutes les sorties dynamiques sont synchrones avec 
--    l'horloge système de 100 MHz.
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gen_stress is
    Port ( 
        Clk        : in  STD_LOGIC;
        Reset      : in  STD_LOGIC;
        Stress : out STD_LOGIC_VECTOR (3 downto 0) 
    );
end Gen_stress;

architecture Behavioral of Gen_stress is

    -- Composant générant le signal 100 Hz
    component Stress_100Hz is
        Port ( 
            Clk           : in  STD_LOGIC;
            Reset         : in  STD_LOGIC;
            Stress_100Hz  : out STD_LOGIC
        );
    end component;

    signal S_100Hz : STD_LOGIC;

begin

    --------------------------------------------------------------------------
    -- Instanciation du générateur de fréquence 100 Hz
    --------------------------------------------------------------------------
    I_Stress_100Hz: Stress_100Hz
        port map (
            Clk          => Clk,
            Reset        => Reset,
            Stress_100Hz => S_100Hz
        );

    --------------------------------------------------------------------------
    -- Assignation des sorties de stress (Vecteur 4 bits)
    --------------------------------------------------------------------------
    -- Note : On utilise les indices 0 à 3 pour un vecteur (3 downto 0)
    
    Stress(0) <= '0';      -- Cas 1 : Stress nul (Masse)
    Stress(1) <= '1';      -- Cas 2 : Stress continu (VCC)
    Stress(2) <= S_100Hz;  -- Cas 3 : Stress alternatif lent (100 Hz)
    Stress(3) <= Clk;      -- Cas 4 : Stress alternatif rapide (100 MHz)

end Behavioral;
