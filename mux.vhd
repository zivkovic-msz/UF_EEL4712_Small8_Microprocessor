library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX2x1 is
  generic (width      :     positive := 8);
  port(input1, input2 : in  std_logic_vector(width-1 downto 0);
       sel            : in  std_logic_vector ();
       output         : out std_logic_vector(width-1 downto 0));
end MUX2x1;

architecture bhv of MUX2x1 is
begin
  process(input1, input2, sel)
  begin
    case sel is
      when '0'    => output <= input1;
      when '1'    => output <= input2;
      when others => null;
    end case;
  end process;
end bhv;