library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity small8_ram_tb is
end small8_ram_tb;

architecture TB of small8_ram_tb is

	signal address	: STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
	signal clk		: STD_LOGIC  := '1';
	signal data		: STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
	signal wren		: STD_LOGIC := '0';
	signal q		: STD_LOGIC_VECTOR (7 DOWNTO 0);

begin 

UUT : entity work.small8_ram
	port map(
	address => address,
	clock => clk,
	data => data,
	wren => wren,
	q => q
	);

	clk <= not clk after 10 ns;
	
	process
	begin
	
	for i in 0 to 2**15 loop

	address <= std_logic_vector(to_unsigned(i, 16));
	wait for 40 ns;
	
	end loop;
end process;	
end TB;
