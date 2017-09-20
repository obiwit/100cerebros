library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDet1001 is
	port(CLOCK_50 : in  std_logic;
		  SW       : in  std_logic_vector(0 downto 0); 
		  LEDR     : out std_logic_vector(0 downto 0); 
		  LEDG     : out std_logic_vector(8 downto 8));
end SeqDet1001;

architecture Structural of SeqDet1001 is
	signal s_clk : std_logic;
begin
	
	
	freqDiv: entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 50000000) -- n should be 50 * 10^6
		port map(clkIn  => CLOCK_50,
					clkOut => s_clk);
	
	shifter: entity work.SeqDetFSM(MealyArch)
	port map(clk  => s_clk, 
				Xin  => SW(0),
				Yout => LEDR(0));
				
	LEDG(8) <= s_clk;
end Structural;