library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM_Tb is
end SeqDetFSM_Tb;

architecture Stimulus of SeqDetFSM_Tb is
	signal s_clk : std_logic;					-- signal to connect clk
	signal s_xin, s_yout	 : std_logic; 		-- signals to connect to input and output port xin and yout
	
	begin
		uut : entity work.SeqDetFSM(MealyArch)
				port map(clk   => s_clk,
							xin   => s_xin,
							yout  => s_yout);
		
		clk_proc : process
		begin
			s_clk <= '0'; wait for 10 ns;
			s_clk <= '1'; wait for 10 ns;
		end process;
		
		stimulus_process : process
		begin
			-- Detecting 1001
			s_xin <= '1';
			wait for 30 ns;
			
			s_xin <= '0';
			wait for 20 ns;
			
			s_xin <= '0';
			wait for 20 ns;
			
			s_xin <= '1';			-- yout should be 1
			wait for 20 ns;
		
			-- Testing overlap 
			s_xin <= '1';
			wait for 20 ns;
			
			s_xin <= '1';
			wait for 20 ns;
			
			s_xin <= '0';
			wait for 20 ns;
			
			s_xin <= '0';
			wait for 30 ns;
			
			s_xin <= '1';
			wait for 20 ns;
		end process;
	
end Stimulus;