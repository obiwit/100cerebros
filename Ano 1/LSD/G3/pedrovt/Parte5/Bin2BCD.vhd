library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port(bin_in  : in std_logic_vector(3 downto 0);
		  bcd_out_1 : out std_logic_vector(3 downto 0);
		  bcd_out_2 : out std_logic_vector(3 downto 0));
end Bin2BCD;

architecture BehavProc of Bin2BCD is
begin
	process (bin_in)
	begin
		if bin_in >= "1010" then  --Para valores >=10 e <=16
			bcd_out_1 <= "0001";
			bcd_out_2 <= std_logic_vector(signed(bin_in) - "1010");
		else							  --Para valores <10
			bcd_out_1 <= "0000";
			bcd_out_2 <= bin_in;
		end if;
	end process;
	
end BehavProc;