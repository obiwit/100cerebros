library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUpDown4 is
	port( clk   : in std_logic;
			count : out std_logic_vector(3 downto 0);
			upDown: in std_logic;
			RESET : in std_logic);
end CounterUpDown4;

architecture Behavioral of CounterUpDown4 is

	signal s_count : unsigned(3 downto 0);

begin
	process(clk)
	begin
		if (RESET = '1') then
			s_count <= "0000";
		elsif (rising_edge(clk)) then
			if (upDown = '1') then
				s_count <= s_count - 1;
			elsif(upDown = '0') then
				s_count <= s_count + 1;
			end if;
		end if;	
	end process;

	count <= std_logic_vector(s_count);

end Behavioral;