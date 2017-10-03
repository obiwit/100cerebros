library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity freqDivider is
	generic(DIV_FACTOR : positive :=4);
	port( clkIn  : in  std_logic;
         clkOut : out std_logic);
end freqDivider;

architecture Behavioral of freqDivider is
	signal s_count 	: natural;
	constant halfWay	: natural := DIV_FACTOR/2-1;
begin
	process(clkIn)
	begin
		if( rising_edge(clkIn) ) then
			if( s_count	= DIV_FACTOR - 1 ) then
				clkOut	<= '1';
				s_count	<= 0;
			else
				if( s_count = halfWay) then  
					clkOut <= '0';
				end if;
				s_count <= s_count + 1;
			end if;
		end if;
	end process;
end Behavioral;
