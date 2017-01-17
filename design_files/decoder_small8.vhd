library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder_small8 is
  -- generic (width    :     positive := 8);
  port(
		write_en : in std_logic;
		address : in std_logic_vector(15 downto 0);
		ram_write_en : out std_logic;
		outport0_en : out std_logic;
		outport1_en : out std_logic
		);
end decoder_small8;

architecture bhv of decoder_small8 is
begin
  process(write_en, address)
  begin
  ram_write_en <= '0';
  outport0_en <= '0';
  outport1_en <= '0';
    if (write_en = '1' and address = x"FFFE") then
		outport0_en <= '1';
	elsif (write_en = '1' and address = x"FFFF") then
		outport1_en <= '1';
	elsif (write_en = '1') then
		ram_write_en <= '1';
	end if;
  end process;
end bhv;