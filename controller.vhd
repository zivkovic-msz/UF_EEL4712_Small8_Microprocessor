library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
	generic ( 
		width : positive := 8);
	port(clk,rst : in std_logic;
		tri_enable : out std_logic_vector(13 downto 0);
		-- status_register : in std_logic_vector(3 downto 0);
		overflow_en, signed_en, carry_en, zero_en : out std_logic;
		status_carry, status_overflow, status_signed, status_zero : in std_logic_vector(0 downto 0);
		opcode : in std_logic_vector(width-1 downto 0);
		ALU_sel : out std_logic_vector(3 downto 0);
		STACK_CALL_PC_MUX_SEL : out std_logic;
		ADDR_sel,PC_ADD_sel,PC_LD_MUX_sel,X_LD_MUX_sel,SP_LD_MUX_sel : out std_logic_vector(1 downto 0); 
		ALU_en, STATUS_en, ADDRL_en,
		ADDRH_en, IR_en, PCH_en, PCL_en,
		D_en, A_en, SPH_en, SPL_en, XH_en,
		XL_en, BTL_en, BTH_en : out std_logic;
		write_en,read_en,B_en : out std_logic
		);
end controller;

architecture bhv of controller is 

	type STATE_TYPE is (INIT,OPCODE_FETCH, OPCODE_FETCH_2, OPCODE_FETCH_3, OPCODE_FETCH_4, DECODE,
						PC_ADD_ONE_1,PC_ADD_ONE_2,PC_ADD_TWO_1,PC_ADD_TWO_2,PC_ADD_THREE_1,PC_ADD_THREE_2, 
						LDAI,LDAA,LDAA_2,LDAA_3,LDAA_4,LDAD,STAA,STAA_2,STAA_3,
						STAR_D,ADCR_D,SBCR_D,CMPR_D,ANDR_D,ORR_D,XORR_D,SLRL,SRRL,ROLC,RORC,
						BCCA,BCCA_2,BCCA_3,BCSA,
						BEQA,BEQA_2,BEQA_3,BMIA,BNEA,BNEA_2,BNEA_3,
						BPLA,BPLA_2,BPLA_3,BVCA,BVSA,DECA,INCA,SETC,CLRC,
						LDSI,LDSI_2,CALL,Call_2,Call_3,Call_4,Call_5,Call_6,Call_7,Call_8,Call_9,
						RET,RET_2,RET_3,RET_4,RET_5,RET_6,LDXI,LDXI_2,
						LDAA_X,LDAA_X_2,LDAA_X_3,
						STAA_X,INCX,DECX,LOAD_ALU_TO_A);
	signal state, next_state : STATE_TYPE;

