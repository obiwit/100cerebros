-- --------------------------------
-- Mux2N
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2N is
	generic(N: integer := 32);
	port(sel 	 : in std_logic;
		  data1	 : in std_logic_vector(N-1 downto 0);
		  data0   : in std_logic_vector(N-1 downto 0); 
		  out1    : out std_logic_vector(N-1 downto 0));

end Mux2N;

architecture Behavioral of Mux2N is
begin
	process(sel, data1, data0)
	begin
		if (sel = '0') then
			out1 <= data0;
		else
			out1 <= data1;
		end if;
	end process;
end Behavioral;
