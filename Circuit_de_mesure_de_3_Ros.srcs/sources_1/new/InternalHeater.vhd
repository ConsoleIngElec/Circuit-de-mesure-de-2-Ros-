----------------------------------------------------------------------------------
-- Company: Université de Bordeaux 
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 21.04.2026 13:05:23
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: InternalHeater - Behavioral
-- Project Name: Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
--
-- Description: 
--    Générateur de chaleur interne  basé sur un Ring Oscillator (RO).
--    Ce module n'a pas de fonction logique pour le SDK; son seul but est de 
--    consommer de l'énergie pour chauffer le silicium du FPGA de l'intérieur.
--    Il utilise 7 inverseurs en boucle pour maximiser la fréquence de commutation.
-- 
-- Dependencies: 
--    UNISIM.VComponents pour l'instanciation des primitives LUT1.
-- 
-- Revision:
--    Revision 0.01 - File Created
--
-- Additional Comments:
--    L'intensité consommée (I) augmente avec la fréquence d'oscillation. 
--    Les attributs DONT_TOUCH sont obligatoires pour éviter l'élagage (pruning)
--    par l'outil de synthèse de Vivado.
--     Rôle : Augmenter la température interne (Tj) pour assister le module Peltier
--     et réduire sa consommation externe.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Bibliothèque Xilinx pour utiliser les composants physiques (LUT)
library UNISIM;
use UNISIM.VComponents.all;

entity InternalHeater is
    Port ( 
        S_IH : out STD_LOGIC 
    );
end InternalHeater;

architecture Behavioral of InternalHeater is

   
    signal ring : std_logic_vector(6 downto 0);
    
    -- ==========================================================================
    -- ATTRIBUTS DE SYNTHÈSE
    -- ==========================================================================
    
    -- Empêche Vivado de supprimer les inverseurs sous prétexte qu'ils ne servent 
    -- à rien pour le reste du design.
    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of ring : signal is "true";
    
    -- Autorise la création d'une boucle combinatoire infinie (normalement interdite).
    attribute ALLOW_COMBINATORIAL_LOOPS : string;
    attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is "TRUE";
    

begin

    --------------------------------------------------------------------------
    -- GÉNÉRATION DU RING OSCILLATOR (RO)
    --------------------------------------------------------------------------
    -- On crée 7 inverseurs (LUT1 avec INIT="01").
    -- L'astuce du modulo (i+6 mod 7) permet de relier automatiquement :
    --   L'entrée de la LUT(0) à la sortie de la LUT(6) -> C'est le bouclage.
    --   L'entrée de la LUT(1) à la sortie de la LUT(0), etc.
    --------------------------------------------------------------------------
    P1_gen_ro : for i in 0 to 6 generate
    begin
        gate_inst : LUT1
            generic map (
                INIT => "01" -- Fonction inverseur: IO= Not(O)
            )
            port map (
                I0 => ring((i + 6) mod 7), 
                O  => ring(i)              
            );
    end generate P1_gen_ro;

    S_IH <= ring(6);

end Behavioral;