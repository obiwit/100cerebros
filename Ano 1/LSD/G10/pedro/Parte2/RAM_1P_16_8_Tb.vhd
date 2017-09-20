library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RAM_1_SWR_ARD_Tb is
end RAM_1_SWR_ARD_Tb;

architecture Stimulus of RAM_1_SWR_ARD_Tb is
	signal s_clk, s_writeEnable    : std_logic;
	signal s_address 				    : std_logic_vector(3 downto 0);
	signal s_writeData, s_ReadData : std_logic_vector(7 downto 0);
	
	begin
	
		ram_ut : entity work.RAM_1P_16_8(Behavioral)
					port map(clk 			=> s_clk,
								writeEnable => s_writeEnable,
								writeData	=> s_writeData,
								readData		=> s_ReadData,
								address 		=> s_address);
		
		clk_proc  : process
			begin
				s_clk <= '0'; wait for 10 ns;
				s_clk <= '1'; wait for 10 ns;
			end process;
			
		stim_proc : process
			begin
				wait for 5 ns;
				
				s_writeEnable <= '1';
				s_writeData   <= X"55";
				s_address 	  <= "0000";
				wait for 20 ns;
				
				s_address 	  <= "0001";
				wait for 20 ns;
				
				s_writeData	  <= X"AA";
				s_address 	  <= "0100";
				wait for 20 ns;
				
				s_address 	  <= "0101";
				wait for 20 ns;
				
				s_writeEnable <= '0';				
				s_address 	  <= "0000";
				wait for 20 ns;
				s_address 	  <= "0001";
				wait for 20 ns;
				s_address 	  <= "0011";
				wait for 20 ns;
				s_address 	  <= "0100";
				wait for 20 ns;
				s_address 	  <= "0101";
				wait for 20 ns;
		
		end process;
end Stimulus;