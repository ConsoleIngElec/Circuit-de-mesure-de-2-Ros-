----------------------------------------------------------------------------------
-- Company:        Université de Bordeaux
-- Engineer:       Consolé MBOUBA
-- 
-- Create Date:    23.04.2026 12:43:48
-- Design Name:    Circuit de mesure de 24 ROs
-- Module Name:    Gen_mode1 - Behavioral
-- Project Name:   Circuit de mesure de 24 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions:  Vivado 2018.3
-- Description: 
--   Module top-level du générateur de modes pour la caractérisation
--   automatisée des Ring Oscillators.
--   Instancie et connecte 3 sous-modules :
--     - Gen_1Hz             : génère CE_1Hz à partir de l'horloge 100 MHz
--     - Counter_mode        : génère Mode_G (48s mesure / 552s pause thermique)
--     - State_machine_mode  : FSM séquençant les 6 modes × 4 ROs
-- 
-- Dependencies: Gen_1Hz, Counter_mode, State_machine_mode
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
        CE_1Hz   : out STD_LOGIC;
        Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Ro_sel   : out STD_LOGIC_VECTOR(2 downto 0);
        Send     : out STD_LOGIC
    );
end Gen_mode;

architecture Behavioral of Gen_mode is

    -- Déclaration de Gen_1Hz
    component Gen_1Hz is
        generic(FREQ_Clk : integer);
        Port (
            Clk    : in  STD_LOGIC;
            Reset  : in  STD_LOGIC;
            CE_1Hz : out STD_LOGIC
        );
    end component;

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
            Mode_G : out STD_LOGIC
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

    -- Signaux internes de connexion entre les sous-modules
    signal CE_1Hz_int : STD_LOGIC;
    signal Mode_G_int : STD_LOGIC;

begin

    -- Instance du générateur de base de temps 1Hz
    I_Gen_1Hz : Gen_1Hz
        generic map(FREQ_Clk => FREQ_Clk)
        port map(
            Clk    => Clk,
            Reset  => Reset,
            CE_1Hz => CE_1Hz_int
        );

    -- Instance du compteur de cycle mesure/pause
    I_Counter_mode : Counter_mode
        generic map(
            NB_MODES  => Architecture_number * RO_by_architecture,
            T_MODE_S  => 8,
            T_PAUSE_S => 552
        )
        port map(
            Clk    => Clk,
            Reset  => Reset,
            Enable => CE_1Hz_int,
            Mode_G => Mode_G_int
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
            CE_1Hz   => CE_1Hz_int,
            Mode_G   => Mode_G_int,
            Ro_sel   => Ro_sel,
            Mode     => Mode,
            Reset_RO => Reset_RO,
            Send     => Send
        );

    -- Propagation de CE_1Hz vers l'extérieur
    CE_1Hz <= CE_1Hz_int;

end Behavioral;