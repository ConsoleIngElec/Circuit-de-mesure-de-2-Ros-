----------------------------------------------------------------------------------
-- Établissement : Université de Bordeaux
-- Ingénieur      : Consolé MBOUBA
-- 
-- Date de création : 25.03.2026 16:56:51
-- Nom du Design    : Circuit de mesure de 3 ROs (Ring Oscillators)
-- Nom du Module    : PWM_Motor - Behavioral
-- Nom du Projet    : Caractérisation du vieillissement des ROs
-- Cible (Target)   : Zynq UltraScale+ 
-- Version Outils   : Vivado 2018.3.1
-- 
-- Description : 
--     Générateur de signal PWM (Modulation de Largeur d'Impulsion) sur 16 bits.
--     Ce module pilote le driver de puissance (Pont-H) qui pilote le module
--     Peltier.
--
--     Paramètres temporels :
--     - Fréquence de sortie @ 100 MHz : 1,52 kHz (Période de 100 MHz / 65536).
--     - Résolution du rapport cyclique : 1/65535 (soit une précision de ~0,0015%).
-- 
-- Dépendances : 
--     Ce module s'interface directement avec le registre 'slv_reg2' de l'IP 
--     personnalisée AXI-Lite pour un pilotage logiciel via le processeur (PS).
-- 
-- Révisions : version 1.0

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity PWM_Motor is
    Port ( 
        Clk     : in  STD_LOGIC;                         
        Reset   : in  STD_LOGIC;                         
        Duty    : in  STD_LOGIC_VECTOR (15 downto 0);   
        PWM_Out : out STD_LOGIC                         
    );
end PWM_Motor;

architecture Behavioral of PWM_Motor is


    signal Counter_Reg : unsigned(15 downto 0) := (others => '0');

begin

    ------------------------------------------------------------------------------
    -- Processus principal : Génération du signal PWM
    ------------------------------------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
        
            if Reset = '1' then
                Counter_Reg <= (others => '0');
                PWM_Out     <= '0';
                
            else
            
                Counter_Reg <= Counter_Reg + 1;
                
                -- Logique de comparaison pour le rapport cyclique :
                -- Si le compteur est inférieur à la consigne 'Duty', on active la sortie.
                -- Duty = 0     => Sortie toujours à '0' (0% de puissance)
                -- Duty = 32768 => Sortie à '1' pendant 50% du temps
                -- Duty = 65535 => Sortie à '1' pendant 99.99% du temps
                if Counter_Reg < unsigned(Duty) then
                    PWM_Out <= '1';
                else
                    pwm_out <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
