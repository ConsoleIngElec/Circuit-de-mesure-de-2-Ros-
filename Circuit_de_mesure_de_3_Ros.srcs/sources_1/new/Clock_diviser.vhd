----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 11.03.2026 13:49:16
-- Design Name: Circuit de mesure de 3 Ros 
-- Module Name: Clock_diviser - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq/ Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description: Diviseur d'horloge paramétrable permettant de générer une 
--              fréquence réduite avec un rapport cyclique défini par (1/R).
-- 
-- Dependencies: none
-- 
-- Revision: version 1.0
-- Revision 0.01 - File Created
-- Additional Comments: Utilise un compteur entier pour diviser Clk.
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Clock_Diviser is
    generic (
        Cmpt : integer := 1000000; -- Nombre total de cycles d'horloge par période de sortie
        R    : integer := 2       -- Facteur de rapport cyclique (Durée état haut = Cmpt / R)
    );
    Port ( 
        Clk     : in  STD_LOGIC;  -- Horloge système (ex: 100 MHz)
        Reset   : in  STD_LOGIC;  -- Reset synchrone (actif à l'état haut)
        Enable  : in  STD_LOGIC;  -- Signal d'activation de la division
        Clk_out : out STD_LOGIC   -- Signal d'horloge divisé résultant
    );
end Clock_Diviser;

architecture Behavioral of Clock_Diviser is
    -- Compteur interne pour mesurer les cycles de l'horloge source
    signal S : integer range 0 to Cmpt := 0; 
begin

    --------------------------------------------------------------------------
    -- Processus de division d'horloge (Synchrone sur front montant)
    --------------------------------------------------------------------------
    process (Clk) 
    begin
        if rising_edge(Clk) then
            -- Réinitialisation synchrone du compteur et de la sortie
            if Reset = '1' then
                S <= 0;
                Clk_out <= '1'; -- Initialisation à l'état haut
                
            elsif Enable = '1' then
                -- Gestion du rapport cyclique et des phases de l'horloge
                
                -- Cas 1 : Phase HAUTE (du cycle 0 à Cmpt/R - 1)
                if S < (Cmpt/R) then 
                    S <= S + 1;
                    Clk_out <= '1';
                
                -- Cas 2 : Phase BASSE (du cycle Cmpt/R à Cmpt - 2)
                elsif S < (Cmpt - 1) then 
                    S <= S + 1;
                    Clk_out <= '0'; 
                
                -- Cas 3 : Fin de période (cycle Cmpt - 1)
                -- Réinitialisation pour boucler le cycle de division
                else 
                    S <= 0;
                    Clk_out <= '0';
                end if;
                
            end if;
        end if;
    end process;
    
end Behavioral;
