library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterN is
	generic (size: positive := 4);
	port(clk, sin: in std_logic;
		  dataOut : out std_logic_vector(size-1 downto 0));
end ShiftRegisterN;

architecture Behavioral of ShiftRegisterN is 
	signal s_data : std_logic_vector(size-1 downto 0);
	begin
	shift_left : process(clk)
	begin
		if (rising_edge(clk)) then
			s_data <= s_data(size-2 downto 0) & sin;
		end if;
	end process;
	
	dataOut <= s_data;
	
end Behavioral;