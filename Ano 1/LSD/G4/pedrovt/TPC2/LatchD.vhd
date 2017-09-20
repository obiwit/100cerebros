library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LatchD is
	port(dataIn : in  std_logic;
		  enable : in  std_logic;
		  dataOut: out std_logic);
end LatchD;

architecture Behavioral of LatchD is
begin
	-- se enable = 1, dataOut = dataIn
	process (enable, dataIn)
	begin	
		if (enable = '1') then
			dataOut <= dataIn; 
		end if;
	end process;
end Behavioral;