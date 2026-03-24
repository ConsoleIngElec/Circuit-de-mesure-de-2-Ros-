library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity State_machine_mode_tb is
--  Port ( );
end State_machine_mode_tb;

architecture Behavioral of State_machine_mode_tb is

Component State_machine_mode is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
    );
    Port ( 
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC; 
        Mode_G   : in  STD_LOGIC; 
        CE_1Hz   : in  STD_LOGIC; 
        Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        RO_sel   : out STD_LOGIC_VECTOR(2 downto 0); 
        Send     : out STD_LOGIC 
    );
end Component;

signal clk : std_logic;
signal reset : std_logic;
signal mode_g : std_logic;
signal ce_1hz : std_logic;
signal mode : std_logic_vector(2 * 3 - 1 downto 0);
signal reset_ro : std_logic_vector(2 * 3 - 1 downto 0);
signal ro_sel : std_logic_vector(2 downto 0);
signal send : std_logic;

begin

clk_process : process
begin
    clk <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
end process;

reset_process : process
begin
    reset <= '1';
    wait for 15 ns;
    reset <= '0';
    wait;
end process;

mode_g_process : process
begin
    mode_g <= '0';
    wait for 30 ns;
    mode_g <= '1';
    wait for 10 us;
    mode_g <= '0';
    wait;
end process;

ce_1hz_process : process
begin
    ce_1hz <= '0';
    wait for 30 ns;
    
    for i in 0 to 100 loop
        ce_1hz <= '1';
        wait for 10 ns;
        ce_1hz <= '0';
        wait for 100 ns;
    end loop;
    wait; 
end process;

I_State_machine_mode: State_machine_mode 
 Generic map
(
   Architecture_number => 2,
   RO_by_architecture => 3
)
port map
(
   Clk  =>  clk,
   Reset => reset,
   Mode_G =>  mode_g,
   CE_1Hz  => ce_1hz,
   Mode   => mode,
   Reset_RO => reset_ro,
   RO_sel =>  ro_sel,
   Send  =>  send
);


end Behavioral;
