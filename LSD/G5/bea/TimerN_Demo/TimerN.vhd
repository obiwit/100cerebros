library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerN is
	generic(N : integer := 4);
	port(start    : in  std_logic;
		  reset    : in  std_logic;
		  enable   : in  std_logic;
		  clk      : in  std_logic;
		  timerOut : out std_logic);
end TimerN;

architecture Behavioral of TimerN is
	signal s_count : unsigned(31 downto 0); -- only allows N up to (2^32)-1
begin
	-- enable and start are syncronous, reset is unclear
	counter: process(clk, reset)
	begin
		if (reset = '1') then
			timerOut <= '0';
			s_count <= (others => '0');
		elsif (rising_edge(clk)) then
			if (enable = '0') then
				-- freezes count
			elsif (s_count = N) then
			   -- end of timer count
				timerOut <= '0';
				s_count <= (others => '0');
			elsif ((s_count = 0) and (start = '1')) or (s_count /= 0) then
				timerOut <= '1';
				s_count <= s_count + 1;
			end if;	
		end if;
	end process counter;
end Behavioral;

-- if clk = 50Mhz, T_clk = 20 * 10^(-9)s, for timerOut to shine 2 seconds, N = 10^8
-- ...right?