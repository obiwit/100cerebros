library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.DisplayUnit_pkg.all;
use work.MIPS_pkg.all;


entity InstructionMemory is
	generic(ADDR_BUS_SIZE : positive := ROM_ADDR_SIZE);
	port( address  : in std_logic_vector(ADDR_BUS_SIZE-1 downto 0);
			readData : out std_logic_vector(31 downto 0)); 
end InstructionMemory;

architecture Behavioral of InstructionMemory is
	constant NUM_WORDS : positive := (2 ** ADDR_BUS_SIZE ); 
	subtype TData is std_logic_vector(31 downto 0);
	type TMemory is array(0 to NUM_WORDS - 1) of TData;
	constant s_memory : TMemory := (-- TESTE_3	
											  X"20050004", -- addi $5,$0,4
											  X"00003020", -- add $6,$0,$0
											  X"00003820", -- add $7,$0,$0
											  X"0005082a", -- for: slt $1,$0,$5
											  X"10200006", -- beq $1,$0,endf
											  X"00a54020", -- add $8,$5,$5
											  X"acc80000", -- sw $8,0($6)
											  X"00e83820", -- add $7,$7,$8 
											  X"20c60004", -- addi $6,$6,4 
											  X"20a5ffff", -- addi $5,$5,-1 
											  X"08000003", -- j for
											  X"acc70000", -- endf: sw $7,0($6)
											  X"1000ffff", -- w1: beq $0,$0,w1
											  -- TESTE_2	
											  --X"2003001F", -- addi $3,$0,0x1F
											  --X"20040024", -- addi $4,$0,0x24
											  --X"00642020", -- add $4,$3,$4
											  --X"AC040004", -- sw $4,4($0)
											  --X"8C85FFC1", -- lw $5,-63($4)
											  -- TESTE_1
											  --X"20030055", -- addi $3,$0,0x55
											  --X"AC030000", -- sw $3,0($0)
											  --X"8C040000", -- lw $4,0($0)
											  -- TESTE_0
											  --X"2002001A", -- addi $2,$0,0x1A
											  --X"2003FFF9", -- addi $3,$0,-7
											  --X"00432020", -- add $4,$2,$3
											  --X"00432822", -- sub $5,$2,$3
											  --X"00433024", -- and $6,$2,$3
											  --X"00433825", -- or $7,$2,$3
											  --X"00434027", -- nor $8,$2,$3
											  --X"00434826", -- xor $9,$2,$3
											  --X"0043502A", -- slt $10,$2,$3
											  --X"28EBFFFE", -- slti $11,$7,-2
											  --X"292CFFE7", -- slti $12,$9,-25
											  others => X"00000000"); -- nop
begin

	-- Porto de leitura da memória, definido na interface do módulo
	readData <= s_memory(to_integer(unsigned(address)));
	
	-- Ponto de leitura para efeitos de visualização (ligado ao módulo 
	-- de visualização através dos sinais globais DU_IMaddr e DU_IMdata) 
	DU_IMdata <= s_memory(to_integer(unsigned(DU_IMaddr)));
	
end Behavioral;