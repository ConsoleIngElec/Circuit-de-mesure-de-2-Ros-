----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 11.03.2026 13:54:25
-- Design Name: Circuit de mesure de 3 Ros
-- Module Name: Gene_Stress - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description: Module de génération de signal de stress à basse fréquence.
--              Produit une fréquence de 100 Hz avec un rapport cyclique 
--              de 50% à partir d'une horloge source de 100 MHz.
-- 
-- Dependencies: Clock_Diviser
-- 
-- Revision: version 1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Stress_100Hz is
    Port ( 
        Clk            : in  STD_LOGIC; 
        Reset          : in  STD_LOGIC; 
        Stress_100Hz   : out STD_LOGIC 
    );
end Stress_100Hz;

architecture Behavioral of Stress_100Hz is

    -- Déclaration du composant diviseur d'horloge
    component Clock_Diviser is
        generic ( 
            Cmpt : integer; 
            R    : integer 
        );
        Port ( 
            Clk     : in  STD_LOGIC; 
            Reset   : in  STD_LOGIC; 
            Enable  : in  STD_LOGIC; 
            Clk_out : out STD_LOGIC 
        );
    end component;

begin

--------------------------------------------------------------------------
    -- Génération du Stress 100 Hz
    --------------------------------------------------------------------------
    -- Configuration pour Clk = 100 MHz :
    -- Cmpt = 1 000 000 => Division par 1 million pour obtenir 100 Hz.
    -- R = 2            => Rapport cyclique de 50% (5 ms Haut / 5 ms Bas).
    --------------------------------------------------------------------------
    I_Clock_Diviser : Clock_Diviser 
    generic map ( 
        Cmpt => 1000000,
        R    => 2 
    )
    port map (
        Clk     => Clk, 
        Reset   => Reset, 
        Enable  => '1',
        Clk_out => Stress_100Hz
    );

end Behavioral;
