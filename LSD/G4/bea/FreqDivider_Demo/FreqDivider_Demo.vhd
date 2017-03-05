library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FreqDivider_Demo is
	port(CLOCK_50 : in  std_logic;
		  LEDG     : out std_logic);
end FreqDivider_Demo;

architecture Behavioral of FreqDivider_Demo is
begin
	fq : entity work.FreqDivider(Behavioral)
				port map(clkIn  => CLOCK_50,
							k      => x"017D7840",
							clkOut => LEDG);
end Behavioral;