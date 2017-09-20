library ieee;
use ieee.std_logic_1164.all;

entity timer is
	generic(	TIME_S 			: positive := 1;			-- Pulse duration, in seconds
				CLK_FREQ_KHZ	: positive := 50000);	-- Input clock frequency, in kHz (default is 50 MHz)
	port( clk 		: in std_logic;
			reset 	: in std_logic;
			start 	: in std_logic;
			pulseOut : out std_logic);
end timer;

architecture Behavioral of timer is
--	constant TIME_CYCLES : positive := 4; -- For simulation purposes only 
	constant TIME_CYCLES : positive := TIME_S * CLK_FREQ_KHZ * 1000; 
	signal s_count : natural := 0;
begin

p1:	process(clk)
		begin
			if(rising_edge(clk)) then
				if(reset = '1') then
					s_count <= 0;
					pulseOut <= '0';
				elsif(s_count = TIME_CYCLES) then
					s_count <= 0;
					pulseOut <= '0';	
				elsif(start = '1' or s_count /= 0) then
					s_count <= s_count + 1;
					pulseOut <= '1';
				else
					s_count <= 0;
					pulseOut <= '0';
				end if;
			end if;
		end process;
end Behavioral;