library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
	port(
	clk,rst : in std_logic;
	input_switch_sel : in std_logic;
	input_switches : in std_logic_vector(7 downto 0);
	led0     : out std_logic_vector(6 downto 0);
	led1     : out std_logic_vector(6 downto 0);
	led2     : out std_logic_vector(6 downto 0);
	led3     : out std_logic_vector(6 downto 0)
	);
end top_level;

architecture str of top_level is

signal address_bus : std_logic_vector(15 downto 0);
signal data_bus : std_logic_vector(7 downto 0);
signal read_en : std_logic;
signal write_en : std_logic;
signal ram_out : std_logic_vector(7 downto 0);
signal INPORT0_sig : std_logic_vector(7 downto 0);
signal INPORT1_sig : std_logic_vector(7 downto 0);
signal OUT0_sig : std_logic_vector(7 downto 0);
signal OUT1_sig : std_logic_vector(7 downto 0);
signal OUTPORT0_en : std_logic;
signal OUTPORT1_en : std_logic;
signal INPORT0_en : std_logic;
signal INPORT1_en : std_logic;
signal INPORT_MUX_sel : std_logic;
signal INPORT_MUX_sig : std_logic_vector(7 downto 0);
signal INPORT_TRI_en : std_logic;
signal RAM_write_en : std_logic;
signal ram_read_en : std_logic;

signal logic_zero : std_logic;

begin

logic_zero <= '0';

U_REG_INPORT0 : entity work.reg
	generic map (
		width => 8)
	port map(
		clk => clk,
		rst => logic_zero,
		en => INPORT0_en,
		input => input_switches,
		output => INPORT0_sig
		);
				
U_REG_INPORT1 : entity work.reg
	generic map (
		width => 8)
	port map(
		clk => clk,
		rst => logic_zero,
		en => INPORT1_en,
		input => input_switches,
		output => INPORT1_sig
		);
		
U_INPORT_MUX2x1 : entity work.mux2x1
	generic map (
		width => 8)
	port map(
		input1 => INPORT0_sig,
		input2 => INPORT1_sig,
		sel => INPORT_MUX_sel,
		output => INPORT_MUX_sig
		);

U_INPORT_TO_DATABUS : entity work.tristate
	generic map (
		width => 8)
	port map (
		input => INPORT_MUX_sig,
		en => INPORT_TRI_en,
		output => data_bus
		);	

U_DECODER_SMALL8 : entity work.decoder
	port map(
	  clk => clk,
		write_en => write_en,
		read_en => read_en,
		address => address_bus,
		ram_write_en => RAM_write_en,
		ram_read_en => ram_read_en,
		outport0_en => OUTPORT0_en,
		outport1_en => OUTPORT1_en,
		inport0_en => INPORT0_en,
		inport1_en => INPORT1_en,
		inport_mux_sel => INPORT_MUX_sel,
		INPORT_TRI_en => INPORT_TRI_en,
		input_switch_sel => input_switch_sel
		);

U_RAM : entity work.small8_ram
	port map(
		address	=> address_bus(7 downto 0),
		clock	=> clk,
		data	=> data_bus,
		wren	=> RAM_write_en,
		q		=> ram_out
		);
		
U_CPU : entity work.CPU
	generic map(
		width => 8)
	port map(
		clk => clk,
		rst => rst,
		address_bus => address_bus,
		data_bus => data_bus,
		write_en => write_en,
		read_en => read_en
		);

-- U_RAM_MUX : entity work.MUX2x1
	-- port map(
		-- input1 => data_bus,
		-- input2 => ram_mux_in_1,
		-- sel => write_en,
		-- output => data_bus
	-- );
	
U_RAM_OUTPUT : entity work.tristate
	generic map (
		width => 8)
	port map (
		input => ram_out,
		en => ram_read_en,
		output => data_bus
		);	
		
	U_REG_OUTPORT0 : entity work.reg
	generic map (
		width => 8)
	port map(
		clk => clk,
		rst => rst,
		en => OUTPORT0_en,
		input => data_bus(7 downto 0),
		output => OUT0_sig
		);
	
	U_REG_OUTPORT1 : entity work.reg
	generic map (
		width => 8)
	port map(
	clk => clk,
	rst => rst,
	en => OUTPORT1_en,
	input => data_bus(7 downto 0),
	output => OUT1_sig
	);

    U_LED0 : entity work.decoder7seg 
	port map (
        input  => OUT1_sig(3 downto 0),
        output => led0);

    U_LED1 : entity work.decoder7seg 
	port map (
        input  => OUT1_sig(7 downto 4),
        output => led1);
		
    U_LED2 : entity work.decoder7seg 
	port map (
        input  => OUT0_sig(3 downto 0),
        output => led2);
		
    U_LED3 : entity work.decoder7seg 
	port map (
        input  => OUT0_sig(7 downto 4),
        output => led3);

end str;