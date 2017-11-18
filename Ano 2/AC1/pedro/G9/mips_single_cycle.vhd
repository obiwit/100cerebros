library IEEE;
library WORK;
use IEEE.STD_LOGIC_1164.all;
use WORK.MIPS_pkg.all;
use WORK.DisplayUnit_pkg.all;

entity mips_single_cycle is
port( CLOCK_50 : in std_logic;
		SW : in std_logic_vector(7 downto 0);
		KEY : in std_logic_vector(3 downto 0);
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX3 : out std_logic_vector(6 downto 0);
		HEX4 : out std_logic_vector(6 downto 0);
		HEX5 : out std_logic_vector(6 downto 0);
		HEX6 : out std_logic_vector(6 downto 0);
		HEX7 : out std_logic_vector(6 downto 0) );
end mips_single_cycle;

architecture Structural of mips_single_cycle is
	signal s_clk, s_key1 : std_logic;
	signal s_pc, s_instruction, s_offset32, s_readData1, s_readData2, s_writeData, s_ALUsrc : std_logic_vector(31 downto 0);
	signal s_offset : std_logic_vector(15 downto 0);
	signal s_jAddr  : std_logic_vector(25 downto 0);
	signal s_rs, s_rt, s_rd, s_writeAddr : std_logic_vector(4 downto 0);
	signal s_ALUControl : std_logic_vector(2 downto 0); 
	signal s_funct : std_logic_vector(5  downto 0);
	
begin
	s_key1 <= not KEY(1);

	-- Debouncer
	debnc: entity work.DebounceUnit(Behavioral)
			 generic map(mSecMinInWidth => 200,
							 inPolarity => '0',
							 outPolarity => '1')
			 port map(refClk => CLOCK_50,
						 dirtyIn => KEY(0),
						 pulsedOut => s_clk);
						 
	-- Display module
	displ: entity work.DisplayUnit(Behavioral)
			 generic map(dataPathType => SINGLE_CYCLE_DP,
							 IM_ADDR_SIZE => ROM_ADDR_SIZE,
						    DM_ADDR_SIZE => RAM_ADDR_SIZE)
			 
			 port map( RefClk => CLOCK_50,
						  InputSel => SW(1 downto 0),
						  DispMode => SW(2),
						  NextAddr => KEY(3),
						  Dir => KEY(2),
						  disp0 => HEX0,
						  disp1 => HEX1,
						  disp2 => HEX2,
						  disp3 => HEX3,
						  disp4 => HEX4,
						  disp5 => HEX5,
						  disp6 => HEX6,
						  disp7 => HEX7);
						  
	 -- PCupdate
	 pcUpdate : entity work.PCupdate(Behavioral)
					port map(clk  	   => s_clk,
								reset    => s_key1,
								zero	   => '0',
								branch   => '0',
								jump	  	=> '0',
								offSet32 => s_offset32,
								jAddr26  => s_jAddr,
								pc  		=> s_pc);
								
	 -- Instruction Memory
	 instROM  : entity work.InstructionMemory(Behavioral)
					port map(address  => s_pc(7 downto 2),
								readData => s_instruction);
								
	 -- Splitter
	 splitter : entity work.InstrSplitter(Behavioral)
					port map(instruction => s_instruction,
								opcode 	   => open,
								rs 			=> s_rs,
								rt 			=> s_rt,
								rd 			=> s_rd,
								imm 			=> s_offset,
								funct 		=> s_funct,
								shamt 		=> open,
								jAddr 		=> s_jAddr);
	
	-- Reg File
	regFile:	 entity work.RegFile(Behavioral)
				 port map(clk => s_clk,
				 
							 readAddr1 => s_rs,
						    readData1 => s_readData1,
		  
							 readAddr2 => s_rt,
							 readData2 => s_readData2,
		 
							 writeAddr 	 => s_writeAddr,
							 writeData 	 => s_writeData,
							 writeEnable => SW(7));
	
	-- Mux to select write address
	mux1: entity work.Mux2N(Behavioral)
			generic map(N => 5)
			port map(sel 	 => SW(6),
						data0  => s_rt,
						data1	 => s_rd,
						out1   => s_writeAddr);
	
	-- Mux to select 2nd operand of the ALU
	mux2: entity work.Mux2N(Behavioral)
			generic map(N => 32)
			port map(sel 	 => SW(5),
						data0  => s_readData2,
						data1	 => s_offset32,
						out1   => s_ALUsrc);
	
	-- ALU Control
	aluCtrl : entity work.ALUControl(Behavioral)
				 port map(ALUop 		=> SW(4 downto 3),
							 funct 		=> s_funct,
							 ALUcontrol => s_ALUControl);
	
	-- ALU
	alu: entity work.ALU32(Behavioral)
		  port map(a 		=> s_readData1,
					  b 		=> s_ALUsrc,
					  oper 	=> s_ALUControl,
					  res 	=> s_writeData,
					  zero 	=> open,
					  ovf 	=> open);
	 
	 -- Sign Extend
	 signExt  : entity work.SignExtend(Behavioral)
					port map(dataIn  => s_offset,
								dataOut => s_offset32);
								

	 DU_DMdata <= s_writeData;
end Structural;