----------------------------------------------------------------------------------
-- Company:        Université de Bordeaux
-- Engineer:       Consolé MBOUBA
-- 
-- Create Date:    28.03.2026 09:48:35
-- Design Name:    Circuit de mesure de 3 ROs
-- Module Name:    Data_Memory - Behavioral
-- Project Name:   Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions:  Vivado 2018.3
-- Description:
--   Mémoire des données mesurées.
--   À chaque impulsion de Send (issue de State_machine_mode), le module
--   stocke les 128 bits de Data dans une mémoire interne organisée en
--   NB_CAPTURES paquets, concaténée dans un seul vecteur de
--   NB_CAPTURES*128 bits. Send est émis une fois par mode mesuré, soit
--   NB_CAPTURES = 6 fois par cycle de mesure de 48s. Chaque mode regroupe
--   4 ROs soumis à des stress différents.
--
--   Une fois les NB_CAPTURES captures réalisées :
--     - Le bus Data_Out contient l'ensemble des données mémorisées.
--     - Le signal Allow passe à '1' pour signaler à l'AXI que les données
--       sont prêtes à être lues.
--
--   La pause thermique de 552s qui suit chaque cycle de mesure laisse au
--   PS plus de 9 minutes pour lire les 6 paquets via AXI avant le cycle
--   suivant. Au cycle suivant, le module recommence automatiquement à
--   stocker (Numero_Mode reboucle à 0) et écrase les anciennes données.
--
--   Organisation de Data_Out :
--     bits [127:0]               -> données du mode 0
--     bits [255:128]             -> données du mode 1
--     ...
--     bits [(n+1)*128-1 : n*128] -> données du mode n
--
-- Dependencies: Gen_mode, Gen_time, All_Rout
-- 
-- Revision:
--   Revision 0.01 - File Created
--
-- Additional Comments:
--   
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Data_Memory is
    generic(
        NB_CAPTURES : integer := 6
    );
    Port (
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC;
        Data     : in  STD_LOGIC_VECTOR(127 downto 0);
        Send     : in  STD_LOGIC;
        Data_Out : out STD_LOGIC_VECTOR(NB_CAPTURES*128 - 1 downto 0);
        Allow    : out STD_LOGIC
    );
end Data_Memory;

architecture Behavioral of Data_Memory is

    -- Mémoire interne : un seul vecteur de NB_CAPTURES * 128 bits
    -- Chaque tranche de 128 bits stocke les données d'un mode (regroupant
    -- 4 ROs soumis chacun à un même stress)
    signal memoire     : STD_LOGIC_VECTOR(NB_CAPTURES*128 - 1 downto 0) := (others => '0');

    -- Numéro du mode en cours de mesure (0, 1, ..., NB_CAPTURES-1)
    signal Numero_Mode : integer range 0 to NB_CAPTURES-1 := 0;

    signal allow_int   : STD_LOGIC := '0';
    
begin

    -- Process principal : mémorisation à chaque impulsion de Send
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                memoire     <= (others => '0');
                Numero_Mode <= 0;
                allow_int   <= '0';
            else
               
                if Send = '1' then
                    -- Écriture des données du mode courant à l'emplacement [(n+1)*128-1 : n*128]
                    memoire((Numero_Mode+1)*128 - 1 downto Numero_Mode*128) <= Data;

                    if Numero_Mode = NB_CAPTURES - 1 then
                        Numero_Mode <= 0;
                        allow_int   <= '1';  
                    else
                        Numero_Mode <= Numero_Mode + 1;
                        allow_int   <= '0';   
                    end if;
                end if;
            end if;
        end if;
    end process;

    Data_Out <= memoire;
    Allow    <= allow_int;

end Behavioral;