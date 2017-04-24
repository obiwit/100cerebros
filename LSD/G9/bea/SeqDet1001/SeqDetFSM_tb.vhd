library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM_tb is
end SeqDetFSM_tb;

architecture Stimulus of SeqDetFSM_tb is

	-- Sinais para ligar à UUT
	signal s_clk  : std_logic;
	signal s_xin  : std_logic;
	signal s_yout : std_logic;
	signal s_states : std_logic_vector(2 downto 0);
	
begin

	-- Instanciação da Unit Under Test (UUT)
	uut : entity work.SeqDetFSM(MealyArch)
	port map(clk    => s_clk,
				Xin    => s_xin,
				Yout   => s_yout,
				states => s_states);
				

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
		s_xin <= '1';
      wait for 30 ns;
		
		s_xin <= '0';
      wait for 20 ns;
      
		s_xin <= '1';
      wait for 40 ns;
		
		s_xin <= '0';
      wait for 40 ns;
      
		s_xin <= '1';
      wait for 50 ns;
		s_xin <= '0';
      wait for 20 ns;
		
		s_xin <= '1';
      wait for 10 ns;
		s_xin <= '0';
      wait for 20 ns;
		s_xin <= '1';
      wait for 10 ns;
   end process;
end Stimulus;