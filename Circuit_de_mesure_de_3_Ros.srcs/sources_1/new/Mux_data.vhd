----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
--
-- Create Date: 23.02.2026 12:51:51
-- Design Name: Circuit de mesure d'un RO
-- Module Name: Mux_Data - Behavioral
-- Project Name: Circuit de mesure d'un RO
-- Target Devices: Zynq/ Zynq UltraScale+
-- Tool Versions: Vivado 2018.3.1
-- Description: Ce module reçoit le vecteur de données global (128 bits pour 4 RO)
--              et extrait l'octet spécifié par le signal Sel (5 bits). 
--              L'octet de sortie est envoyé vers le transmetteur UART.
--
-- Dependencies: Select_Data, All_Ro_Out
--
-- Revision: Version 1.0
-- Additional Comments: Indexation basée sur un signal Sel de 5 bits (0 à 31).
--                      L'extraction est découpée en tranches de 8 bits (octets).
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mux_Data is
    generic(
        Stress_Number : positive := 4  -- 4 instances * 32 bits = 128 bits en entrée
    );
    Port ( 
        Data_In  : in  STD_LOGIC_VECTOR (Stress_Number*32-1 downto 0);
        Sel      : in  STD_LOGIC_VECTOR (4 downto 0); -- Index de l'octet (0 à 31)
        Data_Out : out STD_LOGIC_VECTOR (7 downto 0)  -- Octet sélectionné
    );
end Mux_Data;

architecture Behavioral of Mux_Data is
begin

    --------------------------------------------------------------------------
    -- Processus combinatoire de sélection d'octet
    --------------------------------------------------------------------------
    -- Ce processus réagit instantanément à tout changement de données ou de sélection
process(Data_In, Sel)
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