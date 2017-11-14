library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ALU32 is
    port(a, b : in  std_logic_vector(31 downto 0);
         op   : in  std_logic_vector( 2  downto 0);
         r    : out std_logic_vector(31 downto 0);
			zero : out std_logic);
end ALU32;

architecture DataFlow of ALU32 is
    signal s_a, s_b, s_r, s_slt : unsigned(31 downto 0);
	 signal s_diff               : signed(31 downto 0);
begin
    s_a <= unsigned(a);
    s_b <= unsigned(b);
	 s_diff <= signed(s_a - s_b);
	 
	 s_slt <= X"00000000" when (s_diff >= 0)
				 else X"00000001";
	 
    with op select
		  s_r <= s_a and s_b     when "000",  -- AND
					s_a or  s_b     when "001",  -- OR
               s_a  +  s_b     when "010",  -- ADD
					s_a xor s_b     when "011",  -- XOR
					s_a nor s_b     when "100",  -- NOR
					s_a  -  s_b     when "110",  -- SUB
					s_slt           when "111",  -- STL
					(others => '0') when "101";

		 r <= std_logic_vector(s_r);
		 zero <= '1' when (s_diff = X"00000000") 
					else '0';
		 
end DataFlow;