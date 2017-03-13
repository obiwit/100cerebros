library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BEA_AdjustHourUnit is
	port(hTens  	: in  natural;
		  maxChoose	: out std_logic);
end BEA_AdjustHourUnit;

architecture Behavioral of BEA_AdjustHourUnit is
begin
	process (hTens)
	begin
		if (hTens = 2) then
			maxChoose <= '1';
		else
			maxChoose <= '0';
		end if;
	end process;
end Behavioral;