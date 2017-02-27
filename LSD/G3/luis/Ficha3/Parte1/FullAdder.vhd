library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder is
	port(	a, b, cin : in std_logic;
			s, cout 	 : out std_logic);
end FullAdder;

architecture Behavioral of FullAdder is
begin
	s <= a XOR b XOR cin;
	cout <= (a AND b) OR (cin AND a) OR (cin AND b);
	--cout <= (a AND b) OR ((a XOR b) AND cin);
end Behavioral;