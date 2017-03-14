-- This component isn't used with the second/new better implementation using equations
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BEA_IsEqual is
	port(hTens  	: in  natural;
		  mode      : in  natural;
		  maxChoose	: out std_logic);
end BEA_IsEqual;

architecture Behavioral of BEA_IsEqual is
begin
	process (hTens)
	begin
		if (hTens = mode) then
			maxChoose <= '1';
		else
			maxChoose <= '0';
		end if;
	end process;
end Behavioral;