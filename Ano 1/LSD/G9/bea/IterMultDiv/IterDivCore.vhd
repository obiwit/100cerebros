library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity IterDivCore is
   generic(numBits : positive := 8);
   port(clk        : in  std_logic;
        reset      : in  std_logic;
        start      : in  std_logic;
        busy       : out std_logic;
        done       : out std_logic;
        operand0   : in  std_logic_vector((numBits - 1) downto 0);
        operand1   : in  std_logic_vector((numBits - 1) downto 0);
        quotient   : out std_logic_vector((numBits - 1) downto 0);
        remainder  : out std_logic_vector((numBits - 1) downto 0));
end IterDivCore;

architecture Structural of IterDivCore is
   signal s_dividend : std_logic_vector((numBits - 1) downto 0) := operand0;
   signal s_divisor  : std_logic_vector((numBits - 1) downto 0) := operand1;
	signal s_init : std_logic;
	signal s_quo : unsigned(0 downto 0) := '0';
	signal s_dividend_bigger : std_logic;
begin
	busy		 <= '0';
	done		 <= '1';
	quotient	 <= (others => '0');
	remainder <= (others => '0');
	
	s_dividend_bigger <= (unsigned(s_dividend) > unsigned(s_divisor));
	
	control_unit : entity work.DivCtrlUnit(Behavioral_1Proc_SyncOut)
      generic map(numBits   => numBits)
      port map(clk          => clk,
               reset        => reset,
               start        => start,
               busy         => busy,
               done         => done,
               dividendLSb  => s_dividend(0),
				   dividend_bigger => s_dividend_bigger,
					init => s_init);
	
	while (s_init and (s_divisor(numBits - 1) = '0')) loop
		s_divisor <= 2 * unsigned(s_divisor);
	end loop;
	
	
	
end Structural;
