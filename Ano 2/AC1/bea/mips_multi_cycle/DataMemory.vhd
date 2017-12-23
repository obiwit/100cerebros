library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library work;
use work.DisplayUnit_pkg.all;
use work.MIPS_pkg.all;

entity DataMemory is
	generic( ADDR_BUS_SIZE : positive := 6;
				DATA_BUS_SIZE : positive := 32);
				
	port( clk 		 : in  std_logic;  
			readEn    : in  std_logic;
			writeEn   : in  std_logic;
			address   : in  std_logic_vector(ADDR_BUS_SIZE-1 downto 0); 
			writeData : in  std_logic_vector(DATA_BUS_SIZE-1 downto 0); 
			readData  : out std_logic_vector(DATA_BUS_SIZE-1 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is
	constant NUM_WORDS : positive := (2 ** ADDR_BUS_SIZE ); 
	subtype TData is std_logic_vector(DATA_BUS_SIZE-1 downto 0); 
	type TMemory is array(0 to NUM_WORDS - 1) of TData;
	signal s_memory : TMemory := ( 
											 -- TESTE_4
										--   .text (address = 0x00)
											  X"20050080", -- main:   addi $5, $0, 0x80
											  X"20040005", -- 		  addi $4, $0, 5
											  X"20020001", -- do:     addi $2, $0, 1
											  X"20030000", --         addi $3, $0, 0
											  X"0064082a", -- for:    slt  $1, $3, $4
											  X"1020000c", --         beq  $1, $0, endfor
											  X"00633020", --         add  $6, $3, $3
										 	  X"00c63020", --         add  $6, $6, $6
											  X"00c53020", --         add  $6, $6, $5
											  X"8cc70000", --         lw   $7, 0($6)
											  X"8cc80004", --         lw   $8, 4($6)
											  X"0107082a", --         slt  $1, $8, $7
											  X"10200003", --         beq  $1, $0, endif
										 	  X"acc70004", --         sw   $7, 4($6)
										  	  X"acc80000", --         sw   $8, 0($6)
										 	  X"20020000", --         addi $2, $0, 0
											  X"20630001", -- endif:  addi $3, $3, 1
											  X"08000004", --         j for
											  X"2084ffff", -- endfor: addi $4,$4,-1
											  X"1040ffee", --         beq $2,$0,do
										 	  X"00000000", --         nop
											  X"1000ffff", -- w1:     beq $0,$0,w1											  
											  X"00000000",
											  X"00000000", -- 0x5C
											  X"00000000", -- 0x60
											  X"00000000", -- 0x64
											  X"00000000", -- 0x68
											  X"00000000", -- 0x6C
											  X"00000000", -- 0x70
											  X"00000000", -- 0x74
											  X"00000000", -- 0x78
											  X"00000000", -- 0x7C
										--   .data (address = 0x80) 
										--   array: .word 20, 17, -2, 25, 5, -1 
											  X"00000014", -- .word 20 
											  X"00000011", -- .word 17 
											  X"FFFFFFFE", -- .word -2 
											  X"00000019", -- .word 25 
											  X"00000005", -- .word 5 
											  X"FFFFFFFF", -- .word -1
											--*/
											/*  -- TESTE_3	
											  X"20050004", -- main:   addi $5, $0, 4
											  X"20060080", --         addi $6, $0, 0x80
											  X"00003820", --         add  $7, $0, $0
											  X"0005082a", -- for:    slt  $1, $0, $5
											  X"10200006", --         beq  $1, $0, endf
											  X"00a54020", --         add  $8, $5, $5
											  X"acc80000", --         sw   $8, 0($6)
											  X"00e83820", --         add  $7, $7, $8 
											  X"20c60004", --         addi $6, $6, 4 
											  X"20a5ffff", --         addi $5, $5, -1 
											  X"08000003", --         j for
											  X"acc70000", -- endf:   sw   $7, 0($6)
											  X"1000ffff", -- w1:     beq  $0, $0, w1
											*/
											/*  -- TESTE_2	
											  X"2003008F", -- main:   addi $3,$0,0x8F
											  X"20040036", --         addi $4,$0,0x36
											  X"00642020", --         add $4,$3,$4
											  X"AC040084", --         sw $4,0x84($0)
											  X"8C85FFBF", --         lw $5,-65($4)
											*/
											/*  -- TESTE_1
											  X"20030055", -- main:   addi $3,$0,0x55
											  X"AC030080", --         sw $3,0x80($0)
											  X"8C040080", --         lw $4,0x80($0)
											*/  
											 others => X"00000000"); -- nop
begin

	process(clk)
	begin
	
		if(rising_edge(clk)) then
			if(writeEn = '1') then
				s_memory(to_integer(unsigned(address))) <= writeData;
			end if;
		end if;
		
	end process;
	
	readData <= s_memory(to_integer(unsigned(address))) when readEn = '1' 
				else (others => '-');
	
	-- Ponto de leitura para efeitos de visualização (ligado ao módulo 
	-- de visualização através dos sinais globais DU_DMaddr e DU_DMdata) 
	DU_DMdata <= s_memory(to_integer(unsigned(DU_DMaddr)));
				
end Behavioral;