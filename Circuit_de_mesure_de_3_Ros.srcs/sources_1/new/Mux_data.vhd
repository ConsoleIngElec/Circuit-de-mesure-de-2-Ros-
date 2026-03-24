----------------------------------------------------------------------------------
-- Company:          Université de Bordeaux
-- Engineer:         Consolé MBOUBA
-- 
-- Create Date:      11.03.2026 15:08:09
-- Design Name:      Circuit de mesure de 3 ROs
-- Module Name:      Mux_data - Behavioral
-- Project Name:     Circuit de mesure de 3 ROs
-- Target Devices:   Zynq UltraScale+
-- Tool Versions:    Vivado 2018.3
--
-- Description:      
--    Ce module multiplexeur permet d'extraire un octet spécifique (8 bits) 
--    à partir du large vecteur de données 'Data_in' regroupant les mesures.
--    
--    Fonctionnement :
--    1. Reçoit le vecteur concaténé de tous les RO (ex: 4 stress * 32 bits = 128 bits).
--    2. Utilise le signal 'Sel' (5 bits) comme index d'octet (de 0 à 15 pour 128 bits).
--    3. Extrait la tranche correspondante pour l'envoyer vers l'interface de sortie.
--
-- Dependencies:     All_Ro_out, Select_data
-- 
-- Revision:         Version 1.0 - Logique d'extraction par octet
-- Additional Comments: 
--    L'indexation est purement combinatoire pour minimiser la latence 
--    avant l'envoi sur le bus AXI.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mux_data is
    generic(
        Stress_Number : integer := 4  -- 4 instances * 32 bits = 128 bits en entrée; 4 pour les 4 stress
    );
    Port ( 
        Data_in  : in  STD_LOGIC_VECTOR (Stress_Number*32-1 downto 0);
        Sel      : in  STD_LOGIC_VECTOR (4 downto 0); -- Index de l'octet (0 à 31)
        Data_out : out STD_LOGIC_VECTOR (7 downto 0)  -- Octet sélectionné
    );
end Mux_data;

architecture Behavioral of Mux_data is
begin

    --------------------------------------------------------------------------
    -- Processus combinatoire de sélection d'octet
    --------------------------------------------------------------------------
    -- Ce processus réagit instantanément à tout changement de données ou de sélection
process(Data_in, Sel)
        variable Index : integer;
    begin
        Index := to_integer(unsigned(Sel));

        -- Utilisation d'une indexation commençant à 0 (plus standard)
        if Index >= 0 and Index < (Stress_Number * 4) then
            Data_Out <= Data_In((Index * 8 + 7) downto (Index * 8));
        else
            Data_Out <= (others => '0');
        end if;
    end process;
    
end Behavioral;
