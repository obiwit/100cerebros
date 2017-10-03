library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
	port(decodedln	 : in  std_logic_vector (3 downto 0);
		  encodedOut : out std_logic_vector (1 downto 0);
		  validOut   : out std_logic);

end PEnc4_2;

architecture BehavProc of PEnc4_2 is
begin
	process(decodedln)
	begin
		if (decodedln(3)='1') then
			encodedOut <= "11";
			validOut <= '1';
		else 
			if (decodedln(2)='1') then
				encodedOut <= "10";
				validOut <= '1';
			else
				if (decodedln(1)='1') then
					encodedOut <= "01";
					validOut <= '1';
				else
					if (decodedln(0)='1') then
						encodedOut <= "00";
						validOut <= '1';
					else
						encodedOut <= "00";
						validOut <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
end BehavProc;
