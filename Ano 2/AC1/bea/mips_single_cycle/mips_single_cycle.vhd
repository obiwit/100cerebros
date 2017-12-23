library ieee;
use ieee.std_logic_1164.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;
  
entity mips_single_cycle is 
	port( CLOCK_50 : in std_logic;
			SW       : in std_logic_vector(2 downto 0); 
			KEY      : in std_logic_vector(3 downto 0); 
			
			HEX0 : out std_logic_vector(6 downto 0); 
			HEX1 : out std_logic_vector(6 downto 0); 
			HEX2 : out std_logic_vector(6 downto 0); 
			HEX3 : out std_logic_vector(6 downto 0); 
			HEX4 : out std_logic_vector(6 downto 0); 
			HEX5 : out std_logic_vector(6 downto 0); 
			HEX6 : out std_logic_vector(6 downto 0); 
			HEX7 : out std_logic_vector(6 downto 0));
end mips_single_cycle;

architecture Structural of mips_single_cycle is 

	signal s_clk, s_reset, s_regDst  : std_logic;
	signal s_regWrite, s_ALUscr		: std_logic;
	signal s_zero, s_memRead			: std_logic;
	signal s_memWrite, s_memToReg		: std_logic;
	signal s_branch, s_jump				: std_logic;
	
	signal s_ALUop							: std_logic_vector(1 downto 0);
	
	signal s_ALUaction					: std_logic_vector(2 downto 0);
	
	signal s_rt_readAddr, s_rt, s_rd : std_logic_vector(4 downto 0);
	signal s_rs_readAddr, s_shamt    : std_logic_vector(4 downto 0);
	signal s_dstReg				 		: std_logic_vector(4 downto 0);
	
	signal s_funct, s_op 			   : std_logic_vector(5 downto 0);
	
	signal s_immediate				   : std_logic_vector(15 downto 0);
	signal s_jumpAddr 				   : std_logic_vector(25 downto 0);
	
	signal s_extendImm, s_pc, s_ALUout : std_logic_vector(31 downto 0);
	signal s_writeData, s_memOut		  : std_logic_vector(31 downto 0);
	signal s_ALU_in2, s_instruction	  : std_logic_vector(31 downto 0);
	signal s_rs_data, s_rt_data		  : std_logic_vector(31 downto 0);
	
begin

	-- Debouncer
	debnc: entity work.DebounceUnit(Behavioral)
	generic map( mSecMinInWidth => 200, 
					 inPolarity     => '0', 
					 outPolarity    => '1')
	port map( refClk    => CLOCK_50,
				 dirtyIn   => KEY(0),
				 pulsedOut => s_clk);
				 
	s_reset <= not KEY(1);
	
	
	-- PC Update
	pcUp: entity work.PCupdate(Behavioral)
	port map( clk     => s_clk,
				 reset 	 => s_reset,
				 zero 	 => s_zero,
				 branch 	 => s_branch,
				 jump		 => s_jump,
				 offset32 => s_extendImm,
				 jAddr26  => s_jumpAddr,
				 pc 	    => s_pc);
				 
	-- Instruction Memory
	intMem: entity work.InstructionMemory(Behavioral)
	port map( address  => s_pc(7 downto 2),
				 readData => s_instruction); 
				 
	-- Instruction Splitter
	intSplit: entity work.InstrSplitter(Behavioral)
	port map(instruction => s_instruction,
				opcode 		=> s_op,
				rs 			=> s_rs_readAddr,
				rt 			=> s_rt_readAddr,
				rd 			=> s_rd,
				shamt			=> s_shamt,
				funct 		=> s_funct,
				imm 			=> s_immediate,
				jAddr 		=> s_jumpAddr );
				
	-- Sign Extend
	signExt: entity work.SignExtend(Behavioral)
	port map (dataIn  => s_immediate,
				 dataOut => s_extendImm);
				 
	-- Display module
	displ: entity work.DisplayUnit(Behavioral)
	generic map( dataPathType => SINGLE_CYCLE_DP,
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

				
	-- Mux2N
	muxTD: entity work.Mux2N(BehavAssign)
	generic map(N => 5)
	port map(sel    => s_regDst,
				input0 => s_rt_readAddr,
				input1 => s_rd,
				muxOut => s_dstReg);
				
				
	-- RegFile
	regFile: entity work.RegFile(Structural)
	port map (clk			 => s_clk,
				 writeEnable => s_regWrite,
				 writeReg    => s_dstReg,
				 writeData   => s_writeData,
				 readReg1	 => s_rs_readAddr,
				 readReg2	 => s_rt_readAddr,
				 readData1	 => s_rs_data,
				 readData2	 => s_rt_data);
				 
	
	-- ALU Control Unit
	ALUCtrl: entity work.ALUControlUnit(Behavioral)			 
	port map (ALUop      => s_ALUop,
				 funct      => s_funct,
				 ALUcontrol => s_ALUaction);
				 
				 
	-- Mux2N
	muxALU: entity work.Mux2N(BehavAssign)
	generic map(N => 32)
	port map( sel    => s_ALUscr,
				 input0 => s_rt_data,
				 input1 => s_extendImm,
				 muxOut => s_ALU_in2);
				 
				 
				 
	-- ALU
	alu: entity work.ALU32(DataFlow)
	port map(a	  => s_rs_data,
				b	  => s_ALU_in2,
				op   => s_ALUaction,
				r    => s_ALUout,
				zero => s_zero);
				
	
	-- DataMemory
	dataMem: entity work.DataMemory(Behavioral)
	port map(clk       => s_clk, 
				readEn    => s_memRead, 
				writeEn   => s_memWrite, 
				address   => s_ALUout(7 downto 2), 
				writeData => s_rt_data, 
				readData  => s_memOut);
	
	-- Mux2N
	muxMemOut: entity work.Mux2N(BehavAssign)
	generic map(N => 32)
	port map( sel    => s_memToReg,
				 input0 => s_ALUout,
				 input1 => s_memOut,
				 muxOut => s_writeData);
				
	
	-- ControlUnit
	ctrlUnit: entity work.ControlUnit(Behavioral)		
	port map(OpCode   => s_op,
				RegDst   => s_regDst,
				Branch   => s_branch,
				Jump	   => s_jump,
				MemRead  => s_memRead,
				MemWrite => s_memWrite,
				MemToReg => s_memToReg,
				ALUsrc   => s_ALUscr,
				RegWrite => s_regWrite,
				ALUop    => s_ALUop);	
end Structural;
