library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_1P_Demo is
	port(CLOCK_50 : in std_logic; 
		  SW   : in  std_logic_vector(12 downto 0);
		  KEY  : in  std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(7 downto 0));
end RAM_1P_Demo;

architecture Structural of RAM_1P_Demo is
	begin	
	ram_unit : entity work.RAM_1P_16_8(Behavioral)
				  port map(clk 		  => CLOCK_50,
							  address 	  => SW(12 downto 9),
							  writeEnable => SW(0),
							  writeData   => SW(8 downto 1),
							  readData 	  => LEDR(7 downto 0));

end Structural;