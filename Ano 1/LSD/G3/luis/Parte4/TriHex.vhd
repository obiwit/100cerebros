library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity triHex is
	port( r : in std_logic_vector(3 downto 0);
			m : in std_logic_vector(3 downto 0);
			Dig0 : out std_logic_vector(3 downto 0);
			Dig1 : out std_logic_vector(3 downto 0);
			Dig2 : out std_logic_vector(3 downto 0));
end TriHex;

architecture Equations of TriHex is
begin

	signal s_A : std_logic_vector(7 downto 0);
	signal s_b : std_logic_vector(7 downto 0); 
	
	process ( r, m )
	begin
		
		s_A  <= r & m;
		s_b  <= s_A MOD 100;
		Dig2 <= s_b(7 downto 4);
		Dig1 <= (s_A REM 100) MOD 10;
		Dig0 <= (s_A REM 100) REM 10));
	
	end process
end Equations
