-- --------------------------------
-- Mux2N
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_Clock is
	port(sel 	 : in std_logic;
		  data1	 : in std_logic;
		  data0   : in std_logic; 
		  out1    : out std_logic);
end Mux2_Clock;

architecture Behavioral of Mux2_Clock is
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
