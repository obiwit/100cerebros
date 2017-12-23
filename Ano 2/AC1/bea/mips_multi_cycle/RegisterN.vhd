library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegisterN is
	 generic(size : positive := 32);
    port(clk 		 	: in  std_logic;
			writeEnable : in  std_logic;
			writeData 	: in  std_logic_vector (size-1 downto 0);
			readData		: out std_logic_vector (size-1 downto 0));
end RegisterN;

architecture Behavioral of RegisterN is
	signal s_memory : std_logic_vector(size-1 downto 0);
begin

	process(clk, writeEnable) is
	begin	
	
		if(rising_edge(clk)) then
			if (writeEnable = '1') then
				s_memory <= writeData;
			end if;
		end if;
		
	end process;
	
	readData <= s_memory;
	
end Behavioral;