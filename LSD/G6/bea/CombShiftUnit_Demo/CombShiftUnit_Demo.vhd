library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit_Demo is
	port(CLOCK_50 : in  std_logic;
		  SW       : in  std_logic_vector(17 downto 0); 
		  KEY      : in  std_logic_vector(3 downto 0);
		  LEDR     : out std_logic_vector(7 downto 0));
end CombShiftUnit_Demo;

architecture Structural of CombShiftUnit_Demo is
begin
					
	shifter: entity work.CombShiftUnit(Behavioral)
	port map(dataIn  => SW(7 downto 0), 
				rotate  => SW(8),
				dirLeft => SW(9),
				shArith => SW(10),
				shAmount=> SW(13 downto 11),
				dataOut => LEDR(7 downto 0));
				
end Structural;