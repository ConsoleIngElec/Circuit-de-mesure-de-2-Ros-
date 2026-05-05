----------------------------------------------------------------------------------
-- Company:        Université de Bordeaux
-- Engineer:       Consolé MBOUBA
-- 
-- Create Date:    23.04.2026 12:43:48
-- Design Name:    Circuit de mesure de 3 ROs
-- Module Name:    Gen_mode - Behavioral
-- Project Name:   Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions:  Vivado 2018.3
-- Description: 
--   Module top-level du générateur de modes pour la caractérisation
--   automatisée des Ring Oscillators (ROs).
--   Instancie et connecte 2 sous-modules :
--     - Counter_mode       : génère Mode_G (48s mesure + stress / 552s pause
--                            thermique) à partir de la base de temps CE_1Hz.
--     - State_machine_mode : FSM séquençant les 6 modes (Architecture_number
--                            × RO_by_architecture) avec, pour chaque mode :
--                              1s Reset / 6s Oscillation / 1s Mesure (Send).
--
--   La base de temps CE_1Hz n'est PAS générée dans ce module : elle est
--   fournie en entrée depuis le module Gen_time (qui produit également
--   CE_10Hz pour l'envoi de la tension et de la température).
-- 
-- Dependencies: Counter_mode, State_machine_mode
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--   Les génériques FREQ_Clk, Architecture_number et RO_by_architecture
--   sont transmis aux sous-modules concernés.
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Gen_mode is
    generic(
        FREQ_Clk            : integer := 100_000_000;
        Architecture_number : integer := 2;
        RO_by_architecture  : integer := 3
    );
    Port (
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC;
        CE_1Hz   : in  STD_LOGIC;   -- Base de temps fournie par Gen_time
        Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Ro_sel   : out STD_LOGIC_VECTOR(2 downto 0);
        Send     : out STD_LOGIC
    );
end Gen_mode;

architecture Behavioral of Gen_mode is

    -- Déclaration de Counter_mode
    component Counter_mode is
        generic(
            NB_MODES  : integer;
            T_MODE_S  : integer;
            T_PAUSE_S : integer
        );
        Port (
            Clk    : in  STD_LOGIC;
            Reset  : in  STD_LOGIC;
            Enable : in  STD_LOGIC;
            MODE_G : out STD_LOGIC
        );
    end component;

    -- Déclaration de State_machine_mode
    component State_machine_mode is
        generic(
            Architecture_number : integer;
            RO_by_architecture  : integer
        );
        Port (
            Clk      : in  STD_LOGIC;
            Reset    : in  STD_LOGIC;
            CE_1Hz   : in  STD_LOGIC;
            Mode_G   : in  STD_LOGIC;
            Ro_sel   : out STD_LOGIC_VECTOR(2 downto 0);
            Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
            Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
            Send     : out STD_LOGIC
        );
    end component;

    -- Signal interne de connexion entre Counter_mode et State_machine_mode
    signal Mode_G_int : STD_LOGIC;

begin

    -- Instance du compteur de cycle mesure / pause thermique
    I_Counter_mode : Counter_mode
        generic map(
            NB_MODES  => Architecture_number * RO_by_architecture,
            T_MODE_S  => 8,
            T_PAUSE_S => 552
        )
        port map(
            Clk    => Clk,
            Reset  => Reset,
            Enable => CE_1Hz,
            MODE_G => Mode_G_int
        );

    -- Instance de la machine à états de séquençage des ROs
    I_State_machine_mode : State_machine_mode
        generic map(
            Architecture_number => Architecture_number,
            RO_by_architecture  => RO_by_architecture
        )
        port map(
            Clk      => Clk,
            Reset    => Reset,
            CE_1Hz   => CE_1Hz,
            Mode_G   => Mode_G_int,
            Ro_sel   => Ro_sel,
            Mode     => Mode,
            Reset_RO => Reset_RO,
            Send     => Send
        );

end Behavioral;