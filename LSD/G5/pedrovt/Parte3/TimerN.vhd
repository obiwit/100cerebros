library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerN is
	generic(N : integer := 6);
	port(reset, enable, start, clk: in  std_logic;
	     timerOut						: out std_logic);
end TimerN;

architecture Behavioral of TimerN is
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
				
				-- if counter is stopped 
				if (s_count = 0) then
					--if start
					if (start = '1') then 
						s_count <= s_count + 1;		-- starts counting
						timerOut <= '1';				-- enables output
					end if;
					
				else 
					-- if counter reaches the end
					if (s_count = (N)) then
						timerOut <= '0';  -- disables output
						s_count <= 0;  	-- restarts counting
					
					-- if counter didn't stopped nor ended
					else 
						timerOut <= '1';				-- output stays enabled
						s_count <= s_count + 1;		-- counts
					end if;
					
				end if;
			end if;
		end if;
	end process;
end Behavioral;