library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_1P_Demo is

	port( CLOCK_50	: in std_logic;--writeClk	
			SW			: in std_logic_vector(12 downto 0);--writeEnable writeData address
			LEDR		: out std_logic_vector(7 downto 0));-- readData

end RAM_1P_Demo;

architecture Behavioral of RAM_1P_Demo is
	signal s_CLK: std_logic;

begin
	
	clkDiv : entity work.ClkDividerN(Behavioral)
    			generic map (divFactor => 50000000)
				port map( clkIn	=> CLOCK_50,
							 clkOut => s_CLK);
	
	ram16x8 : entity work.RAM_1P_16_8(Behavioral)
				 generic map ( potencia2_nWords => 4, 
									wordLen => 8)
				 port map( writeClk => s_CLK,
							  writeEnable => SW(0),
							  writeData => SW(8 downto 1),
							  address => SW(12 downto 9),
							  readData => LEDR(7 downto 0));							  
	
end Behavioral;
