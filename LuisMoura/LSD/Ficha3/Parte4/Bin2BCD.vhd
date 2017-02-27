library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port(bin_In : in  std_logic_vector(3 downto 0);
		  BCD 	: out std_logic_vector(7 downto 0));
end Bin2BCD;

architecture Logic of Bin2BCD is
begin

	process (bin_In)
		  
	begin

		if bin_In > "1001" then
			BCD(3 downto 0) <= std_logic_vector(unsigned(bin_In) - "1010");
			BCD(7 downto 4) <= "0001";
		else
			BCD(3 downto 0) <= bin_In;
			BCD(7 downto 4) <= "0000";
		end if;
		
	end process;
	
end Logic;