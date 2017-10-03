library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.math_real.sqrt;

entity RAM_1P_16_8 is
	generic( potencia2_nWords : integer := 4; 
				wordLen : positive := 8);
	port(	writeClk		: in std_logic;
			writeEnable : in std_logic;
			writeData	: in std_logic_vector((wordLen-1) downto 0);
			address		: in std_logic_vector(potencia2_nWords-1 downto 0);
			readData		: out std_logic_vector((wordLen-1) downto 0));

end RAM_1P_16_8;

architecture Behavioral of RAM_1P_16_8 is
	subtype TDataWord is std_logic_vector((wordlen-1) downto 0);
	type TMemory is array (0 to ((2**potencia2_nWords)-1)) of TDataWord;
	signal s_memory : TMemory;

begin
	process(writeClk)
		begin
		if (rising_edge(writeClk)) then
			if (writeEnable = '1') then
				s_memory(to_integer(unsigned(address))) <= writeData;
			end if;
		end if;
	end process;
	readData <= s_memory(to_integer(unsigned(address)));
end Behavioral;
