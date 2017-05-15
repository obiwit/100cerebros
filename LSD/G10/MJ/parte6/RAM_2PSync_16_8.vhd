library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_2PSync_16_8 is
	port( writeClk 		: in std_logic;
			writeEnable 	: in std_logic;
			writeAddress 	: in std_logic_vector(4 downto 0);
			writeData 		: in std_logic_vector(7 downto 0);
			readClk 			: in std_logic;
			readAddress 	: in std_logic_vector(4 downto 0);
			readData 		: out std_logic_vector(7 downto 0));
end RAM_2PSync_16_8;

architecture Behavioral of RAM_2PSync_16_8 is
	constant NUM_WORDS : integer := 16;
	
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TMemory is array (0 to NUM_WORDS-1) of TDataWord;
	
	signal s_memory : Tmemory;
	
begin
	write_proc : process(writeClk)
	begin
		if (rising_edge(writeClk)) then
			if (writeEnable = '1') then
				s_memory(to_integer(unsigned(writeAddress))) <= writeData;
			end if;
		end if;
	end process;
	
	read_proc : process(readClk)
	begin
		if (rising_edge(readClk)) then
			readData <= s_memory(to_integer(unsigned(readAddress)));
		end if;	
	end process;
end Behavioral;