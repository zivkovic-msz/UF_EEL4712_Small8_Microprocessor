library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SUBTRACT is
  generic (width       :     positive := 8);
  port( input1, input2 : in  std_logic_vector(width-1 downto 0);
        output         : out std_logic_vector(width-1 downto 0) );
end SUBTRACT;

architecture bhv of SUBTRACT is
begin
  process(input1, input2)
  begin
    output <= std_logic_vector(unsigned(input1) - unsigned(input2));
  end process;
end bhv;