begin

	process (clk,rst)
	begin
		if (rst = '1') then
			state <= INIT;
		elsif (clk ='1' and clk'event) then
			state <= next_state;
		end if;
	end process;
	
	process(state,next_state)
	begin
	
	next_state <= state;
	
	tri_enable <= (others => '0');
	ALU_sel <= (others => '0');
	--ADDR_sel <= (others => '0');
	ADDR_sel <= "01";
	PC_ADD_sel <= (others => '0');
	PC_LD_MUX_sel <= (others => '0');
	X_LD_MUX_sel <= (others => '0');
	SP_LD_MUX_sel <= (others => '0');
	STACK_CALL_PC_MUX_SEL <= '0';
	
	ALU_en <= '0';
	STATUS_en <= '0';
	ADDRL_en <= '0';
	ADDRH_en <= '0';
	IR_en <= '0';
	PCH_en <= '0';
	PCL_en <= '0';
	SPH_en <= '0';
	SPL_en <= '0';
	D_en <= '0';
	A_en <= '0';
	XH_en  <= '0';
	XL_en <= '0';
	B_en <= '0';
	BTL_en <= '0';
	BTH_en <= '0';
	overflow_en <= '0';
	signed_en <= '0';
	carry_en <= '0';
	zero_en <= '0';
	
	write_en <= '0';
	read_en <= '1';
	
	case state is
	  
		when INIT =>
		--Program counter is set to 0 and the ram will run the first instruction in the program
		next_state <= OPCODE_FETCH; 
		
		when OPCODE_FETCH =>
		--Load new values to the PC registers
		PCH_en <= '1';
		PCL_en <= '1';
		PC_ADD_sel <= "00"; --add 0
		PC_LD_MUX_sel <= "00";
		next_state <= OPCODE_FETCH_2;
		
		when OPCODE_FETCH_2 =>
		--put PC on the address bus	
		ADDR_sel <= "01";
		read_en <= '1';
		next_state <= OPCODE_FETCH_3;
		
		when OPCODE_FETCH_3 =>
		--In this state, the ram will have clocked and have the proper output
		--Load the output of the ram to the IR
		IR_en <= '1';
		write_en <= '0';
		tri_enable(10) <= '1';
		read_en <= '1';
		
		next_state <=  OPCODE_FETCH_4;
		-- next_state <=  DECODE;
		
		when OPCODE_FETCH_4 =>
		--Increment PC (+1)
		PC_ADD_sel <= "01";
		--Load PC sum result to PC register
		PC_LD_MUX_sel <= "00"; 
		--Enable register so that it takes the new value at the next clock cycle
		PCH_en <= '1';
		PCL_en <= '1';
		read_en <= '1';
		
		next_state <=  DECODE;
		
		when DECODE =>
		read_en <= '1';
			if (opcode = x"84") then
				next_state <= LDAI;
			elsif(opcode =x"88") then
				next_state <= LDAA;
			elsif(opcode =x"81") then
				next_state <= LDAD; 			
			elsif(opcode =x"F6") then
				next_state <= STAA;			
			elsif(opcode =x"F1") then
				next_state <= STAR_D;			
			elsif(opcode =x"01") then
				next_state <= ADCR_D;			
			elsif(opcode =x"11") then
				next_state <= SBCR_D;
			elsif(opcode =x"91") then
				next_state <= CMPR_D;
			elsif(opcode =x"21") then
				next_state <= ANDR_D;
			elsif(opcode =x"31") then
				next_state <= ORR_D;
			elsif(opcode =x"41") then
				next_state <= XORR_D;
			elsif(opcode =x"51") then
				next_state <= SLRL;
			elsif(opcode =x"61") then
				next_state <= SRRL;
			elsif(opcode =x"52") then
				next_state <= ROLC;
			elsif(opcode =x"62") then
				next_state <= RORC;
			elsif(opcode =x"B0") then
				next_state <= BCCA;
			elsif(opcode =x"B1") then
				next_state <= BCSA;
			elsif(opcode =x"B2") then
				next_state <= BEQA;
			elsif(opcode =x"B3") then
				next_state <= BMIA;
			elsif(opcode =x"B4") then
				next_state <= BNEA;
			elsif(opcode = x"B5") then
				next_state <= BPLA;
			elsif(opcode = x"B6") then
				next_state <= BVCA;
			elsif(opcode = x"B7") then
				next_state <= BVSA;
			elsif(opcode = x"FB") then
				next_state <= DECA;
			elsif(opcode = x"FA") then
				next_state <= INCA;
			elsif(opcode = x"F8") then
				next_state <= SETC;
			elsif(opcode = x"F9") then
				next_state <= CLRC;
			elsif(opcode = x"89") then
				next_state <= LDSI;
			elsif(opcode = x"C8") then
				next_state <= CALL;
			elsif(opcode = x"C0") then
				next_state <= RET;
			elsif(opcode = x"8A") then
				next_state <= LDXI;
			elsif(opcode = x"BC") then
				next_state <= LDAA_X;
			elsif(opcode = x"EC") then
				next_state <= STAA_X;
			elsif(opcode = x"FC") then
				next_state <= INCX;
			elsif(opcode = x"FD") then
				next_state <= DECX;
			else
				next_state <= OPCODE_FETCH;
			end if;
			
		when LDAI =>
		--Load the data at the memory location pointed to by the PC value mem[PC]
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			A_en <= '1'; --Load data from ram to A register
			next_state <= PC_ADD_ONE_1;
		
		when LDAA => 
		--First load the lower byte to the address bus
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			ADDRL_en <= '1';
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			next_state <= LDAA_2;

		
		when LDAA_2 =>
			--Load the high byte to the address bus
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			ADDRH_en <= '1';
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			next_state <= LDAA_3;
			
		when LDAA_3 =>
			--Now that we loaded the new address we want to access,
			--change the address select mux to output the ADDR registers
			ADDR_sel <= "00";
			
			next_state <= LDAA_4;
			
		when LDAA_4 =>
			--The ram has clocked and will output the value at the
			--loaded at the new address
			ADDR_sel <= "00";
			--Load this value to the A register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			A_en <= '1';
			
			next_state <= OPCODE_FETCH;			
		
		when LDAD =>
		--Store the data from register D into register A
			tri_enable(4) <= '1'; --enable 4 register out
			A_en <= '1'; --enable A reg to load value
			overflow_en <= '0';
			zero_en <= '1';
			signed_en <= '1';
			carry_en <= '0';		
			next_state <= OPCODE_FETCH;
		
		when STAA =>
			--We want to store the value in A at a particular address in the RAM
			--First get the low address byte
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			ADDRL_en <= '1';
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			overflow_en <= '0';
			zero_en <= '0';
			signed_en <= '0';
			carry_en <= '0';			
			
			next_state <= STAA_2;
		
		when STAA_2 =>
		--Load the high byte to the address bus
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			ADDRH_en <= '1';
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			overflow_en <= '0';
			zero_en <= '0';
			signed_en <= '0';
			carry_en <= '0';		
		
		next_state <= STAA_3;
		
		when STAA_3 => 
		--Now that we have the proper address prepared,
		--we want to load (write) the data in the A register to this new address in RAM
			ADDR_sel <= "00"; --Address bus passes ADDR registers
			write_en <= '1'; --enable write
			read_en <= '0'; --disable read
			tri_enable(11) <= '1'; -- enable ext_data_bus_out
			tri_enable(5) <= '1'; --enable A register out
			overflow_en <= '0';
			zero_en <= '0';
			signed_en <= '0';
			carry_en <= '0';		
			
			
		next_state <= OPCODE_FETCH;
		
		when STAR_D =>
		--Store the data from register A into register D
			tri_enable(5) <= '1'; --enable A register out
			D_en <= '1'; --enable D reg to load value
			next_state <= OPCODE_FETCH;
			overflow_en <= '0';
			zero_en <= '0';
			signed_en <= '0';
			carry_en <= '0';
			
		
		when ADCR_D =>
		next_state <= OPCODE_FETCH;
		--Add with carry ALU operation
			ALU_sel <= "0000"; --Add with carry
			ALU_en <= '1'; --enable ALU output register to load the ALU result at the next clock cycle
			next_state <= LOAD_ALU_TO_A;
			overflow_en <= '1';
			zero_en <= '1';
			signed_en <= '1';
			carry_en <= '1';
			
		when SBCR_D =>
		next_state <= OPCODE_FETCH;
		--Subtract with Borrow ALU operation
			ALU_sel <= "0001"; --Subtract with Borrow
			ALU_en <= '1'; --enable ALU output register to load the ALU result at the next clock cycle
			next_state <= LOAD_ALU_TO_A;
			overflow_en <= '1';
			zero_en <= '1';
			signed_en <= '1';
			carry_en <= '1';

		
		when CMPR_D =>
		--ALU Compare: same as subtract but only change status flags (A is unchanged)	
			ALU_sel <= "0010"; --ALU Compare
			overflow_en <= '1';
			zero_en <= '1';
			signed_en <= '1';
			carry_en <= '1';
			next_state <= OPCODE_FETCH;
		
		when ANDR_D =>
		--AND the data from register A with the data from register D
			ALU_sel <= "0011"; --AND operation 
			ALU_en <= '1'; --enable ALU output register to load the AND result at the next clock cycle
			next_state <= LOAD_ALU_TO_A;
			overflow_en <= '0';
			zero_en <= '1';
			signed_en <= '1';
			carry_en <= '0';
		
		when LOAD_ALU_TO_A =>
		--In this state we are loading the previous ALU operation into the A register
			A_en <= '1'; --Enable A register
			tri_enable(12) <= '1'; --Enable the output of the ALU so the A register can load it		
			next_state <= OPCODE_FETCH;
		
		when ORR_D =>

			ALU_sel <= "0100"; --OR operation 
			ALU_en <= '1'; --enable ALU output register to load the AND result at the next clock cycle	
			next_state <= LOAD_ALU_TO_A;
			overflow_en <= '0';
			zero_en <= '1';
			signed_en <= '1';
			carry_en <= '0';
		
		when XORR_D =>
			ALU_sel <= "0101"; --XOR operation 
			ALU_en <= '1'; --enable ALU output register to load the AND result at the next clock cycle	
			next_state <= LOAD_ALU_TO_A;
			overflow_en <= '0';
			zero_en <= '1';
			signed_en <= '1';
			carry_en <= '0';
		
		when SLRL =>
			next_state <= OPCODE_FETCH;
		
		when SRRL =>
			next_state <= OPCODE_FETCH;
		
		when ROLC =>
			next_state <= OPCODE_FETCH;
		
		when RORC =>
		--Rotate right through carry 
			ALU_sel <= "1001";
			ALU_en <= '1';
			carry_en <= '1';
			next_state <= LOAD_ALU_TO_A;
		
		when BCCA =>
		--Branch if the carry flag is cleared
		--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			if(status_carry(0) = '0') then
			next_state <= BCCA_2;
			--First load the lower byte to the Branch Target lower byte
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTL_en <= '1';
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			else
			next_state <= PC_ADD_TWO_1;
			end if;
		
		when BCCA_2 =>
		--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
	
			--Load the high byte to the branch target
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTH_en <= '1';
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			next_state <= BCCA_3;
		
		when BCCA_3 =>
		--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			--Load the branch target to the program counter
			PC_LD_MUX_sel <= "11";
			PCL_en <= '1';
			PCH_en <= '1';
			PC_ADD_sel <= "00";
			
			next_state <= OPCODE_FETCH;
		
		when BCSA =>
		--Branch if the carry flag is set
		--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			next_state <= PC_ADD_TWO_1;
		
		when BEQA =>
		--Branch if the zero flag is set
		--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			if(status_zero(0) = '1') then
			next_state <= BEQA_2;
			--First load the lower byte to the Branch Target lower byte
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTL_en <= '1';
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			else
			next_state <= PC_ADD_TWO_1;
			end if;
			
		when BEQA_2		=>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			--Load the high byte to the branch target
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTH_en <= '1';
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			next_state <= BEQA_3;

		when BEQA_3		=>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			--Load the branch target to the program counter
			PC_LD_MUX_sel <= "11";
			PCL_en <= '1';
			PCH_en <= '1';
			PC_ADD_sel <= "00";
			
			next_state <= OPCODE_FETCH;
		
		when BMIA =>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			next_state <= PC_ADD_TWO_1;
		
		when BNEA =>
		--Branch if the zero flag is clear
		--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			if(status_zero(0) = '0') then
			next_state <= BNEA_2;
			--First load the lower byte to the Branch Target lower byte
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTL_en <= '1';
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			else
			next_state <= PC_ADD_TWO_1;
			end if;
			
		when BNEA_2		=>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			--Load the high byte to the branch target
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTH_en <= '1';
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			next_state <= BNEA_3;

		when BNEA_3		=>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			--Load the branch target to the program counter
			PC_LD_MUX_sel <= "11";
			PCL_en <= '1';
			PCH_en <= '1';
			PC_ADD_sel <= "00";
			
			next_state <= OPCODE_FETCH;
		
		when BPLA =>
		--Branch if the signed flag is clear
		--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			if(status_signed(0) = '0') then
			next_state <= BPLA_2;
			--First load the lower byte to the Branch Target lower byte
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTL_en <= '1';
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			else
			next_state <= PC_ADD_TWO_1;
			end if;
			
		when BPLA_2 =>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			--Load the high byte to the branch target
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTH_en <= '1';
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			next_state <= BPLA_3;		
		
		when BPLA_3 =>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			--Load the branch target to the program counter
			PC_LD_MUX_sel <= "11";
			PCL_en <= '1';
			PCH_en <= '1';
			PC_ADD_sel <= "00";
			
			next_state <= OPCODE_FETCH;		
		
		when BVCA =>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			next_state <= PC_ADD_THREE_1;
		
		when BVSA =>
			--Status flags are not changed during branch instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			next_state <= PC_ADD_THREE_1;
			
		when DECA =>
		--Decrement A by 1
			ALU_sel <= "1010";
			ALU_en <= '1';
			carry_en <= '0';
			signed_en <= '1';
			overflow_en <= '0';
			zero_en  <= '1';
			next_state <= LOAD_ALU_TO_A;
		
		when INCA =>
			next_state <= OPCODE_FETCH;
		
		when SETC =>
		--Set the carry flag, ALU operation
			ALU_sel <= "1100"; --Clear carry flag
			--Update the status register at the next clock cycle
			carry_en <= '1';
			signed_en <= '0';
			overflow_en <= '0';
			zero_en  <= '0';
			next_state <= OPCODE_FETCH;
		when CLRC =>
		--Clear the carry flag, ALU operation
			ALU_sel <= "1101"; --Clear carry flag
			--Update the status register at the next clock cycle
			carry_en <= '1';
			signed_en <= '0';
			overflow_en <= '0';
			zero_en  <= '0';
			next_state <= OPCODE_FETCH;
		when LDSI =>
		--First load the lower byte to the SPL register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			SPL_en <= '1';
			SP_LD_MUX_sel <= "01";
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			next_state <= LDSI_2;
		
		when LDSI_2 =>
		--Load the higher byte to the SPH register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			SPH_en <= '1';
			SP_LD_MUX_sel <= "00";
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			next_state <= OPCODE_FETCH;
		
		when CALL =>
		--Stack pointer - 1
			SP_LD_MUX_sel <= "11";
			SPH_en <= '1';
			SPL_en <= '1';
		
			next_state <= Call_2;
		
		when Call_2 =>
		--load lower byte of program counter to current stack pointer location
			read_en <= '0';
			write_en <= '1';
			ADDR_sel <= "10"; --load the SP reg on the address bus
			
			tri_enable(13) <= '1'; --Load PCL+2 to internal databus
			STACK_CALL_PC_MUX_SEL <= '1';
			tri_enable(11) <= '1'; --ext_data_bus_out enable
			
			next_state <= Call_3;
			
		when Call_3 =>
		--Stack Pointer -1 
			SP_LD_MUX_sel <= "11";
			SPH_en <= '1';
			SPL_en <= '1';
			
			next_state <= Call_4;
		
		when Call_4 =>
		--load the high byte of the program counter to current stack pointer location
			read_en <= '0';
			write_en <= '1';
			ADDR_sel <= "10"; --load the SP reg on the address bus
			
			tri_enable(13) <= '1'; --Load PCH to internal databus
			STACK_CALL_PC_MUX_SEL <= '0';
			tri_enable(11) <= '1'; --ext_data_bus_out enable
			
			 -- --Increment PC (+1)
			 -- PC_ADD_sel <= "01";
			 -- --Load PC sum result to PC register
			 -- PC_LD_MUX_sel <= "00"; 
			 -- --Enable register so that it takes the new value at the next clock cycle
			 -- PCH_en <= '1';
			 -- PCL_en <= '1';
			
			PC_ADD_sel <= "00";
			
			next_state <= Call_5;
			
		when Call_5 =>
		--Wait for RAM output 
			next_state <= Call_6;
			PC_ADD_sel <= "00";
		
		when Call_6 =>
		--Jump to the function address location 
		--First load the low byte to temp register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTL_en <= '1';
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
			-- PC_ADD_sel <= "00";
			
			next_state <= Call_7;
		
		when Call_7 =>
		--Load the high byte to temp register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			BTH_en <= '1';
			
			next_state <= Call_8;
		
		when Call_8 =>
		--Store temp register values to program counter
			tri_enable(0) <= '1'; --BTL output enable
			PCL_en <= '1';
			-- PC_LD_MUX_sel <= "01";
			PC_LD_MUX_sel <= "11";
			
			next_state <= Call_9;
		
		when Call_9 =>
			tri_enable(1) <= '1'; --BTH output enable
			PCH_en <= '1';
			-- PC_LD_MUX_sel <= "10";
			PC_LD_MUX_sel <= "11";
			
			next_state <= OPCODE_fetch;
				
		when RET =>
		--Retrieve previous memory location from stack
			ADDR_sel <= "10"; -- Point to current stack location
			next_state <= RET_2;
		
		when RET_2 =>
		--Store high byte to temporary register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1';
			BTH_en <= '1';
	
		--Stack Pointer+1 
			SP_LD_MUX_sel <= "10";
			SPH_en <= '1';
			SPL_en <= '1';
		
			ADDR_sel <= "10"; -- Point to new stack location
			
			next_state <= RET_3;
		
		when RET_3 =>
			ADDR_sel <= "10"; -- Point to current stack location
			next_state <= RET_4;
		
		when RET_4 =>
		--Store low byte to temporary register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1';
			BTL_en <= '1';
	
		--Stack Pointer+1 
			SP_LD_MUX_sel <= "10";
			SPH_en <= '1';
			SPL_en <= '1';
			
			next_state <= RET_5;
		
		when RET_5 =>
		-- --Store temp register values to program counter
			-- tri_enable(0) <= '1'; --BTL output enable
			-- PCL_en <= '1';
			-- PC_LD_MUX_sel <= "10";
			
			-- next_state <= RET_6;
			
		--Store temp register values to program counter
			tri_enable(0) <= '1'; --BTL output enable
			PCL_en <= '1';
			-- PC_LD_MUX_sel <= "01";
			PC_LD_MUX_sel <= "11";
			
			next_state <= RET_6;
		
		when RET_6 =>
			-- tri_enable(1) <= '1'; --BTH output enable
			-- PCH_en <= '1';
			-- PC_LD_MUX_sel <= "01";
			
			-- next_state <= OPCODE_fetch;
			tri_enable(1) <= '1'; --BTH output enable
			PCH_en <= '1';
			-- PC_LD_MUX_sel <= "10";
			PC_LD_MUX_sel <= "11";
			
			next_state <= OPCODE_fetch;

		
		when LDXI =>
		--First load the lower byte to the XL register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			XL_en <= '1';
			X_LD_MUX_sel <= "01";
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';
			
			next_state <= LDXI_2;			
		
		when LDXI_2 =>
		--Load the high byte to XH register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			XH_en <= '1';
			X_LD_MUX_sel <= "00";
			
			--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';			
			
			next_state <= OPCODE_FETCH;
		
		when LDAA_X =>
		--Load B register with the offset value (Assuming offset cannot be greater than 8 bit (256))
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			B_en <= '1';
			
			-- --Increment PC (+1)
			-- PC_ADD_sel <= "01";
			-- --Load PC sum result to PC register
			-- PC_LD_MUX_sel <= "00"; 
			-- --Enable register so that it takes the new value at the next clock cycle
			-- PCH_en <= '1';
			-- PCL_en <= '1';
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';			
			
			next_state <= LDAA_X_2;
			
		when LDAA_X_2 =>
		--Point the value of X+offset to the address bus of the RAM
			ADDR_sel <= "11";
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';			
			
			next_state <= LDAA_X_3;

		when LDAA_X_3 =>
		--Take the output of the ram and load it to the A register
			tri_enable(10) <= '1'; --enable ext_data_bus_in 
			read_en <= '1'; --enable ram output tristate
			A_en <= '1';
		
		--Increment PC (+1)
			PC_ADD_sel <= "01";
			--Load PC sum result to PC register
			PC_LD_MUX_sel <= "00"; 
			--Enable register so that it takes the new value at the next clock cycle
			PCH_en <= '1';
			PCL_en <= '1';	
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';			
			
			next_state <= OPCODE_FETCH;
		
		when STAA_X =>
			next_state <= PC_ADD_TWO_1;
		
		when INCX =>
		--Increment X by 1
			X_LD_MUX_sel <= "10"; --select X+1 to load to X registers
			XH_en <= '1';
			XL_en <= '1';
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';			
			
			next_state <= OPCODE_FETCH;
		
		when DECX =>
		--Decrement X by 1
			X_LD_MUX_sel <= "11"; --select X+1 to load to X registers
			XH_en <= '1';
			XL_en <= '1';
			
		--Status flags are not changed during index instructions
			signed_en <= '0';
			zero_en <= '0';
			carry_en <= '0';
			overflow_en <= '0';			
			
			next_state <= OPCODE_FETCH;
		
		when PC_ADD_ONE_1 =>
		--Make sure to load the PC in this state
		PC_ADD_sel <= "00";
		--Load PC sum result to PC register
		PC_LD_MUX_sel <= "00"; 
		PCH_en <= '1';
		PCL_en <= '1';
		next_state <= PC_ADD_ONE_2;
		
		when PC_ADD_ONE_2 =>
		--Add 1 to the program counter
		PC_ADD_sel <= "01";
		PC_LD_MUX_sel <= "00";
		PCH_en <= '1';
		PCL_en <= '1';
		next_state <= OPCODE_FETCH;
		
		when PC_ADD_TWO_1 =>
		--Make sure to load the PC in this state
		PC_ADD_sel <= "00";
		--Load PC sum result to PC register
		PC_LD_MUX_sel <= "00"; 
		PCH_en <= '1';
		PCL_en <= '1';
		next_state <= PC_ADD_TWO_2;
		
		when PC_ADD_TWO_2 =>
		--Add 1 to the program counter
		PC_ADD_sel <= "10";
		PC_LD_MUX_sel <= "00"; 
		PCH_en <= '1';
		PCL_en <= '1';
		next_state <= OPCODE_FETCH;
		
		when PC_ADD_THREE_1 =>
		--Make sure to load the PC in this state
		PC_ADD_sel <= "00";
		--Load PC sum result to PC register
		PC_LD_MUX_sel <= "00"; 
		PCH_en <= '1';
		PCL_en <= '1';
		next_state <= PC_ADD_THREE_2;
		
		when PC_ADD_THREE_2 =>
		--Add 1 to the program counter
		PC_ADD_sel <= "11";
		PC_LD_MUX_sel <= "00"; 
		PCH_en <= '1';
		PCL_en <= '1';
		next_state <= OPCODE_FETCH;
		
		when others => next_state <= OPCODE_FETCH; --DO WE NEED TO PUT NULL INSTEAD?
	
	end case;
	end process;
end bhv;	