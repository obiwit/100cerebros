library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register8 is
   port(clk : in  std_logic;
		  wrEn: in  std_logic;
		  -- reset: in  std_logic;
		  -- set  : in  std_logic;
        d   : in  std_logic_vector(7 downto 0);
        q   : out std_logic_vector(7 downto 0));
end Register8;


architecture Behavioral of Register8 is
begin
   process(clk)
   begin
		if (rising_edge(clk) and wrEn = '1') then
			q <= d;
		end if;
   end process;
end Behavioral;

/*
architecture Behavioral of Register8 is
begin
   process(clk)
   begin
		if (rising_edge(clk)) then
			if(reset = '1') then
				q <= (others => '0');
			elsif (set = '1') then
				q <= (others => '1');
			else
				q <= d;
			end if;
		end if;
   end process;
end Behavioral;
*/