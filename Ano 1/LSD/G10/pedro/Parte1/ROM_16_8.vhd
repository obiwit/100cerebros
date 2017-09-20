library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_16_8 is
	port(ADDR 		: in 	std_logic_vector(3 downto 0);
		  DATAOUT 	: out std_logic_vector(7 downto 0));
end ROM_16_8;

architecture Behavioral of ROM_16_8 is
	-- enumerated type
	type TMemory is array(0 to 15) of std_logic_vector(7 downto 0);
	
	constant c_memory : TMemory := (X"00", X"01", X"02", X"03", X"04", X"05", X"06", X"07", X"08", X"09", X"10", X"11", X"12", X"13", X"14", X"15"); 
	
	begin
		DATAOUT <= c_memory(to_integer(unsigned(ADDR)));
		
end Behavioral;