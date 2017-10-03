library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
	port(decIn    : in std_logic_vector(3 downto 0);
		  encOut   : out std_logic_vector(1 downto 0);
		  validOut : out std_logic);
end PEnc4_2;

architecture Equations of PEnc4_2 is
begin
	process(decIn)
	begin
		if    (decIn(3) = '1') then 
			encOut <= "11"; 
			validOut <= '1';
		elsif (decIn(2) = '1') then 
			encOut <= "10"; 
			validOut <= '1';
		elsif (decIn(1) = '1') then 
			encOut <= "01"; 
			validOut <= '1';
		elsif (decIn(0) = '1') then 
			encOut <= "00"; 
			validOut <= '1';
		else   validOut <= '0';
		end if;
	end process;
end Equations;
					
	
			
	