library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Timer_tb is
end Timer_Tb;

architecture Stimulus of Timer_tb is

	-- Sinais para ligar à UUT
	signal s_clk      : std_logic;
	signal s_enable   : std_logic;
	signal s_reset    : std_logic;
	signal s_start    : std_logic;
	signal s_timerOut : std_logic;
	
begin
   -- Instanciação da Unit Under Test (UUT)
   uut: entity work.Timer(Behavioral)
		  generic map(N => 10)
        port map(clk      => s_clk,
					  start    => s_start,
                 reset    => s_reset,
					  enable   => s_enable,
                 timerOut => s_timerOut);
					  
	-- Process : clk
	clock_proc : process
	begin
		-- 50 Mhz  = 20 ns
		
		s_clk <= '0'; 
		wait for 10 ns;
		
		s_clk <= '1'; 
		wait for 10 ns;
	end process;
	
   -- Process stim
   stim_proc : process
   begin
		s_reset <= '1';
      wait for 30 ns;
		
		s_reset <= '0';
      s_enable <= '1';
      wait for 30 ns;
      
		s_start <= '1';
      wait for 40 ns;		
		s_start <= '0';
      wait for 250 ns;
      
		s_start <= '1';
      wait for 40 ns;
		s_start <= '0';
      wait for 250 ns;
		
		s_enable <= '0';
      wait for 100 ns;
		s_reset <= '1';
      wait for 100 ns;
   end process;
end Stimulus;