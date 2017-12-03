-- --------------------------------
-- ALUControl
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ALUControl is
	port( ALUop : in std_logic_vector(1 downto 0);
			funct : in std_logic_vector(5 downto 0);
			ALUcontrol : out std_logic_vector(2 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is
begin
	process(ALUop, funct)
	begin
		case ALUop is
			when "00" => 		-- LW, SW, ADDI
				ALUcontrol <= "010";
			when "01" => -- BEQ
				ALUcontrol <= "110";
				when "10" => -- R-Type instructions
					case funct is
						when "100000" => ALUcontrol <= "010"; -- ADD
						when "100010" => ALUcontrol <= "110"; -- SUB
						when "100100" => ALUcontrol <= "000"; -- AND
						when "100101" => ALUcontrol <= "001"; -- OR
						when "101010" => ALUcontrol <= "111"; -- SLT
						when others => ALUcontrol <= "010";
					end case;
			when "11" => -- SLTI
				ALUcontrol <= "111";
		end case;
	end process;
end Behavioral;