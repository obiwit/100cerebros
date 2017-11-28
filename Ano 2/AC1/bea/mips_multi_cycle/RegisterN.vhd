library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegisterN is
	 generic(addrSize : positive := 5);
    port(clk 		 : in  std_logic;
			enable 	 : in  std_logic;
			writeAddr : in  std_logic_vector (addrSize downto 0);
			writeData : in  std_logic_vector ((2**addrSize)-1 downto 0);
			readAddr : in  std_logic_vector (addrSize downto 0);
			readData : out std_logic_vector ((2**addrSize)-1 downto 0));
end RegisterN;

architecture Behavioral of RegisterN is
	constant NUM_WORDS : positive := (2**addrSize); 
	subtype Data is std_logic_vector((2**addrSize)-1 downto 0); 
	type Memory is array(0 to NUM_WORDS - 1) of Data;
	signal s_memory : Memory;
begin

	process(clk, enable) is
	begin	
	
		if(rising_edge(clk)) then
			if (enable = '1') then
				s_memory(to_integer(unsigned(writeAddr))) <= writeData;
			end if;
		end if;
		
	end process;
	
	readData <= s_memory(to_integer(unsigned(readAddr)));
	
end Behavioral;