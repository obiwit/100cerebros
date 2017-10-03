library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.math_real.sqrt;

entity RAM_2P_16_8 is
	generic(nWords : positive := 16; wordsLen : positive := 8);
	port( writeClk 		: in std_logic;
			writeEnable 	: in std_logic;
			writeAddress	: in std_logic_vector((2**nWords)-1 downto 0);
			writeData		: in std_logic_vector(wordsLen-1 downto 0);
			readAddress		: in std_logic_vector((2**nWords)-1 downto 0);
			readData			: out std_logic_vector(wordsLen-1 downto 0));
end RAM_2P_16_8;

architecture Behavioral of RAM_2P_16_8 is
	subtype TDataWord is std_logic_vector( wordsLen-1 downto 0);
	type TMemory is array (0 to nWords-1) of TDataWord;
	signal s_memory : TMemory;
begin
	process(writeClk)
	begin
		if (rising_edge(writeClk)) then
			if (writeEnable = '1') then
				s_memory(to_integer(unsigned(writeAddress))) <= writeData;
			end if;
		end if;
	end process;
	readData <= s_memory(to_integer(unsigned(readAddress)));
end Behavioral;