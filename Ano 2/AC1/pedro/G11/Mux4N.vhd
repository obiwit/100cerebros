-- --------------------------------
-- MIPS Multicycle Implementation
-- Mux4N
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4N is
	generic(N: integer := 32);
	port(sel 	 : in std_logic_vector(1 downto 0);
		  data3	 : in std_logic_vector(N-1 downto 0);
		  data2   : in std_logic_vector(N-1 downto 0); 
		  data1	 : in std_logic_vector(N-1 downto 0);
		  data0   : in std_logic_vector(N-1 downto 0); 
		  out1    : out std_logic_vector(N-1 downto 0));

end Mux4N;

architecture Behavioral of Mux4N is
begin
	process(sel, data3, data2, data1, data0)
	begin
		case sel is
			when "00" => 
				out1 <= data0;
			when "01" =>
				out1 <= data1;
			when "10" =>
				out1 <= data2;
			when "11" =>
				out1 <= data3;
			when others =>
				out1 <= data0;
		end case;
	end process;
end Behavioral;
