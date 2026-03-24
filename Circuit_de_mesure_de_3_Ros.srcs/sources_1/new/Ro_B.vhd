----------------------------------------------------------------------------------
-- Company:          Université de Bordeaux
-- Engineer:         Consolé MBOUBA
-- 
-- Create Date:      10.03.2026 16:35:58
-- Design Name:      Circuit de mesure de 3 ROs
-- Module Name:      Ro_B - Behavioral
-- Project Name:     Circuit de mesure de 3 ROs
-- Target Devices:   Zynq UltraScale+
-- Tool Versions:    Vivado 2018.3
--
-- Description:      
--    Ring Oscillator (RO) composé d'une chaîne de buffers élémentaires (LUT1).
--    Le contrôle permet de choisir entre :
--      - Mode Oscillation : Boucle fermée avec inversion pour générer la fréquence.
--      - Mode Stress      : Maintien d'un état statique pour le vieillissement.
--      - Reset            : Arrêt de l'oscillation (mise à '1' de la chaîne).
--
-- Dependencies:     UNISIM.VComponents (Primitives Xilinx)
-- 
-- Revision:         Version 1.1 - Correction des primitives LUT1
-- Additional Comments: 
--    L'inversion (NOT) est réalisée dans l'équation de feedback de ring(0).
--    Les attributs de synthèse sont critiques pour éviter la suppression de la boucle.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Bibliothèque nécessaire pour instancier les primitives matérielles (LUT, MUX, etc.)
library UNISIM;
use UNISIM.VComponents.all;

entity Ro_B is
    Port ( 
        Mode     : in  STD_LOGIC; 
        Stress   : in  STD_LOGIC; 
        Reset_RO : in  STD_LOGIC; 
        S_Ro_B   : out STD_LOGIC 
    );
end Ro_B;

architecture Behavioral of Ro_B is

    -- Signal de l'anneau : 
    -- ring(0)  : Entrée de la chaîne (Feedback)
    -- ring(12) : Sortie de la chaîne après 12 étages
    signal ring : std_logic_vector(12 downto 0);
    
    -- ==========================================================================
    -- ATTRIBUTS DE SYNTHÈSE (CRITIQUES)
    -- ==========================================================================
    
    -- Empêche Vivado de supprimer ou d'optimiser les signaux internes de la boucle
    attribute DONT_TOUCH : string; 
    attribute DONT_TOUCH of ring : signal is "true";
    
    -- Autorise l'outil à laisser une boucle combinatoire (normalement interdite)
    attribute ALLOW_COMBINATORIAL_LOOPS : string;
    attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is "TRUE";
    
    -- On activera le lock dans le fichier XDC de contraintes (mesure.xdc)
    


begin

    --------------------------------------------------------------------------
    -- LOGIQUE DE FEEDBACK (Point d'entrée de l'anneau)
    --------------------------------------------------------------------------
    -- Equation logique :
    -- Si Reset = '1' -> ring(0) est forcé à '1'.
    -- Si Reset = '0' :
    --    Si Mode = '1' -> ring(0) = NOT ring(12) (Oscillation)
    --    Si Mode = '0' -> ring(0) = Stress (État statique)
    --------------------------------------------------------------------------
    
    Lut_Controle : ring(0) <= Reset_Ro or (not(Reset_Ro) and ((Mode and not(ring(12))) or ((not Mode) and Stress)));
    
    --------------------------------------------------------------------------
    -- GÉNÉRATION DES 12 ÉTAGES DE BUFFER (LUT1)
    --------------------------------------------------------------------------
    -- Chaque LUT1 est configurée en buffer (O = I0).
    -- INIT "10" correspond à la table de vérité : O=1 si I0=1, O=0 si I0=0.
    --------------------------------------------------------------------------
    P1_gen_ro : for i in 0 to 11 generate
    
    -- On applique lock_pins sur l'instance gate_inst à chaque itération
    -- Pour UltraScale+, l'entrée I0 de la LUT1 est reliée à la pin physique A1
    -- attribute lock_pins of gate_inst : label is "I0:A6";
        
    begin
        gate_inst : LUT1
            generic map (
                INIT => "10" -- Fonction buffer : O = I0
            )
            port map (
                I0 => ring(i),   -- Entrée : étage précédent
                O  => ring(i+1)  -- Sortie : étage suivant
            );
    end generate P1_gen_ro;
    
    -- Sortie finale de l'oscillateur
    S_Ro_B <= ring(12);

end Behavioral;