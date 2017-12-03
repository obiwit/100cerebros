-- --------------------------------
-- MIPS Multicycle Implementation
-- Reg32Enable
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegNEnable is
	generic(N: integer := 32);
	port(clk    : in  std_logic;
		  writeEnable : in std_logic;
		  dataIn : in  std_logic_vector(N-1 downto 0);
		  dataOut: out std_logic_vector(N-1 downto 0));
end RegNEnable;

architecture Behavioral of RegNEnable is
	signal s_data : std_logic_vector(N-1 downto 0);
	
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (writeEnable = '1') then
				s_data <= dataIn;
			end if;
			dataOut <= s_data;
		end if;
	end process;
end Behavioral;