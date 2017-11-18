-- --------------------------------
-- InstructionMemory
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library IEEE;
library WORK;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use WORK.MIPS_pkg.all;
use WORK.DisplayUnit_pkg.all;

entity InstructionMemory is
	generic(ADDR_BUS_SIZE : positive := ROM_ADDR_SIZE);
	port( address : in std_logic_vector(ADDR_BUS_SIZE-1 downto 0);
			readData : out std_logic_vector(31 downto 0));
end InstructionMemory;

architecture Behavioral of InstructionMemory is
	constant NUM_WORDS : positive := (2 ** ADDR_BUS_SIZE);
	subtype TData is std_logic_vector(31 downto 0);
	type TMemory is array(0 to NUM_WORDS - 1) of TData;
	constant s_memory : TMemory := (X"2002001A", 	-- addi $2,$0,0x1A
											  X"2003fff9", 	-- addi $3,$0,-7
											  X"00432020", 	-- add $4,$2,$3
											  X"00432822", 	-- sub $5,$2,$3
											  X"00433024", 	-- and $6,$2,$3
											  X"00433825", 	-- or $7,$2,$3
											  X"00434027", 	-- nor $8,$2,$3
											  X"00434826", 	-- xor $9,$2,$3
											  X"0043502a", 	-- slt $10,$2,$3
											  X"28ebfffe", 	-- slti $11,$7,-2
											  X"292cffe7", 	-- slti $12,$9,-25
											  X"00000000", 	-- nop
											  others => X"00000000");

begin
	readData <= s_memory(to_integer(unsigned(address)));
	
	-- Ponto de leitura para efeitos de visualização (ligado ao módulo
	-- de visualização através dos sinais globais DU_IMaddr e DU_IMdata)
	DU_IMdata <= s_memory(to_integer(unsigned(DU_IMaddr)));
	
end Behavioral;