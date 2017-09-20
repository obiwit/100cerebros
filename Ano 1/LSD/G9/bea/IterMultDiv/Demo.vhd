library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Demo is
   port(CLOCK_50 : in  std_logic;
        KEY      : in  std_logic_vector(1 downto 0);
        SW       : in  std_logic_vector(17 downto 0);
        LEDR     : out std_logic_vector(15 downto 0);
        LEDG     : out std_logic_vector(3 downto 0));
end Demo;


architecture Structural of Demo is

	signal s_globalClk : std_logic;
	
	signal s_multStart, s_divStart, s_multDone, s_divDone, 
			 s_mulSel, s_reset : std_logic; --s_outDiv
	signal s_outMul, s_result : std_logic_vector(15 downto 0);
begin

	-- Clk Divider
	freqDiv: entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 50000000) -- n should be 50 * 10^6
		port map(clkIn  => CLOCK_50,
					clkOut => s_globalClk);
					
	
	-- Main Control Unit
	mainctrl: entity work.MainCtrlUnit(Behavioral)
		port map(clk      => s_globalClk,
				   reset     => s_reset,
				   multDiv_n => SW(17),
				   start     => KEY(1),
				   multStart => s_multStart,
				   divStart  => s_divStart,
				   multDone  => s_multDone,
				   divDone   => s_divDone,
				   multSel   => s_mulSel);
				  
	-- Mutl Core (and Control Unit)
	multcore: entity work.IterMultCore(Structural)
		generic map(numBits => 8)
		port map(clk      => s_globalClk,
					reset    => s_reset,
					start    => s_multStart,
					busy     => LEDG(0),
					done     => s_multDone,
					operand0 => SW(7 downto 0),
					operand1 => SW(15 downto 8),
					result   => s_outMul);

	
	-- OutMux
	outmux: process(s_mulSel, s_outMul) --s_outDiv
	begin
		s_result <= (others => '0'); -- to erase, only here until div is done, so no latch is created
		if (s_mulSel ='1') then
			s_result <= s_outMul;
		end if;
	end process;
				
	s_reset <= KEY(0);
	LEDG(1) <= s_multDone;
	LEDR(15 downto 0) <= s_result;
				  
end Structural;