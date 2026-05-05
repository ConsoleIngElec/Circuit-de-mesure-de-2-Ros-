----------------------------------------------------------------------------------
-- Company:        Université de Bordeaux
-- Engineer:       Consolé MBOUBA
-- 
-- Create Date:    27.04.2026 15:25:37
-- Design Name:    Circuit de mesure de 3 ROs
-- Module Name:    Slidding_average - Behavioral
-- Project Name:   Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions:  Vivado 2018.3
-- Description:
--   Bloc de calcul d'une moyenne glissante sur 2^n mesures.
--   À chaque nouvelle mesure (Enable = '1'), le module ajoute la mesure
--   présente (Data) à la somme courante et soustrait la mesure la plus
--   ancienne (Data_shift), fournie par un shift register externe de
--   profondeur 2^n.
--   La division par 2^n est réalisée par un simple décalage à droite
--   (sélection des bits supérieurs du vecteur somme), ce qui est
--   très efficace en synthèse matérielle.
--
-- Dependencies: Shift_ram, De_Mux
-- 
-- Revision:
--   Revision 0.01 - File Created
--
-- Additional Comments:
--   - Le générique n définit la taille du décalage : la moyenne est
--     calculée sur 2^n échantillons.
--   - Data et Data_shift sont interprétés comme non signés sur 16 bits.
--   - L'accumulateur est dimensionné sur (n+16) bits pour éviter
--     tout débordement.
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Slidding_average is
    generic(
        n : positive := 4    -- Moyenne sur 2^n échantillons (par défaut : 16)
    );
    Port (
        Clk          : in  STD_LOGIC;
        Reset        : in  STD_LOGIC;
        Enable       : in  STD_LOGIC;
        Data         : in  STD_LOGIC_VECTOR (15 downto 0);
        Data_shift   : in  STD_LOGIC_VECTOR (15 downto 0);
        Data_average : out STD_LOGIC_VECTOR (15 downto 0)
    );
end Slidding_average;

architecture Behavioral of Slidding_average is

    signal sum            : integer := 0;
    signal Data_int       : integer;
    signal Data_shift_int : integer;
    signal sum_vector     : STD_LOGIC_VECTOR((n+15) downto 0);

begin

    -- Conversion des entrées en entiers non signés
    Data_int       <= to_integer(unsigned(Data));
    Data_shift_int <= to_integer(unsigned(Data_shift));

    -- À chaque nouvelle mesure, ce process somme les 2^n dernières mesures :
    -- on ajoute la mesure présente et on soustrait la mesure la plus ancienne.
    Average : process (Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                sum <= 0;
            elsif Enable = '1' then
                sum <= sum + Data_int - Data_shift_int;
            end if;
        end if;
    end process;

    -- Mise en forme de la somme sur (n+16) bits
    sum_vector <= std_logic_vector(to_unsigned(sum, n+16));

    -- Division par 2^n via décalage à droite
    -- (sélection des 16 bits de poids fort)
    Data_average <= sum_vector((n+15) downto n);

end Behavioral;