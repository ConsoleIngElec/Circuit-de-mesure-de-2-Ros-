----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 26.03.2026 09:35:58
-- Design Name: Conception de 3 Ros
-- Module Name: De_Mux - Behavioral
-- Project Name: Conception de 3 Ros
-- Target Devices: Zynq UltraScale+
-- Tool Versions: 2018.3.1
-- Description: 
--     Démultiplexeur de données pour le SYSMON.
--     ED1    => Donnée brute provenant du Sysmon (do_out)
--     Sel    => Canal sélectionné (channel_out)
--     Enable => Validation de donnée (drdy_out)
--
--     SD1 / SS1 => Donnée et "Ready" pour la TEMPÉRATURE
--     SD2 / SS2 => Donnée et "Ready" pour le VOLTAGE (VCCINT)
-- Dependencies: Sysmon
-- 
-- Revision: Version 1.0
-- Revision 0.01 - File Created
-- 1. Ce module assure la synchronisation entre le SYSMON (horloge DRP) et le reste du FPGA.
-- 2. L'utilisation de signaux SS1/SS2 de type "pulse" (1 cycle) évite que le moyenneur 
--    ne traite plusieurs fois la même donnée.
-- 3. Les codes "000000" (Temp) et "000001" (VCCINT) sont les standards de l'UltraScale+.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity De_Mux is
    Port ( 
        Clk    : in  STD_LOGIC;
        Reset  : in  STD_LOGIC; 
        ED1    : in  STD_LOGIC_VECTOR (15 downto 0);
        Sel    : in  STD_LOGIC_VECTOR (5 downto 0);
        Enable : in  STD_LOGIC;
        SD1    : out STD_LOGIC_VECTOR (15 downto 0);
        SD2    : out STD_LOGIC_VECTOR (15 downto 0);
        SS1    : out STD_LOGIC;
        SS2    : out STD_LOGIC
    );
end De_Mux;

architecture Behavioral of De_Mux is

    -- Signaux internes pour mémoriser les données entre deux cycles
    signal SD1_int : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal SD2_int : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin

    -- Les sorties SD pointent vers les registres internes
    SD1 <= SD1_int;
    SD2 <= SD2_int;

    ------------------------------------------------------------------------------
    -- Process de multiplexage synchrone
    ------------------------------------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                SD1_int <= (others => '0');
                SD2_int <= (others => '0');
                SS1     <= '0';
                SS2     <= '0';
            else
                -- On remet les impulsions "Ready" (SS) à 0 par défaut
                SS1 <= '0';
                SS2 <= '0';

                -- Si le SYSMON valide une nouvelle donnée
                if Enable = '1' then
                    case Sel is
                        -- Canal Température Interne
                        when "000000" =>
                            SD1_int <= ED1;
                            SS1     <= '1'; -- On prévient le moyenneur Temp
                            
                        -- Canal Tension Interne (VCCINT)
                        when "000001" =>
                            SD2_int <= ED1;
                            SS2     <= '1'; -- On prévient le moyenneur Volt
                            
                        when others =>
                            null; -- On ignore les autres canaux
                    end case;
                end if;
            end if;
        end if;
    end process;

end Behavioral;