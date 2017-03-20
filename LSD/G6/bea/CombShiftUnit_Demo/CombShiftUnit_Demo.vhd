library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit_Demo is
	port(CLOCK_50 : in  std_logic;
		  SW       : in  std_logic_vector(17 downto 0); 
		  KEY      : in  std_logic_vector(3 downto 0);
		  LEDR     : out std_logic_vector(7 downto 0));
end CombShiftUnit_Demo;

architecture Structural of CombShiftUnit_Demo is
	signal s_clk : std_logic;
begin
	freqDiv: entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 50000000) -- n should be 50 * 10^6
		port map(clkIn  => CLOCK_50,
					clkOut => s_clk);
					
	shifter: entity work.CombShiftUnit(Behavioral)
	port map(clk     => s_clk,
				dataIn  => SW(7 downto 0), 
				siLeft  => SW(8),
				siRight => SW(9),
				loadEn  => SW(10),
				rotate  => KEY(0),
				dirLeft => KEY(1),
				shArith => KEY(2),
				shAmount=> SW(17 downto 15),
				dataOut => LEDR(7 downto 0));
end Structural;