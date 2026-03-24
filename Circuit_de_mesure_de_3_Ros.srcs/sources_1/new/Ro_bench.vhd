----------------------------------------------------------------------------------
-- Company:          Université de Bordeaux
-- Engineer:         Consolé MBOUBA
-- 
-- Create Date:      11.03.2026 09:48:20
-- Design Name:      Circuit de mesure de 3 Ros
-- Module Name:      Ro_bench - Behavioral
-- Project Name:     Circuit de mesure de 3 Ros
-- Target Devices:   Zynq UltraScale+
-- Tool Versions:    Vivado 2018.3
--
-- Description:      
--    Banc d'essai (Testbench matériel) regroupant plusieurs structures 
--    d'oscillateurs en anneau (Ring Oscillators). 
--    Le module instancie deux types d'architectures :
--      1. RO_B    : Structure standard (Type Buffer)
--      2. RO_path : Structure basée sur des délais de routage (Path)
--    L'instanciation est faite via des boucles générées pour faciliter 
--    l'extension du nombre de RO.
--
-- Dependencies:     Ro_B, Ro_path, Gen_stress
-- 
-- Revision:         Version 1.0 - Instanciation paramétrable
-- Additional Comments: 
--    L'attribut DONT_TOUCH est appliqué sur les sorties pour empêcher Vivado 
--    de supprimer les inverseurs en cascade lors de la synthèse.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ro_bench is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
        );
    Port ( Stress : in STD_LOGIC;
           Mode : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Reset_RO : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           S_Ro : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0));
end Ro_bench;

architecture Behavioral of Ro_bench is

-- ==========================================================================
    -- DÉCLARATION DES COMPOSANTS (Architecture A et B)
    -- ==========================================================================

    -- Oscillateur de type B
    Component Ro_B is
        Port ( 
            Mode     : in  STD_LOGIC;
            Stress   : in  STD_LOGIC;
            Reset_RO : in  STD_LOGIC;
            S_Ro_B   : out STD_LOGIC
        );
    end Component;

    -- Oscillateur de type Path (routage spécifique)
    Component Ro_path is
        Port ( 
            Mode      : in  STD_LOGIC;
            Stress    : in  STD_LOGIC;
            Reset_RO  : in  STD_LOGIC;
            S_RO_Path : out STD_LOGIC
        );
    end Component;

    -- ==========================================================================
    -- ATTRIBUTS DE SYNTHÈSE
    -- ==========================================================================
    -- Empêche l'optimisation logique qui supprimerait les boucles oscillantes
    attribute DONT_TOUCH : string; 
    attribute DONT_TOUCH of S_Ro : signal is "true";

begin

    -- ==========================================================================
    -- GÉNÉRATION DES INSTANCES
    -- ==========================================================================

    -- 1. Génération des instances pour l'architecture RO_B
    I_RO_B : for I in 0 to RO_by_architecture - 1 generate
        Inst_Ro_B : Ro_B
            port map (
                Mode     => Mode(I),
                Stress   => Stress,
                Reset_RO => Reset_RO(I),
                S_Ro_B   => S_Ro(I)
            );
    end generate I_RO_B;
        
    -- 2. Génération des instances pour l'architecture RO_path
    -- On décale l'index de RO_by_architecture pour remplir la seconde moitié du vecteur S_Ro
    I_RO_PATH : for I in 0 to RO_by_architecture - 1 generate
        Inst_Ro_path : Ro_path
            port map (
                Mode      => Mode(I + RO_by_architecture),
                Stress    => Stress,
                Reset_RO  => Reset_RO(I + RO_by_architecture),
                S_RO_Path => S_Ro(I + RO_by_architecture)
            );
    end generate I_RO_PATH;        

end Behavioral;