library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister_Demo is
	generic(size: positive := 8);
	port(CLOCK_50: in  std_logic;
		  SW      : in  std_logic_vector(0 downto 0);
		  LEDR    : out std_logic_vector(size-1 downto 0));
end ShiftRegister_Demo;

architecture Structural of ShiftRegister_Demo is
	signal s_clk : std_logic;
	begin
	
	ClkDivider: entity work.ClkDividerN(Behavioral) 
		generic map(divFactor => 50000000)
		port map(clkIn   => CLOCK_50,
					clkOut  => s_clk);

	ShiftRegister: entity work.ShiftRegisterN(Behavioral)
		generic map(size => size)
		port map(clk     => s_clk,
					sin 	  => SW(0),
					dataOut => LEDR);
					end Structural;