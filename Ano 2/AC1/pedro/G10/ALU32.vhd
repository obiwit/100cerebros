-- --------------------------------
-- ALU32
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ALU32 is
port( a : in std_logic_vector(31 downto 0);
		b : in std_logic_vector(31 downto 0);
		oper : in std_logic_vector(2 downto 0);
		res : out std_logic_vector(31 downto 0);
		zero : out std_logic;
		ovf : out std_logic);
end ALU32;

architecture Behavioral of ALU32 is
	signal s_res : std_logic_vector(31 downto 0);
	signal s_b : unsigned(31 downto 0);
begin
	s_b <= not(unsigned(b)) + 1 when oper = "110" else
			 unsigned(b); -- complemento para 2 (se subtração)
	res <= s_res;
	zero <= '1' when s_res = X"00000000" else '0';
	ovf <= (not a(31) and not s_b(31) and s_res(31)) or (a(31) and s_b(31) and not s_res(31));
	process(oper, a, b, s_b)
	begin
		case oper is
			when "000" => -- AND
				s_res <= a and b;
			when "001" => -- OR
				s_res <= a or b;
			when "010" => -- ADD
				s_res <= std_logic_vector(unsigned(a) + s_b);
			when "110" => -- SUB
				s_res <= std_logic_vector(unsigned(a) + s_b);
			when "111" => -- SLT
				if(signed(a) < signed(b)) then
					s_res <= X"00000001";
				else
					s_res <= (others => '0');
				end if;
			when others =>
				s_res <= (others => '-');
		end case;
	end process;
end Behavioral;