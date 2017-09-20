library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerTest is
	port(CLOCK_50 : in  std_logic;
        SW       : in  std_logic_vector(2 downto 0);
        LEDR     : out std_logic_vector(0 downto 0));
end TimerTest;

architecture Structural of TimerTest is
begin
	timerN : entity work.Timer(Behavioral)
		generic map(N => 10)
		port map(clk => CLOCK_50,
					reset => SW(0),
					enable => SW(1),
					start => SW(2),
					timerOut => LEDR(0));
end Structural;