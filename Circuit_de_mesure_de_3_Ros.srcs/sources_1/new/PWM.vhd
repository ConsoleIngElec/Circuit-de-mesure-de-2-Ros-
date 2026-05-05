----------------------------------------------------------------------------------
-- Company:        Université de Bordeaux
-- Engineer:       Consolé MBOUBA
-- 
-- Create Date:    25.03.2026 16:56:51
-- Design Name:    Circuit de mesure de 3 ROs
-- Module Name:    PWM - Behavioral
-- Project Name:   Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions:  Vivado 2018.3
-- 
-- Description:
--   Générateur de signal PWM (Modulation de Largeur d'Impulsion).
--   Ce module pilote le driver de puissance qui alimente le module de
--   chauffage utilisé pour la régulation thermique du FPGA pendant la
--   caractérisation des ROs.
--
--   Cas particuliers :
--     - Duty = 0     -> PWM_Out maintenu à '0' (chauffage à 0%)
--     - Duty = 2550  -> PWM_Out maintenu à '1' (chauffage à 100%)
--
--   Paramètres temporels (horloge à 100 MHz) :
--     - Fréquence du signal PWM : 100 MHz / 2550 = ~39,2 kHz
--     - Résolution du rapport cyclique : 1/2550 (~0,04%)

--
--   Le port Duty est dimensionné en 32 bits pour s'interfacer directement
--   avec slv_reg3 de l'IP AXI-Lite, mais seules les valeurs de 0 à 2550
--   sont exploitables. 
--
-- Dependencies: IP_Conversion_Axi 
-- 
-- Revision: version 1.0
--
-- Additional Comments:
--   
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
    Port ( 
        Clk     : in  STD_LOGIC;                         
        Reset   : in  STD_LOGIC;                         
        Duty_cycle    : in  STD_LOGIC_VECTOR (31 downto 0);   
        PWM_Out : out STD_LOGIC                         
    );
end PWM;

architecture Behavioral of PWM is
    signal Duty_int : integer;
    signal s        : integer := 0;
begin

    Duty_int <= to_integer(unsigned(Duty_cycle));
    
     ----------------------------------------------------------------------------------
    -- Processus principal : génération du signal PWM
    -- Synchrone sur le front montant de Clk.
    -- À chaque cycle d'horloge, compare le compteur s à la consigne Duty_int
    -- pour déterminer l'état de la sortie PWM_Out.
    ----------------------------------------------------------------------------------

    process (Clk)
    begin
        if rising_edge(Clk) then
        
            if Reset = '1' then
                s       <= 0;
                PWM_Out <= '0';
                
            else
            
                if Duty_int = 2550 then
                    s       <= 0;
                    PWM_Out <= '1';
                elsif Duty_int = 0 then
                    s       <= 0;
                    PWM_Out <= '0';
                else
                    if s < Duty_int then
                        s       <= s + 1;
                        PWM_Out <= '1';
                    elsif s >= Duty_int and s < 2550 then
                        s       <= s + 1;
                        PWM_Out <= '0';
                    elsif s = 2550 then
                        s       <= 0;
                        PWM_Out <= '0';
                    end if;
                end if;
                
            end if;
        end if;
    end process;
end Behavioral;