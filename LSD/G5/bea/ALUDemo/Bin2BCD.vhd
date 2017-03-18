library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port(bin : in  std_logic_vector(3 downto 0);
		  bcd : out std_logic_vector(7 downto 0));
end Bin2BCD;

architecture Behavioral of Bin2BCD is
	signal s_binMinusTen, s_bin, s_ten : unsigned(3 downto 0);
begin
	s_bin <= unsigned(bin);
	s_ten <= unsigned'("1010");
	s_binMinusTen <= s_bin - s_ten;
	
	-- if bin(3) == 1 and (bin(1) = 1 or bin(2) = 1) then bin >= 10	
	-- else bin < 10
	
	bcd(3 downto 0) <= std_logic_vector(s_binMinusTen) when (bin(3) = '1' and (bin(1) = '1' or bin(2) = '1')) else
							 bin(3 downto 0);
	
	bcd(7 downto 4) <= std_logic_vector'("0001") when (bin(3) = '1' and (bin(1) = '1' or bin(2) = '1')) else
							 std_logic_vector'("0000");
end Behavioral;