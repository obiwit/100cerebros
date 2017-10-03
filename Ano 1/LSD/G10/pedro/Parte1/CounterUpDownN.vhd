library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUpDownN is
	generic(N :	positive := 7);
	port(clk: in std_logic;
		  up          : in  std_logic;
		  down	     : in  std_logic;  
		  count 	     : out std_logic_vector(N-1 downto 0);
		  count_ended : out std_logic);
end CounterUpDownN;

architecture Behavioral of CounterUpDownN is
signal s_count : unsigned(N-1 downto 0) := (others => '0');

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (down = '1' and s_count > 0) then			-- DOWN
				s_count <= s_count - 1;
			elsif (down = '1' and s_count <=0) then 
				s_count <= s_count;
			elsif (up = '1' and s_count < 99) then			-- UP
				s_count <= s_count + 1;
			elsif (up = '1' and s_count >=99) then
				s_count <= s_count;
			else 								-- HOLD (Not up nor down)
				s_count <= s_count;
			end if;
			
			if (s_count = 0) then									-- not syncronous
				count_ended <= '1';
			else 
				count_ended <= '0';
			end if;	
		
		end if;
	
	end process;
	
	count <= std_logic_vector(s_count);

end Behavioral;