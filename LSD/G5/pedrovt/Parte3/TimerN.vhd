library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerN is
	generic(N : positive := 4);
	port(start, clk, enable, reset: in  std_logic;
	     timerOut						: out std_logic);
end TimerN;

architecture DataFlow of TimerN is
	signal s_count : integer := 0;
	begin
	
	process(clk)
	begin
		if (rising_edge(clk)) then
			--sycronous reset
			if (reset = '1') then
				timerOut <= '0';
				s_count <= 0;
			--sycronous enable
			elsif (enable = '1') then
				-- if counter is stopped starts
				if (s_count = 0) then
					if (start = '1') then 
						s_count <= s_count + 1;
					end if;
					timerOut <= '1';
				else 
					-- count ends
					if (s_count = (N)) then
						timerOut <= '0';  -- disables output
						s_count <= 0;  
					-- counts++
					else 
						timerOut <= '1';
						s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
end DataFlow;