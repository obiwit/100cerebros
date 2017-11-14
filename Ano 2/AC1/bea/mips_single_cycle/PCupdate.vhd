library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.DisplayUnit_pkg.all;

entity PCupdate is
	port( clk   	: in  std_logic;
			reset 	: in  std_logic;
			zero 		: in  std_logic;
			branch 	: in  std_logic;
			jump		: in  std_logic;
			offset32 : in  std_logic_vector(31 downto 0);
			jAddr26  : in  std_logic_vector(25 downto 0);
			pc 	: out std_logic_vector(31 downto 0)); 
end PCupdate;

architecture Behavioral of PCupdate is
	signal s_pc, s_next_pc, s_jTargetAddr : unsigned(31 downto 0); --, s_bta
	signal s_offset, s_jAddr, s_jAddr32 : std_logic_vector(31 downto 0);
begin

	s_next_pc <= s_pc + 4;
	s_jTargetAddr <= s_next_pc(31 downto  28) & unsigned(s_jAddr(27 downto 0));

	process(clk)
	begin
	
		if(rising_edge(clk)) then
			
			if(reset = '1') then
				s_pc <= (others => '0');
				
			elsif(branch = '1' and zero = '1') then
				s_pc <= s_next_pc + unsigned(s_offset);
				
			elsif(jump = '1') then
				s_pc <= s_jTargetAddr;
				
			else
				s_pc <= s_next_pc;
			end if;
			
		end if;
		
	end process;
	
	pc <= std_logic_vector(s_pc);
	
	
	-- LeftShifter2's
	shifter1: entity work.LeftShifter2(Behavioral)
	port map(dataIn  => offset32, 
				dataOut => s_offset);
				
	
	s_jAddr32 <= "000000" & jAddr26;
	
	shifter2: entity work.LeftShifter2(Behavioral)
	port map(dataIn  => s_jAddr32,
				dataOut => s_jAddr);
				
				
	-- Sinais para a DU
	DU_PC <= std_logic_vector(s_pc);
	
end Behavioral;