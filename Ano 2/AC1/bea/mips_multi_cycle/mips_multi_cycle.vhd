library ieee;
use ieee.std_logic_1164.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;
  
entity mips_multi_cycle is 
	port( CLOCK_50 : in std_logic;
			SW       : in std_logic_vector(2 downto 0); 
			KEY      : in std_logic_vector(3 downto 0); 
			
			LEDG : out std_logic_vector(6 downto 0);
			LEDR : out std_logic_vector(8 downto 0);
			HEX0 : out std_logic_vector(6 downto 0); 
			HEX1 : out std_logic_vector(6 downto 0); 
			HEX2 : out std_logic_vector(6 downto 0); 
			HEX3 : out std_logic_vector(6 downto 0); 
			HEX4 : out std_logic_vector(6 downto 0); 
			HEX5 : out std_logic_vector(6 downto 0); 
			HEX6 : out std_logic_vector(6 downto 0); 
			HEX7 : out std_logic_vector(6 downto 0));
end mips_multi_cycle;

architecture Structural of mips_multi_cycle is 

	signal s_zero, s_PCWrite, s_PCWriteCond : std_logic;
	signal s_memWrite, s_memRead, s_IRWrite : std_logic;
	signal s_clk, s_MemtoReg, s_regWrite 	 : std_logic;
	signal s_IorD, s_ALUSelA, s_RegDest		 : std_logic;
	signal s_reset					 				 : std_logic;
	
	signal s_PCSource, s_ALUSelB, s_ALUop : std_logic_vector(1 downto 0);
	
	signal s_ALUaction						  : std_logic_vector(2 downto 0);
	
	signal s_rs, s_rt, s_rd, s_shamt		  : std_logic_vector(4 downto 0);
	signal s_writeReg							  : std_logic_vector(4 downto 0);
	
	signal s_OpCode, s_funct				  : std_logic_vector(5 downto 0);
	
	signal s_immediate						  : std_logic_vector(15 downto 0);
	
	signal s_jAddr								  : std_logic_vector(25 downto 0);
	
	signal s_instruction, s_pc				  : std_logic_vector(31 downto 0);
	signal s_ALUout, s_prevALUout			  : std_logic_vector(31 downto 0);
	signal s_memAddress, s_regWriteData	  : std_logic_vector(31 downto 0);
	signal s_memOut, s_dataReg				  : std_logic_vector(31 downto 0);
	signal s_extendImm, s_branch_offset	  : std_logic_vector(31 downto 0);
	signal s_writeRegData, s_rs_data		  : std_logic_vector(31 downto 0);
	signal s_rt_data, s_a, s_b				  : std_logic_vector(31 downto 0);
	signal s_ALU_in1, s_ALU_in2			  : std_logic_vector(31 downto 0);
	
