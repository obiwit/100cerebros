-- --------------------------------
-- PCUpdate
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library WORK;
use WORK.DisplayUnit_pkg.all;

entity PCupdate is

port( clk     : in  std_logic;
		reset   : in  std_logic;
		zero	  : in  std_logic;
		branch  : in  std_logic;
		jump	  : in  std_logic;
		offSet32: in  std_logic_vector(31 downto 0);
		jAddr26 : in  std_logic_vector(25 downto 0);
		pc      : out std_logic_vector(31 downto 0));
end PCupdate;

architecture Behavioral of PCupdate is
	signal s_pc, s_pc_4 : unsigned(31 downto 0);

begin
	s_pc_4 <= s_pc + 4;
	process(clk)
	begin
		if(rising_edge(clk)) then
			-- reset
			if(reset = '1') then					
				s_pc <= (others => '0');
			else
			
				-- jump
				if (jump = '1') then
					s_pc <= s_pc_4(31 downto 28) & unsigned(jAddr26) & "00"; -- Compute JTA = 4 MSBits do PC + jAddr26 shift left 2				
				-- branch
				elsif(branch = '1') AND (zero = '1') then											
					s_pc <= s_pc_4 + shift_left(unsigned(offSet32), 2);		-- Compute BTA = (PC + 4) + (instruction_offset * 4)
				
				-- default
				else										
					s_pc <= s_pc_4;
							
				end if;
			end if;
		end if;
	end process;
	
	pc <= std_logic_vector(s_pc);
	DU_PC <= std_logic_vector(s_pc);
	
end Behavioral;