----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 09.03.2026 16:04:59
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: Generateur_signal_1Hz - Behavioral
-- Project Name: Circuit de mesure de 3 ROS
-- Target Devices: Zynq UltraScale +
-- Tool Versions: Vivado 2018.3
-- Description:  Ce module produit une impulsion de 1 cycle d'horloge toutes les secondes.
--    Le paramètre FREQ_CLK permet d'adapter le module à n'importe quelle horloge.
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: Ce module est conçu pour piloter le compteur de mode (Counter_mode).
-- On prendra comme valeur par défaut de la fréquence du Clock Freq=100 Mhz
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Generateur_signal_1Hz is
    Generic ( CLK_FREQ : integer := 100000000 );
    Port ( 
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC;
        CE_1HZ   : out STD_LOGIC
    );
end Generateur_signal_1Hz;

architecture Behavioral of Generateur_signal_1Hz is
    signal counter : integer range 0 to CLK_FREQ - 1 := 0;
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                counter <= 0;
                CE_1HZ  <= '0';
            elsif counter = (CLK_FREQ - 1) then
                counter <= 0;
                CE_1HZ  <= '1';
            else
                counter <= counter + 1;
                CE_1HZ  <= '0';
            end if;
        end if;
    end process;
end Behavioral;