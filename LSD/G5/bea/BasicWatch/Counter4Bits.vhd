library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter4Bits is
	generic(MAX    : natural := 9;
	        SEC_MAX: natural := 3);
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  enable1	: in  std_logic;
		  enable2	: in  std_logic;
		  maxChoose : in  std_logic := '1';
		  valOut		: out std_logic_vector(3 downto 0);
		  termCnt	: out std_logic);
end Counter4Bits;

architecture RTL of Counter4Bits is

	signal s_value : unsigned(3 downto 0); -- BEA : conta de 0 a 15
	signal s_MAX : natural;

begin
	process(reset, clk)
	begin	
		if (rising_edge(clk)) then
			-- BEA :
			if (maxChoose = '1') then
				s_MAX <= SEC_MAx;
			else 
				s_MAX <= MAX;
			end if;
			if (reset = '1') then
				-- BEA : reset count
				s_value <= (others => '0');
				termCnt <= '0';
			elsif ((enable1 = '1') and (enable2 = '1')) then -- BEA : only run counter when enabled
				if (to_integer(s_value) = s_MAX) then
					-- BEA : reset count
					s_value <= (others => '0');
					termCnt <= '0';
				else
					s_value <= s_value + 1;
					if (to_integer(s_value) = s_MAX - 1) then    -- BEA : next iteration, will change to 0
						termCnt <= '1';
					else
						termCnt <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;

	valOut <= std_logic_vector(s_value);
end RTL;
