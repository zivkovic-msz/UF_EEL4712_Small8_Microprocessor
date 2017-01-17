library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
  -- generic (width    :     positive := 8);
  port(
    clk : in std_logic;
		write_en : in std_logic;
		read_en : in std_logic;
		address : in std_logic_vector(15 downto 0);
		ram_write_en : out std_logic;
		ram_read_en : out std_logic;
		outport0_en : out std_logic;
		outport1_en : out std_logic;
		INPORT0_en : out std_logic;
		INPORT1_en : out std_logic;
		INPORT_MUX_sel : out std_logic;
		INPORT_TRI_en : out std_logic;
		input_switch_sel : in std_logic
		); 
end decoder;

architecture bhv of decoder is
begin
  process(write_en, address, clk)
  begin
  ram_write_en <= '0';
  ram_read_en <= '0';
  outport0_en <= '0';
  outport1_en <= '0';
  INPORT1_en <= '0';
  INPORT0_en <= '0';
  INPORT_TRI_en <= '0';
  INPORT_MUX_sel <= '0';
  
	if (input_switch_sel = '1') then
	INPORT1_en <= '1';
	elsif (input_switch_sel = '0') then
	INPORT0_en <= '1';
	end if;
  
    if (write_en = '1' and address = x"FFFE") then
		outport0_en <= '1';
	elsif (write_en = '1' and address = x"FFFF") then
		outport1_en <= '1';
	elsif (read_en = '1' and address = x"FFFE") then
--		INPORT0_en <= '1';
		INPORT_MUX_sel <= '0';
		INPORT_TRI_en <= '1';
	elsif (read_en = '1' and address = x"FFFF") then
--		INPORT1_en <= '1';
		INPORT_MUX_sel <= '1';
		INPORT_TRI_en <= '1';
	elsif (read_en = '1') then
		ram_read_en <= '1';
	elsif (write_en = '1') then
		ram_write_en <= '1';
	end if;
  end process;
end bhv;