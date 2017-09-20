library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RAM_1P_16_8_Tb is
end RAM_1P_16_8_Tb;

architecture Stimulus of RAM_1P_16_8_Tb is
	constant NUM_WORDS : integer := 16;
	constant WORDS_LEN : integer := 8;
	signal s_clk, s_writeEnable : std_logic;
	signal s_address : std_logic_vector((2**NUM_WORDS)-1 downto 0);
	signal s_writeData : std_logic_vector(NUM_WORDS-1 downto 0);
	signal s_readData : std_logic_vector(NUM_WORDS-1 downto 0);
begin
	ram_ut : entity work.RAM_1P_16_8(Behavioral)
				port map(writeClk => s_clk,
							writeEnable => s_writeEnable,
							writeData => s_writeData,
							address => s_address,
							readData => s_readData);
	
	clk_process : process
	begin
		s_clk <= '0'; wait for 50 ns;
		s_clk <= '1'; wait for 50 ns;
	end process;
	
	stim_process : process
	begin
		wait for 25 ns;
		s_writeEnable <= '1';
		s_writeData <= X"55";
		s_address <= "00000";
		wait for 100 ns;
		s_address <= "00001";
		wait for 100 ns;
		s_writeData <= X"AA";
		s_address <= "00100";
		wait for 100 ns;
		s_address <= "00111";
		wait for 100 ns;
		s_writeEnable <= '0';
		s_address <= "00000";
		wait for 100 ns;
		s_address <= "00001";
		wait for 100 ns;
		s_address <= "00011";
		wait for 100 ns;
		s_address <= "00100";
		wait for 100 ns;
		s_address <= "00111";
		wait for 100 ns;
	end process;
	
end Stimulus;