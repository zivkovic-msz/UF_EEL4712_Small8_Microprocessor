library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	generic (
		WIDTH : positive := 8
	);
	port (
		input_A : in std_logic_vector(WIDTH-1 downto 0);
		input_D : in std_logic_vector(WIDTH-1 downto 0);
		sel : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(WIDTH-1 downto 0);
		carry_in : in std_logic_vector(0 downto 0);
		carry_flag, overflow_flag, signed_flag, zero_flag   : out std_logic_vector(0 downto 0)		
	);
end alu;

architecture BHV of alu is
signal temp : std_logic_vector(WIDTH-1 downto 0);
signal output_sig : std_logic_vector(WIDTH-1 downto 0);
signal temp_add_sig : std_logic_vector(WIDTH downto 0);
signal carry_sig : std_logic_vector(0 downto 0);
begin
	process(input_A,input_D,sel,carry_in)
	    variable carry_var : std_logic_vector(0 downto 0);
		variable temp_add : std_logic_vector(WIDTH downto 0);
		variable temp_multiply : std_logic_vector(WIDTH*2-1 downto 0);
		variable temp_ones : std_logic_vector(WIDTH-1 downto 0) := (others => '1');
		variable temp_reverse : std_logic_vector(WIDTH-1 downto 0);
		variable temp_swap : std_logic_vector((WIDTH-1) downto ((WIDTH/2)));	
		variable temp_rotate_four : std_logic_vector(3 downto 0);	
		variable temp_rotate_rest : std_logic_vector(WIDTH-5 downto 0);
	begin
	--set a default value for flags to prevent latches
	carry_flag(0) <= '0'; 
	overflow_flag(0) <= '0';
	-- signed_flag <= '0';
	-- zero_flag <= '0';
	carry_var := "0";
	output_sig <= (others => '0');
	temp <= (others => '0');
	carry_sig <= carry_var;
	
		case sel is 
			--Add with Carry
			when "0000" =>
			  --carry_var := (others => carry_in);
			  carry_var := carry_in;
--			  temp_add_sig <= (others => '0');
--			  temp_add_sig <= temp_add_sig & carry_in;
				--carry_var(0) <= (carry_in); --use the carry flag as the carry in
				temp_add := std_logic_vector(resize(unsigned(carry_var),WIDTH+1)+
											resize(unsigned(input_A), WIDTH+1) +
											resize(unsigned(input_D),WIDTH +1));
				output_sig <= temp_add(WIDTH-1 downto 0);
				--overflow_flag <= temp_add(WIDTH-1) xor (input_A(WIDTH-1) and input_D(WIDTH-1));
				if(input_A(WIDTH-1) ='1' and input_D(WIDTH-1) ='1' and temp_add(WIDTH-1) ='0')then
				  overflow_flag(0) <= '1';
				elsif(input_A(WIDTH-1) ='0' and input_D(WIDTH-1) ='0' and temp_add(WIDTH-1) ='1') then 
				  overflow_flag(0) <= '1';
				else 
				  overflow_flag(0) <= '0';
				end if;
				carry_flag(0) <= temp_add(WIDTH);
				--overflow_flag = cout xor c7
			--Subtract with Borrow
			when "0001" => 
				--carry_var := (others => carry_in);
				carry_var := carry_in;
				temp_add := std_logic_vector(resize(unsigned(input_A),WIDTH+1)+resize(unsigned(not(input_D)),WIDTH+1)+resize(unsigned(carry_var),WIDTH+1));
				output_sig <= temp_add(WIDTH-1 downto 0);
				--overflow_flag <= temp_add(WIDTH-1) xor (input_A(WIDTH-1) and not(input_D(WIDTH-1)));
				--carry_flag <= temp_add(WIDTH);
				if ((input_A(WIDTH-1) xor input_D(WIDTH-1)) = '1') then
					overflow_flag(0) <= input_A(WIDTH-1) xor temp_add(WIDTH-1);
				end if;
				
				if (input_A < input_D) then
					carry_flag(0) <= '1';
				else 
					carry_flag(0) <= '0';
				end if;
			--Compare
			when "0010" =>
				--carry_var := (others => carry_in);
				carry_var := carry_in;
				temp_add := std_logic_vector(resize(unsigned(input_A),WIDTH+1)+resize(unsigned(not(input_D)),WIDTH+1)+resize(unsigned(carry_var),WIDTH+1));
				output_sig <= temp_add(WIDTH-1 downto 0);
				--overflow_flag <= temp_add(WIDTH-1) xor (input_A(WIDTH-1) and not(input_D(WIDTH-1)));
				--carry_flag <= temp_add(WIDTH);
				if ((input_A(WIDTH-1) xor input_D(WIDTH-1)) = '1') then
					overflow_flag(0) <= input_A(WIDTH-1) xor temp_add(WIDTH-1);
				end if;
				
				if (input_A < input_D) then
					carry_flag(0) <= '1';
				else 
					carry_flag(0) <= '0';
				end if;
			--AND
			when "0011" =>
				output_sig <= input_A and input_D;
			--OR	
			when "0100" =>
				output_sig <= input_A or input_D;
			--XOR
			when "0101" =>
				output_sig <= input_A xor input_D;
			--Shift Left Logical
			when "0110" =>
				carry_flag(0) <=  input_A(WIDTH-1);
				output_sig <= std_logic_vector(SHIFT_LEFT(unsigned(input_A),1));
			--Shift Right Logical 
			when "0111" =>
				carry_flag(0) <= input_A(0);
				output_sig <= std_logic_vector(SHIFT_RIGHT(unsigned(input_A),1));
			--Rotate Left through Carry	
			when "1000" =>
				--carry_var(0) <= carry_in;
				carry_flag(0) <=  input_A(WIDTH-1);
				--temp <= std_logic_vector(SHIFT_LEFT(unsigned(input_A),1));
	--			temp(0) <= output_sig(0);
				--output_sig <= temp;
				output_sig <= std_logic_vector(SHIFT_LEFT(unsigned(input_A),1));
				output_sig(0) <= carry_in(0);
			--Rotate Right through Carry
			when "1001" =>
				--output_sig(WIDTH-1) <= carry_in;
				carry_flag(0) <= input_A(0);
				output_sig <= std_logic_vector(SHIFT_RIGHT(unsigned(input_A),1));
				--temp <= std_logic_vector(SHIFT_RIGHT(unsigned(input_A),1));
				--output_sig(WIDTH-2 downto 0) <= temp(WIDTH-2 downto 0);
				output_sig(WIDTH-1) <= carry_in(0);
			--Decrement Acc
			when "1010" =>
				output_sig <= std_logic_vector(unsigned(input_A) - 1);
			--Increment Acc
			when "1011" =>
				output_sig <= std_logic_vector(unsigned(input_A) + 1);
			--Set Carry Flag
			when "1100" =>
				carry_flag(0) <= '1';
			--Clear Carry Flag
			when "1101" =>
				carry_flag(0) <= '0';
			when others => null;
		end case;
		
	end process;
	
process(input_A,input_D,sel,output_sig)
  begin
		if (output_sig = "00000000") then
			zero_flag(0) <= '1';
		else
			zero_flag(0) <= '0';
		end if;
		
		if (output_sig(7) = '1') then
			signed_flag(0) <= '1';
		else
			signed_flag(0) <= '0';
		end if;
		
		output <= output_sig;
end process;
	
	
	
	
end BHV;