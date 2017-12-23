library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library work;
use work.DisplayUnit_pkg.all;

-- Counts cycles
entity CyclesCounter is
	generic(PC_BUS_SIZE : positive := 32);
	port( clk 	: in std_logic;
			reset : in std_logic;
			PC		: in std_logic_vector(PC_BUS_SIZE-1 downto 0);
			maxPC : in std_logic_vector(PC_BUS_SIZE-1 downto 0));
	-- no out's because it connects to the Display Unit
end CyclesCounter;

architecture Behavioral of CyclesCounter is
	signal counter: unsigned(31 downto 0);
	signal s_PC, s_maxPC : unsigned(PC_BUS_SIZE-1 downto 0);
	signal s_flag : boolean; --  := true
begin
	s_PC <= unsigned(PC);
	s_maxPC <= unsigned(maxPC);
	
	process(clk, reset)
	begin
		if(rising_edge(clk)) then
			if (reset = '1') then
				counter <= (others => '0');
			elsif(not s_flag and (s_PC < s_maxPC)) then -- remove not
				counter <= counter + 1;
			else
				s_flag <= true; -- false;
			end if;
		end if;
	end process;
	
	-- Sinais para a DU
	DU_IMdata <= std_logic_vector(counter);
	
end Behavioral;