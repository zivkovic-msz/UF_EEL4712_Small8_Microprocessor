library ieee;
use ieee.std_logic_1164.all;

entity datapath is 
	generic ( 
		width : positive := 8);
	port (
		clk : in std_logic;
		rst : in std_logic;
		tri_enable : in std_logic_vector(12 downto 0);
		status_register : out std_logic_vector(3 downto 0);
		external_databus : inout std_logic_vector(width-1 downto 0);
		sel : in std_logic_vector(3 downto 0); --For ALU
		ext_address_bus : out std_logic_vector(15 downto 0);
		write_en : in std_logic; --For 8 bit bi-directional external data bus
		read_en : in std_logic;
		ALU_en, STATUS_en, ADDRL_en, ADDRH_en, IR_en, PCH_en, PCL_en, D_en, A_en, SPH_en, SPL_en, XH_en, XL_en : in std_logic
		);
end datapath;

architecture STR of datapath is

signal internal_databus : std_logic_vector(width-1 downto 0);
signal external_databus_sig : std_logic_vector(width-1 downto 0);
-- signal external_data_bus_sig_out : std_logic_vector(width-1 downto 0);
signal ALU_sig : std_logic_vector(width-1 downto 0);
signal ALU_out_sig : std_logic_vector(width-1 downto 0);
signal ADDRL_sig : std_logic_vector(width-1 downto 0);
signal ADDRH_sig : std_logic_vector(width-1 downto 0);
signal IR_sig : std_logic_vector(width-1 downto 0);
signal PCH_sig : std_logic_vector(width-1 downto 0);
signal PCL_sig : std_logic_vector(width-1 downto 0);
signal D_sig : std_logic_vector(width-1 downto 0);
signal A_sig : std_logic_vector(width-1 downto 0);
signal SPH_sig : std_logic_vector(width-1 downto 0);
signal SPL_sig : std_logic_vector(width-1 downto 0);
signal XH_sig : std_logic_vector(width-1 downto 0);
signal XL_sig : std_logic_vector(width-1 downto 0);
signal carry_sig, overflow_sig, signed_sig, zero_sig : std_logic;
signal status_carry, status_overflow, status_signed, status_zero : std_logic;

begin

	status_register(0) <= status_carry;
	status_register(1) <= status_overflow;
	status_register(2) <= status_signed;
	status_register(3) <= status_zero;
--	external_databus <= external_databus when write_en = '1' else (others => 'Z');
	
	
	-- U_EXT_DATA_BUS_IN_REG : entity work.reg
		-- generic map (
			-- width => width)
		-- port map (
			-- clk => clk,
			-- rst => rst,
			-- en => ext_data_in_en,
			-- input => external_data_bus,
			-- output => external_data_bus_sig_in
		-- );
	
	U_EXT_DATA_BUS_IN : entity work.tristate
		generic map (
			width => width)
		port map (
			input => external_databus,
			en	=> tri_enable(10),
			output => internal_databus
			);

	-- U_EXT_DATA_BUS_OUT_REG : entity work.reg
		-- generic map (
			-- width => width)
		-- port map (
			-- clk => clk,
			-- rst => rst,
			-- en => ext_data_out_en,
			-- input => internal_databus,
			-- output => external_data_bus_sig_out
		-- );
	
	U_EXT_DATA_BUS_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => internal_databus,
			en	=> tri_enable(11),
			output => external_databus
			);
	
	U_ALU : entity work.ALU
		generic map (width => width)
		port map (
			input_A => A_sig,
			input_D => D_sig,
			sel		=> sel,
			output => ALU_sig,
			carry_in => status_carry,
			carry_flag => carry_sig,
			overflow_flag => overflow_sig,
			signed_flag => signed_sig,
			zero_flag => zero_sig
		);
	
	U_ALU_REG : entity work.reg
		generic map (width => width)
		port map (
			clk => clk,
			rst => rst,
			en => ALU_en,
			input => ALU_sig,
			output => ALU_out_sig
		);
	
	U_ALU_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => ALU_out_sig,
			en => tri_enable(12),
			output => internal_databus
			);
		
	U_STATUS_REG : entity work.reg 
		generic map (
			width => 4)
		port map (
			clk => clk,
			rst => rst,
			en => STATUS_en,
			input(0) => carry_sig,
			input(1) => overflow_sig,
			input(2) => signed_sig,
			input(3) => zero_sig,
			output(0) => status_carry,
			output(1) => status_overflow,
			output(2) => status_signed,
			output(3) => status_zero
			);
	
	U_ADDRL : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => ADDRL_en,
			input => internal_databus,
			output => ADDRL_sig
			);
				
	U_ADDRL_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => ADDRL_sig,
			en	=> tri_enable(0),
			output => ext_address_bus(7 downto 0)
			);
	
	U_ADDRH : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => ADDRH_en,
			input => internal_databus,
			output => ADDRH_sig 
			);
			
	U_ADDRH_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => ADDRH_sig,
			en	=> tri_enable(1),
			output => ext_address_bus(15 downto 8)
			);
	
	U_IR	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => IR_en,
			input => internal_databus,
			output => IR_sig
			);
	
	U_PCH	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => PCH_en,
			input => internal_databus,
			output => PCH_sig
			);

	U_PCH_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => PCH_sig,
			en	=> tri_enable(2),
			output => internal_databus
			);
	
	U_PCL	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => PCL_en,
			input => internal_databus,
			output => PCL_sig
			);
			
	U_PCL_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => PCL_sig,
			en	=> tri_enable(3),
			output => internal_databus
			);
	
	U_D	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => D_en,
			input => internal_databus,
			output => D_sig
			);
			
	U_D_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => D_sig,
			en	=> tri_enable(4),
			output => internal_databus
			);
	
	U_A	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => A_en,
			input => internal_databus,
			output => A_sig
			);
			
	U_A_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => A_sig,
			en	=> tri_enable(5),
			output => internal_databus
			);
	
	U_SPH	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => SPH_en,
			input => internal_databus,
			output => SPH_sig
			);
			
	U_SPH_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => SPH_sig,
			en	=> tri_enable(6),
			output => internal_databus
			);
	
	U_SPL	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => SPL_en,
			input => internal_databus,
			output => SPL_sig
			);
			
	U_SPL_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => SPL_sig,
			en	=> tri_enable(7),
			output => internal_databus
			);
	
	U_XH	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => XH_en,
			input => internal_databus,
			output => XH_sig
			);
			
	U_XH_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => XH_sig,
			en	=> tri_enable(8),
			output => internal_databus
			);
	
	U_XL	 : entity work.reg
		generic map (
			width => width)
		port map (
			clk => clk,
			rst => rst,
			en => XL_en,
			input => internal_databus,
			output => XL_sig
			);
			
	U_XL_OUT : entity work.tristate
		generic map (
			width => width)
		port map (
			input => XL_sig,
			en	=> tri_enable(9),
			output => internal_databus
			);
		
end STR;
			
	