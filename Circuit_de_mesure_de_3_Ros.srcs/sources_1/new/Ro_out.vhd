----------------------------------------------------------------------------------
-- Company:          Université de Bordeaux
-- Engineer:         Consolé MBOUBA
-- 
-- Create Date:      11.03.2026 12:02:42
-- Design Name:      Circuit de mesure de 3 Ros
-- Module Name:      Ro_out - Behavioral
-- Project Name:     Circuit de mesure de 3 Ros
-- Target Devices:   Zynq UltraScale +
-- Tool Versions:    Vivado 2018.3
--
-- Description:      
--    Module de haut niveau (Top-level) du système de caractérisation des 
--    Oscillateurs en Anneau (RO). Ce bloc réalise l'interface entre le matériel 
--    et la mesure de fréquence.
--    
--    Fonctionnement :
--    1. Instancie un banc de ROs (Ro_bench) paramétrable.
--    2. Sélectionne un RO spécifique via un Multiplexeur (Mux_Ro).
--    3. Mesure la fréquence du RO sélectionné en utilisant ses oscillations 
--       comme horloge de comptage pendant une fenêtre de temps précise (1s).
--
-- Dependencies:     Ro_bench, Mux_Ro, Measure_F_Ro
-- 
-- Revision:         Version 1.0 - Structure de base validée
-- Additional Comments: 
--    - Le signal CE_1Hz définit la fenêtre temporelle de mesure.
--    - La sortie S_int du multiplexeur est utilisée comme signal d'horloge (Clk) 
--      pour le bloc Measure_F_Ro.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ro_out is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
    );
    Port ( 
        Reset    : in  std_logic;
        CE_1Hz   : in  std_logic; 
        RO_sel   : in  std_logic_vector(2 downto 0);
        Mode     : in  std_logic_vector(Architecture_number * RO_by_architecture - 1 downto 0);
        Stress   : in  std_logic;
        Reset_RO : in  std_logic_vector(Architecture_number * RO_by_architecture - 1 downto 0);
        F_Ro     : out std_logic_vector(31 downto 0)
    );
end Ro_out;

architecture Behavioral of Ro_out is

   -- ==========================================================================
    -- DÉCLARATION DES COMPOSANTS
    -- ==========================================================================

    -- Banc d'oscillateurs : génère les signaux oscillants
    component Ro_bench is
        generic(
            Architecture_number : integer; 
            RO_by_architecture  : integer
        );
        Port ( 
            Stress   : in  std_logic;
            Mode     : in  std_logic_vector(Architecture_number * RO_by_architecture - 1 downto 0);
            Reset_RO : in  std_logic_vector(Architecture_number * RO_by_architecture - 1 downto 0);
            S_Ro     : out std_logic_vector(Architecture_number * RO_by_architecture - 1 downto 0)
        );
    end component;

    -- Multiplexeur : aiguille un seul signal RO vers la sortie
    component Mux_Ro is
        generic(
            Architecture_number : integer; 
            RO_by_architecture  : integer
        );
        Port ( 
            S_Ro   : in  std_logic_vector(Architecture_number * RO_by_architecture - 1 downto 0);
            Ro_sel : in  std_logic_vector(2 downto 0);
            S      : out std_logic
        );
    end component;

    -- Fréquencemètre : compte les fronts montants du RO sélectionné
    component Measure_F_Ro is
        Port ( 
           Clk    : in  STD_LOGIC;  -- Horloge de comptage (Signal du RO)
           Reset  : in  STD_LOGIC;  
           Enable : in  STD_LOGIC;  -- Fenêtre temporelle (Gate)
           Count  : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    -- ==========================================================================
    -- SIGNAUX INTERNES
    -- ==========================================================================
    signal S_Ro_int : std_logic_vector(Architecture_number * RO_by_architecture - 1 downto 0);
    signal S_int    : std_logic; -- Signal sélectionné issu du MUX

begin

    -- 1. Instance du banc de ROs : Génération de l'ensemble des fréquences
    I_Ro_bench : Ro_bench 
    generic map (
        Architecture_number => Architecture_number, 
        RO_by_architecture  => RO_by_architecture
    )
    port map (
        Stress   => Stress,
        Mode     => Mode,
        Reset_RO => Reset_RO,
        S_Ro     => S_Ro_int
    );

    -- 2. Instance du Multiplexeur : Sélection logicielle du RO à mesurer
    I_Mux_Ro : Mux_Ro 
    generic map (
        Architecture_number => Architecture_number, 
        RO_by_architecture  => RO_by_architecture
    )
    port map (
        S_Ro   => S_Ro_int,
        Ro_sel => Ro_sel,
        S      => S_int
    );

    -- 3. Instance du bloc de mesure : Conversion fréquence -> valeur numérique
    -- NOTE : On injecte S_int sur le port Clk car on veut compter les oscillations du RO.
    I_Measure_F_Ro : Measure_F_Ro 
    port map (
        Clk    => S_int,   
        Reset  => Reset,
        Enable => CE_1Hz,   
        Count  => F_Ro     -- Valeur finale de la fréquence
    );

end Behavioral;