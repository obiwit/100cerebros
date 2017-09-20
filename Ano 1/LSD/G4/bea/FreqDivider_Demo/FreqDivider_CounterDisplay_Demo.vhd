library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FreqDivider_CounterDisplay_Demo is
	port(CLOCK_50 : in  std_logic;
		  SW       : in std_logic_vector(1 downto 0);
		  HEX0     : out std_logic_vector(6 downto 0);
		  LEDG     : out std_logic_vector(0 downto 0));
end FreqDivider_CounterDisplay_Demo;

architecture Behavioral of FreqDivider_CounterDisplay_Demo is
	signal s_display : std_logic_vector(6 downto 0);
	signal s_count   : std_logic_vector(3 downto 0);
	signal s_clk     : std_logic;
begin
	fq  : entity work.FreqDivider(Behavioral)
				port map(clkIn  => CLOCK_50,
							k      => x"017D7840",
							clkOut => s_clk);
							
	cnt : entity work.CounterUpDown4(Behavioral)
				port map(clk     => s_clk,
							upDown  => SW(0),
							reset   => SW(1),
							count   => s_count);
							
	dec : entity work.Bin7SegDecoder(Behavioral)
				port map(binInput => s_count,
							decOut_n => HEX0);
	
	LEDG(0) <= s_clk;
end Behavioral;