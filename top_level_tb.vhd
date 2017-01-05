library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity top_level_tb is
end top_level_tb;

architecture TB of top_level_tb is
	
		constant WIDTH : positive := 8;
		signal clk : std_logic := '0';
		signal rst : std_logic := '0';
  	signal input_switches : std_logic_vector(7 downto 0) := (others => '0');
  	signal led0     : std_logic_vector(6 downto 0);
	 signal led1     : std_logic_vector(6 downto 0);
	 signal led2     : std_logic_vector(6 downto 0);
	 signal led3     : std_logic_vector(6 downto 0);
	 signal input_switch_sel : std_logic := '0';
--	 signal inport_mux_sel : std_logic := '0';
		begin

UUT : entity work.top_level
	port map(
		clk => clk,
		rst => rst,
		input_switch_sel => input_switch_sel,
		input_switches =>  input_switches
		);
		


	--50 MHz clock
	clk <= not clk after 10 ns;

	process
	begin
	
	rst <= '1';
	input_switches <= x"3A";
	input_switch_sel <= '0';
	wait for 40 ns;
	input_switch_sel <= '1';
	wait for 40 ns;
	input_switches <= x"47";
	wait for 200 ns;
	rst <= '0';

	wait for 200 ns;
	input_switch_sel <= '1';
  
	
	wait;
	
	end process;
end TB;