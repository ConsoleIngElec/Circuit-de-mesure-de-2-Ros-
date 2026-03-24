----------------------------------------------------------------------------------
-- Company:          Université de Bordeaux
-- Engineer:         Consolé MBOUBA
-- 
-- Create Date:      10.03.2026 12:48:01
-- Design Name:      Circuit de mesure de 3 ROs
-- Module Name:      Ro_path - Behavioral
-- Project Name:     Circuit de mesure de 3 ROs
-- Target Devices:   Zynq UltraScale+
-- Tool Versions:    Vivado 2018.3
--
-- Description:      
--    Module Ring Oscillator (RO) configuré pour exploiter les délais de routage 
--    (Long Path). Contrairement au Ro_B qui possède plusieurs étages, celui-ci 
--    utilise une seule LUT1 comme élément actif, laissant le routage physique 
--    déterminer l'essentiel de la période d'oscillation.
--
-- Dependencies:     UNISIM.VComponents (Primitives Xilinx)
-- 
-- Revision:         Version 1.0 - Structure Long Path
-- Additional Comments: 
--    L'inversion nécessaire à l'oscillation est gérée dans l'équation de feedback.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Bibliothèque pour les primitives matérielles Xilinx
library UNISIM;
use UNISIM.VComponents.all;

entity Ro_path is
    Port ( 
        Mode      : in  STD_LOGIC; 
        Stress    : in  STD_LOGIC;
        Reset_RO  : in  STD_LOGIC; 
        S_RO_Path : out STD_LOGIC 
    );
end Ro_path;

architecture Behavioral of Ro_path is

    -- Signal de l'anneau :
    -- ring(0) : Entrée de la LUT (Feedback modifié)
    -- ring(1) : Sortie de la LUT
    signal ring : std_logic_vector(1 downto 0);

    -- ==========================================================================
    -- ATTRIBUTS DE SYNTHÈSE (CRITIQUES POUR LES BOUCLES)
    -- ==========================================================================
    attribute DONT_TOUCH : string; 
    attribute DONT_TOUCH of ring : signal is "true";
    
    attribute ALLOW_COMBINATORIAL_LOOPS : string;
    attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is "TRUE";

    -- Note : L'attribut lock_pins sera aussi activé dans le XDC pour figer le routage
     attribute lock_pins : string;  
     attribute lock_pins of S1 : label is "I0:A6";

begin

    --------------------------------------------------------------------------
    -- INSTANCIATION DE L'ÉTAGE DE DÉLAI (LUT1)
    --------------------------------------------------------------------------
    -- Configuration en BUFFER (O = I0). 
    -- L'inversion se fait dans la logique combinatoire de ring(0).
    --------------------------------------------------------------------------
    S1 : LUT1 
        generic map(
            INIT => "10" -- Fonction : O = I0
        )
        port map (
            I0 => ring(0),
            O  => ring(1)
        );

    --------------------------------------------------------------------------
    -- LOGIQUE DE FEEDBACK ET CONTRÔLE
    --------------------------------------------------------------------------
    -- ring(0) reçoit le signal de retour.
    -- L'inversion (not ring(1)) permet l'oscillation quand Mode = '1'.
    --------------------------------------------------------------------------
    ring(0) <= Reset_RO or ( (not Reset_RO) and ( (Mode and (not ring(1))) or ((not Mode) and Stress) ) );

    -- Affectation de la sortie finale
    S_RO_Path <= ring(1);
        
end Behavioral;