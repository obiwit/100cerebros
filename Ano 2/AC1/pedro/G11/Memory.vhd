-- --------------------------------
-- MIPS Multicycle Implementation
-- Data Memory
-- Arquitectura de Computadores I
-- Pedro Teixeira, 84715, MIECT
-- --------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity Memory is
generic( ADDR_BUS_SIZE : positive := 6;		-- 64 words
			DATA_BUS_SIZE : positive := 32);		-- 32 bits words
port(	clk : in std_logic;
		readEn : in std_logic;
		writeEn : in std_logic;
		address : in std_logic_vector(ADDR_BUS_SIZE-1 downto 0);
		writeData : in std_logic_vector(DATA_BUS_SIZE-1 downto 0);
		readData : out std_logic_vector(DATA_BUS_SIZE-1 downto 0));
end Memory;


architecture Behavioral of Memory is

constant NUM_WORDS : positive := (2 ** ADDR_BUS_SIZE );
subtype TData is std_logic_vector(DATA_BUS_SIZE-1 downto 0);
type TMemory is array(0 to NUM_WORDS - 1) of TData;
signal s_memory : TMemory  := (	  -- Original program
--											  X"2002001A", 		-- addi $2,$0,0x1A
--											  X"2003fff9", 		-- addi $3,$0,-7
--											  X"00432020", 		-- add $4,$2,$3
--											  X"00432822", 		-- sub $5,$2,$3
--											  X"00433024", 		-- and $6,$2,$3
--											  X"00433825", 		-- or $7,$2,$3
--											  X"00434027", 		-- nor $8,$2,$3
--											  X"00434826", 		-- xor $9,$2,$3
--											  X"0043502a", 		-- slt $10,$2,$3
--											  X"28ebfffe", 		-- slti $11,$7,-2
--											  X"292cffe7", 		-- slti $12,$9,-25
--											  X"00000000", 		-- nop

												-- Test Program 1
--												X"20030055",		-- addi $3,$0,0x55
--												X"ac030000",		-- sw $3,0($0)
--												X"8c040000",		-- lw $4,0($0)
--												X"00000000", 		-- nop	
											
												-- Test Program 2
												X"2003001f",		-- addi $3,$0,0x1F
												X"20040024",		-- addi $4,$0,0x24
												X"00642020",		-- add $4,$3,$4
												X"ac040004",		-- sw $4,4($0)
												X"8c85ffc1",		-- lw $5,-63($4)
												X"00000000", 		-- nop
												
												-- Test Program 3
--												X"20050004",		-- addi $5,$0,4
--												X"00003020",		-- add $6,$0,$0
--												X"00003820",		-- add $7,$0,$0
--												X"0005082a",		-- slt $1,$0,$5
--												X"1020fffb",		-- beq $1,$0,endf
--												X"20a80000",		-- addi $8,$5,$5
--												X"acc80000",		-- sw $8,0($6)
--												X"00e83820",		-- add $7,$7,$8
--												X"20c60004",		-- addi $6,$6,4
--												X"20a5ffff",		-- addi $5,$5,-1
--												X"08000003",		-- j for
--												X"acc70000",		-- sw $7,0($6)
--												X"1000fff3",		-- beq $0,$0,w1
--												X"00000000", 		-- nop
												
												-- MAX 32 instructions
												others => X"00000000");				

begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(writeEn = '1') then
				s_memory(to_integer(unsigned(address))) <= writeData;
			end if;
		end if;
	end process;
	
	readData <= s_memory(to_integer(unsigned(address))) when
	readEn = '1' else (others => '-');
end Behavioral;