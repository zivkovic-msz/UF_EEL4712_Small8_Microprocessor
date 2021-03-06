library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity datapath_tb is
end datapath_tb;

architecture TB of datapath_tb is

	constant WIDTH  : positive := 8;
	signal clk : std_logic := '0';
	signal rst : std_logic := '0';
	signal tri_enable : std_logic_vector(12 downto 0) := (others => '0');
	signal status_register : std_logic_vector(3 downto 0) := (others => '0');
	signal external_databus : std_logic_vector(width-1 downto 0);
	signal sel : std_logic_vector(3 downto 0) := (others => '0');
	signal ext_address_bus : std_logic_vector(15 downto 0);
	signal write_en : std_logic := '0';
	signal read_en : std_logic := '0';
	signal ALU_en, STATUS_en, ADDRL_en, ADDRH_en, IR_en, PCH_en, PCL_en, D_en, A_en, SPH_en, SPL_en, XH_en, XL_en : std_logic := '0';

begin  -- TB

UUT : entity work.datapath
    generic map (WIDTH => WIDTH)
    port map (
		clk => clk,
		rst => rst,
		tri_enable => tri_enable,
		status_register => status_register,
		external_databus => external_databus,
		sel => sel,
		ext_address_bus => ext_address_bus,
		write_en => write_en,
		read_en => read_en,
		-- ext_data_in_en => ext_data_in_en,
		-- ext_data_out_en => ext_data_out_en,
		ALU_en => ALU_en,
		STATUS_en => STATUS_en,
		ADDRL_en => ADDRL_en,
		ADDRH_en => ADDRH_en,
		IR_en => IR_en,
		PCH_en => PCH_en,
		PCL_en => PCL_en,
		D_en => D_en,
		A_en => A_en,
		SPH_en => SPH_en,
		SPL_en => SPL_en,
		XH_en => XH_en,
		XL_en => XL_en
		);
	
	--50 MHz clock
	clk <= not clk after 10 ns;
	
	process
	begin
	
	external_databus <= "10101010";
	rst <= '1';
	wait for 200 ns;
	rst <= '0';
	
	tri_enable(10) <= '1'; --enable tristate to load external data bus to internal data bus
	
	external_databus <= "00000001";
	ADDRL_en <= '1';
	wait for 200 ns;
	ADDRL_en <= '0';
	
	external_databus <= "00000010";
	ADDRH_en <= '1';
	wait for 200 ns;
	ADDRH_en <= '0';
	
	external_databus <= "00000011";
	IR_en <= '1'; --load value from external bus to IR register
	wait for 200 ns;
	IR_en <= '0';
	
	external_databus <= "00000100";
	PCH_en <= '1';
	wait for 200 ns;
	PCH_en <= '0';
	
	external_databus <= "00000101";
	PCL_en <= '1';
	wait for 200 ns;
	PCL_en <= '0';
	
	external_databus <= "00000110";
	D_en <= '1';
	wait for 200 ns;
	D_en <= '0';
	
	external_databus <= "00000111";
	A_en <= '1';
	wait for 200 ns;
	A_en <= '0';

	external_databus <= "00001000";
	SPH_en <= '1';
	wait for 200 ns;
	SPH_en <= '0';

	external_databus <= "00001001";
	SPL_en <= '1';
	wait for 200 ns;
	SPL_en <= '0';

	external_databus <= "00001010";
	XH_en <= '1';
	wait for 200 ns;
	XH_en <= '0';

	external_databus <= "00001011";
	XL_en <= '1';
	wait for 200 ns;
	XL_en <= '0';
  
	tri_enable(10) <= '0'; --Test Read
	tri_enable(11) <= '1';
	external_databus <= (others => 'Z'); --for signals of type INOUT, you need to set it to Z when you are not writing to it.
	
	tri_enable(0) <= '1'; --address write
	tri_enable(1) <= '1'; 
	wait for 200 ns;
	tri_enable(0) <= '0'; 
	tri_enable(1) <= '0';
	
	tri_enable(2) <= '1'; 
	wait for 200 ns;
	tri_enable(2) <= '0'; 
	
	tri_enable(3) <= '1'; 
	wait for 200 ns;
	tri_enable(3) <= '0';
	
	tri_enable(4) <= '1'; 
	wait for 200 ns;
	tri_enable(4) <= '0';
	
	tri_enable(5) <= '1'; 
	wait for 200 ns;
	tri_enable(5) <= '0';
	
	tri_enable(6) <= '1'; 
	wait for 200 ns;
	tri_enable(6) <= '0';
	
	tri_enable(7) <= '1'; 
	wait for 200 ns;
	tri_enable(7) <= '0';
	
	tri_enable(8) <= '1'; 
	wait for 200 ns;
	tri_enable(8) <= '0';
	
	tri_enable(9) <= '1'; 
	wait for 200 ns;
	tri_enable(9) <= '0';
	
--	tri_enable(12) <= '1'; 
--	wait for 200 ns;
--	tri_enable(12) <= '0';
	
	
	--TEST OUT ALU OUTPUT TO EXTERNAL DATABUS
	tri_enable(11) <= '0';
	tri_enable(10) <= '1';
	
	external_databus <= "00100111";
	D_en <= '1';
	wait for 200 ns;
	D_en <= '0';
	
	tri_enable(10) <= '0';
	
	ALU_en <= '1';
	wait for 200 ns;
	tri_enable(12) <= '1';
	ALU_en <= '0';
	wait for 200 ns;
	tri_enable(11) <= '1';
	external_databus <= (others => 'Z');
	
	
	
	
	
	
	wait;
		
	end process;
end TB;