begin

	-- Debouncer
	debnc: entity work.DebounceUnit(Behavioral)
	generic map( mSecMinInWidth => 200, 
					 inPolarity     => '0', 
					 outPolarity    => '1')
	port map( refClk    => CLOCK_50,
				 dirtyIn   => KEY(0),
				 pulsedOut => open);
				 
	freqDiv: entity work.divFreq(Behavioral)
	generic map(KDIV => 6250000)
	port map (clkIn  => CLOCK_50,
				 clkOut => s_clk);
				 
	s_reset <= not KEY(1);
	
	
	-- PC Update
	pcUp: entity work.PCupdate(Behavioral)
	port map(clk         => s_clk, 
				reset       => s_reset, 
				zero        => s_zero,
				PCSource    => s_PCSource, 
				PCWrite     => s_PCWrite, 
				PCWriteCond => s_PCWriteCond, 
				PC4         => s_ALUout, 
				BTA         => s_prevALUout, 
				jAddr       => s_jAddr, 
				pc          => s_pc);
				 
	-- Mux2N
	-- Chooses between s_pc and s_prevALUout
	muxMem: entity work.Mux2N(BehavAssign)
	port map(sel    => s_IorD,
				input0 => s_pc,
				input1 => s_prevALUout,
				muxOut => s_memAddress);
				 
	-- Memory
	dataMem: entity work.DataMemory(Behavioral)
	port map(clk       => s_clk, 
				readEn    => s_memRead, 
				writeEn   => s_memWrite, 
				address   => s_memAddress(7 downto 2), 
				writeData => s_rt_data, --s_memWriteData, 
				readData  => s_memOut);
	
	-- Instruction Register
	instructReg: entity work.RegisterN(Behavioral)
	port map(clk 			=> s_clk, 
				writeEnable => s_IRWrite,
				writeData  	=> s_memOut,
				readData 	=> s_instruction);
	
	-- Data Register
	dataReg: entity work.RegisterN(Behavioral)
	port map(clk 			=> s_clk, 
				writeEnable => '1',
				writeData  	=> s_memOut,
				readData 	=> s_dataReg);
				
	-- Instruction Splitter
	intSplit: entity work.InstrSplitter(Behavioral)
	port map(instruction => s_instruction,
				opcode 		=> s_OpCode,
				rs 			=> s_rs,
				rt 			=> s_rt,
				rd 			=> s_rd,
				shamt			=> s_shamt,
				funct 		=> s_funct,
				imm 			=> s_immediate,
				jAddr 		=> s_jAddr);
				
	-- Sign Extend
	signExt: entity work.SignExtend(Behavioral)
	port map (dataIn  => s_immediate,
				 dataOut => s_extendImm);
				 
	-- Shift Left 2 (branch offset)
	s_branch_offset <= s_extendImm(29 downto 0) & "00";
				 
				 
	-- Mux2N
	-- Chooses between rt and rd for RegWrite's target address
	muxReg: entity work.Mux2N(BehavAssign)
	generic map(N => 5)
	port map(sel    => s_regDest,
				input0 => s_rt,
				input1 => s_rd,
				muxOut => s_writeReg);
				
	-- Mux2N
	-- Chooses between s_dataReg and s_prevALUout for writeReg's data
	muxTD: entity work.Mux2N(BehavAssign)
	port map(sel    => s_MemtoReg,
				input0 => s_prevALUout,
				input1 => s_dataReg,
				muxOut => s_regWriteData);
				
				
	-- RegFile
	regFile: entity work.RegFile(Structural)
	port map (clk			 => s_clk,
				 writeEnable => s_regWrite,
				 writeReg    => s_writeReg,
				 writeData   => s_regWriteData,
				 readReg1	 => s_rs,
				 readReg2	 => s_rt,
				 readData1	 => s_rs_data,
				 readData2	 => s_rt_data);
	
	-- A Register
	aReg: entity work.RegisterN(Behavioral)
	port map(clk 			=> s_clk, 
				writeEnable => '1',
				writeData  	=> s_rs_data,
				readData 	=> s_a);		
		
	-- B Register
	bReg: entity work.RegisterN(Behavioral)
	port map(clk 			=> s_clk, 
				writeEnable => '1',
				writeData  	=> s_rt_data,
				readData 	=> s_b);			
	
	-- Mux2N
	-- Chooses between A and s_pc for the ALU's first input
	muxALUa: entity work.Mux2N(BehavAssign)
	generic map(N => 32)
	port map( sel    => s_ALUSelA,
				 input0 => s_pc,
				 input1 => s_a,
				 muxOut => s_ALU_in1);		 
				 
	-- Mux4N
	-- Chooses between B, '4', s_extendImm, and s_branch_offset
	-- for the ALU's second input
	muxALUb: entity work.Mux4N(BehavAssign)
	generic map(N => 32)
	port map( sel    => s_ALUSelB,
				 input0 => s_b,
				 input1 => X"00000004",
				 input2 => s_extendImm,
				 input3 => s_branch_offset,
				 muxOut => s_ALU_in2);
				 
				 
	-- ALU
	alu: entity work.ALU32(DataFlow)
	port map(a	  => s_ALU_in1,
				b	  => s_ALU_in2,
				op   => s_ALUaction,
				r    => s_ALUout,
				zero => s_zero);
	
	-- ALU Register
	ALUReg: entity work.RegisterN(Behavioral)
	port map(clk 			=> s_clk, 
				writeEnable => '1',
				writeData  	=> s_ALUout,
				readData 	=> s_prevALUout);		
						
	---------------------------------------------- Control Units		 
	-- ALU Control Unit
	ALUCtrl: entity work.ALUControlUnit(Behavioral)			 
	port map (ALUop      => s_ALUop,
				 funct      => s_funct,
				 ALUcontrol => s_ALUaction);	
				 
	-- ControlUnit
	ctrlUnit: entity work.ControlUnit(Behavioral)		
	port map(Clock    => s_clk,
				Reset    => s_reset,
				OpCode   => s_OpCode,
				PCWrite  => s_PCWrite,
				IRWrite  => s_IRWrite,
				IorD 	   => s_IorD,
				PCSource => s_PCSource,
				RegDest  => s_RegDest,
				PCWriteCond => s_PCWriteCond,
				MemRead 	=> s_MemRead,
				MemWrite => s_MemWrite,
				MemToReg => s_MemToReg,
				ALUSelA 	=> s_ALUSelA,
				ALUSelB 	=> s_ALUSelB,
				RegWrite => s_RegWrite,
				ALUop 	=> s_ALUop);
				
	LEDG(0) <= s_PCWrite;	
	LEDG(1) <= s_PCWriteCond;	
	LEDG(2) <= s_IorD;	
	LEDG(3) <= s_MemRead;	
	LEDG(4) <= s_MemWrite;	
	LEDG(5) <= s_IRWrite;
	LEDG(6) <= s_MemToReg;
	
	LEDR(1 downto 0) <= s_PCSource;	
	LEDR(3 downto 2) <= s_ALUop;	
	LEDR(4) <= s_ALUSelA;	
	LEDR(6 downto 5) <= s_ALUSelB;	
	LEDR(7) <= s_RegWrite;	
	LEDR(8) <= s_RegDest;		
	
	---------------------------------------------- Other Units	
	-- Display module
	displ: entity work.DisplayUnit(Behavioral)
	generic map( datapathType => MULTI_CYCLE_DP,
					 IM_ADDR_SIZE => ROM_ADDR_SIZE,
					 DM_ADDR_SIZE => RAM_ADDR_SIZE) 
	port map(RefClk => CLOCK_50,
				InputSel=> SW(1 downto 0), 
				DispMode=> SW(2), 
				NextAddr=> KEY(3),
				Dir => KEY(2),
				disp0 => HEX0,
				disp1 => HEX1,
				disp2 => HEX2,
				disp3 => HEX3,
				disp4 => HEX4,
				disp5 => HEX5,
				disp6 => HEX6,
				disp7 => HEX7);
	
	-- Cycles Counter
	cycles: entity work.CyclesCounter(Behavioral)
	generic map(PC_BUS_SIZE => 8)
	port map(clk   => s_clk,
				reset => s_reset,
				PC 	=> s_PC(7 downto 0),
				maxPC => X"58");
				
end Structural;
