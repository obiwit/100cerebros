library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider is
   port(clkIn  : in  std_logic;
        k      : in  std_logic_vector(31 downto 0);
        clkOut : out std_logic);
end FreqDivider;


architecture Behavioral of FreqDivider is 
	signal s_counter : natural;
	signal s_halfWay : unsigned(31 downto 0);
begin
   s_halfWay <= (unsigned(k) / 2);
	
   process(clkIn)
   begin
      if (rising_edge(clkIn)) then
			if (s_counter = (unsigned(K) - 1)) then 
	  			clkOut <= '0';
	  			s_counter <= 0;
	        elsif (s_counter = s_halfWay) then
	            clkOut    <= '1';
	       end if;
		s_counter <= s_counter + 1;
      end if;
   end process;
end Behavioral;


/*
architecture Behavioral of FreqDivStatic is
  signal s_counter : natural;
begin
	process(clkIn) 
	begin
	    if rising_edge(clkIn) then
	  		if ((reset = '1') or (s_counter = K - 1)) then 
	  			clkOut <= '0';
	  			s_counter <= 0;
	        else
	          if (s_counter = K/2 - 1) then
	            clkOut    <= '1';
	          end if;
		s_counter <= s_counter + 1; end if;
	    end if;
	end process;
end Behavioral;

ie:
    k = 7
 k -1 = 6
1/2 k = 3
clkIn:  _|-|_|-|_|-|_|-|_|-|_|-|_|-|_|-|_|-|_|-|
clkOut: _____|-----|_____|-----|_____|-----|____
             3     6     9     12    15    18
*/