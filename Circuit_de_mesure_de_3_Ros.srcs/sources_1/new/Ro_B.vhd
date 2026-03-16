----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 10.03.2026 16:35:58
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: Ro_B - Behavioral
-- Project Name: Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description: Ring Oscillator (RO) composé de buffers (LUT3) avec contrôle 
--              du mode (Oscillation ou Stress) et remise à zéro.
-- 
-- Dependencies: Gen_mode
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: L'utilisation de buffers au lieu d'inverseurs dans la 
--                      chaîne nécessite une inversion dans la boucle de feedback.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Nécessaire pour instancier les primitives de Xilinx (LUT3)
library UNISIM;
use UNISIM.VComponents.all;

entity Ro_B is
    Port ( Mode     : in STD_LOGIC;
           Stress   : in STD_LOGIC;
           Reset_RO : in STD_LOGIC;
           S_Ro_B   : out STD_LOGIC);
end Ro_B;

architecture Behavioral of Ro_B is

    -- Signal de l'anneau : ring(0) est l'entrée, ring(12) est la sortie après 12 LUTs
    signal ring : std_logic_vector(12 downto 0);
    
    
    -- Attributs pour empêcher Vivado de supprimer la boucle ou de simplifier la logique
    attribute DONT_TOUCH : string; 
    attribute DONT_TOUCH of ring : signal is "true";
    
    attribute ALLOW_COMBINATORIAL_LOOPS : string;
    attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is "TRUE";
    
    -- Attribut pour le forçage physique de la broche d'entrée
    attribute lock_pins : string;

begin

    --------------------------------------------------------------------------
    -- Logique de feedback (équation de ring(0))
    --------------------------------------------------------------------------
    -- Le RO oscille si Reset_Ro='0' et Mode='1'. 
    -- L'inversion (not ring(12)) est cruciale car la chaîne est composée de buffers.
    ring(0) <= Reset_Ro or (not(Reset_Ro) and ((Mode and not(ring(12))) or ((not Mode) and Stress)));

    --------------------------------------------------------------------------
    -- Génération des 12 étages de buffer (LUT3)
    --------------------------------------------------------------------------
    -- INIT => "10101010" (0xAA) : Relation O = I0.
    -- La sortie recopie l'entrée I0 indépendamment de I1 et I2.
    --------------------------------------------------------------------------
    P1_gen_ro : for i in 0 to 7 generate
      -- lock_pins positionné sur A1 (physiquement I0 sur UltraScale+) pour un routage direct
      attribute lock_pins of gate : label is "I0:A1";
        begin
        gate : LUT1
            generic map (
                INIT => "10" -- Fonction logique : O = I0
            )
            port map (
                I0 => ring(i),      -- Signal oscillant (chemin critique)
                O  => ring(i+1)     -- Sortie vers l'étage suivant
            );
    end generate;
    
        P2_gen_ro : for i in 8 to 11 generate
      -- lock_pins positionné sur A1 (physiquement I0 sur UltraScale+) pour un routage direct
      attribute lock_pins of gate : label is "I0:A1";
        begin
        gate : LUT1
            generic map (
                INIT => "10" -- Fonction logique : O = I0
            )
            port map (
                I0 => ring(i),      -- Signal oscillant (chemin critique)
                O  => ring(i+1)     -- Sortie vers l'étage suivant
            );
    end generate;
    
    
    -- Sortie finale de l'oscillateur
    S_Ro_B <= ring(12);

end Behavioral;