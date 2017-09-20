library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterLoadUpDown4 is
	port(clk   	: in 	std_logic;
		  reset 	: in 	std_logic;
		  enable : in 	std_logic;
		  load	: in 	std_logic;
		  upDown	: in 	std_logic;  --upDown = '1' for up, '0' for down
		  dataIn : in 	std_logic_vector(3 downto 0);
		  count 	: out std_logic_vector(3 downto 0));
end CounterLoadUpDown4;

architecture Behavioral of CounterLoadUpDown4 is
signal s_count : unsigned(3 downto 0);

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			--Reset
			if (reset = '1') then
				s_count <= (others => '0');
			--Enable
			elsif (enable = '1') then		
				--Load
				if (load = '1') then
					s_count <= unsigned(dataIn);
				--Up/Down
				else
					if (upDown = '0') then 
						s_count <= s_count - 1;
					elsif (upDown = '1') then
						s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;

count <= std_logic_vector(s_count);

end Behavioral;