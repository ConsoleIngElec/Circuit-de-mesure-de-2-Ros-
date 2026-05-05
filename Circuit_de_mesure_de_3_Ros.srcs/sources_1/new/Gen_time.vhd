----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 27.04.2026 14:48:47
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: Gen_time - Behavioral
-- Project Name: Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description:
--   Module de génération des bases de temps du système.
--   Instancie deux fois le composant Gen_Clk pour produire :
--     - CE_1Hz  : impulsion synchrone à 1 Hz, utilisée comme base de temps
--                 pour le comptage des Ring Oscillators (ROs), Counter_mode,
--                 State_machine_mode et Gen_mode. Pour la mesure des
--                 fréquences des ROs, on compte le nombre de fronts montants
--                 des ROs à chaque impulsion CE_1Hz.
--     - CE_10Hz : impulsion synchrone à 10 Hz, utilisée pour l'envoi
--                 de la tension et de la température.
--
--   Les deux signaux sont des Clock Enable : ils valent '1' pendant 1 cycle
--   d'horloge à leur fréquence respective.
--
-- Dependencies: Gen_Clk
-- 
-- Revision:
--   Revision 0.01 - File Created
--
-- Additional Comments:
--   Le générique FREQ_Clk permet d'adapter le module à n'importe quelle
--   fréquence d'horloge d'entrée. Par défaut : 100 MHz.
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Gen_time is
    generic(
        FREQ_Clk : integer := 100_000_000   -- Fréquence de l'horloge d'entrée (Hz)
    );
    Port (
        Clk     : in  STD_LOGIC;
        Reset   : in  STD_LOGIC;
        CE_1Hz  : out STD_LOGIC;
        CE_10Hz : out STD_LOGIC
    );
end Gen_time;

architecture Behavioral of Gen_time is

    -- Déclaration du composant Gen_Clk
    component Gen_Clk is
        generic(
            FREQ_Clk : integer := 100_000_000;
            FREQ_Out : integer := 1
        );
        Port (
            Clk       : in  STD_LOGIC;
            Reset     : in  STD_LOGIC;
            Pulse_Out : out STD_LOGIC
        );
    end component;

begin

    -- Instance générant l'impulsion à 1 Hz
    I_Gen_1Hz : Gen_Clk
        generic map(
            FREQ_Clk => FREQ_Clk,
            FREQ_Out => 1
        )
        port map(
            Clk       => Clk,
            Reset     => Reset,
            Pulse_Out => CE_1Hz
        );

    -- Instance générant l'impulsion à 10 Hz
    I_Gen_10Hz : Gen_Clk
        generic map(
            FREQ_Clk => FREQ_Clk,
            FREQ_Out => 10
        )
        port map(
            Clk       => Clk,
            Reset     => Reset,
            Pulse_Out => CE_10Hz
        );

end Behavioral;
