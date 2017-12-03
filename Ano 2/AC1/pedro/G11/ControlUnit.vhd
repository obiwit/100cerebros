-- --------------------------------
-- MIPS Multicycle Implementation
-- Control Unit
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
port(OpCode   : in  std_logic_vector(5 downto 0);
	  clk		  : in  std_logic;
	  reset	  : in  std_logic;
	  PCWrite  : out std_logic;
	  PCWriteCond: out std_logic;
	  IorD	  : out std_logic;
	  MemRead  : out std_logic;
     MemWrite : out std_logic;
	  IRWrite  : out std_logic;
     MemToReg : out std_logic;
	  PCSource : out std_logic;
	  ALUop    : out std_logic_vector(1 downto 0);
	  ALUSelA  : out std_logic;
	  ALUSelB  : out std_logic_vector(1 downto 0);
     RegWrite : out std_logic;
     RegDst   : out std_logic);
end ControlUnit;

architecture Behavioral of ControlUnit is
begin
--	process(OpCode)
--	begin
--		RegDst <= '0'; Branch <= '0'; MemRead <= '0'; MemWrite <= '0';
--		MemToReg <= '0'; ALUsrc <= '0'; RegWrite <= '0'; Jump <= '0';
--		ALUop <= "00";
--		case OpCode is
--			when "000000" => -- R-Type instructions
--				ALUop <= "10";
--				RegDst <= '1';
--				RegWrite <= '1';
--			when "000100" => -- BEQ
--				ALUop <= "01";
--				Branch <= '1';
--			when "000010" => -- J
--				Jump <= '1';
--			when "100011" => -- LW
--				ALUsrc <= '1';
--				MemToReg <= '1';
--				MemRead <= '1';
--				RegWrite <= '1';
--			when "101011" => -- SW
--				ALUsrc <= '1';
--				MemWrite <= '1';
--			when "001000" => -- ADDI
--				ALUsrc <= '1';
--				RegWrite <= '1';
--			when "001010" => -- SLTI
--				ALUop <= "11";
--				ALUsrc <= '1';
--				RegWrite <= '1';
--			when others =>
--		end case;
--	end process;
end Behavioral;