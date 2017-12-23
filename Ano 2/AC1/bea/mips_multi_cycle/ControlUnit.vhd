library ieee;
use ieee.std_logic_1164.all;

library work;
use work.DisplayUnit_pkg.all;

entity ControlUnit is
port( Clock  : in std_logic;
		Reset  : in std_logic;
		OpCode : in std_logic_vector(5 downto 0);
--		STATE		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		PCWrite 	: out std_logic;
		IRWrite 	: out std_logic;
		IorD 		: out std_logic;
		PCSource : out std_logic_vector(1 downto 0);
		RegDest 	: out std_logic;
		PCWriteCond : out std_logic;
		MemRead 	: out std_logic;
		MemWrite : out std_logic;
		MemToReg : out std_logic;
		ALUSelA 	: out std_logic;
		ALUSelB 	: out std_logic_vector(1 downto 0);
		RegWrite : out std_logic;
		ALUop 	: out std_logic_vector(1 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is
	type TState is ( E0, E1, E2, E3, E4, E5, E6 , E7, E8, E9, E10, E11);
	signal CS, NS : TState;
begin
	-- processo síncrono da máquina de estados (ME)
	process(Clock) is
	begin
		if(rising_edge(Clock)) then
			if(Reset = '1') then
				CS <= E0;
			else
				CS <= NS;
			end if;
		end if;
	end process;
	
	-- processo combinatório da ME
	process(CS, OpCode) is
	begin
		PCWrite<= '0'; IRWrite <= '0'; IorD <= '0'; 
		RegDest <= '0'; PCWriteCond<= '0'; MemRead <= '0'; 
		MemWrite <= '0'; MemToReg <= '0'; RegWrite<='0'; 
		PCSource<="00";ALUop<="00";ALUSelA<='0'; ALUSelB <= "00";
		NS <= CS;
	
		case CS is
			when E0 => -- Instruction Fetch
				 MemRead <= '1'; PCWrite <= '1'; 
				 IRWrite <= '1'; ALUSelB <= "01";
				 NS <= E1;
				 
			when E1 => -- Instruction Decode
				ALUSelB <= "11";
				
				if(OpCode = "000000") then -- R-Type instructions 
					NS <= E6;
				
				elsif(OpCode = "100011" or OpCode = "101011" or
						OpCode = "001000") then -- LW, SW, ADDI 
					NS <= E2;
					
				elsif(OpCode = "001010") then NS <= E8; -- SLTI 
				elsif(OpCode = "000100") then NS <= E10;-- BEQ 
				elsif(OpCode = "000010") then NS <= E11;-- J 
				
				end if;
				
			when E2 => -- LW, SW, ADDI
				ALUSelA <= '1'; ALUSelB <= "10"; -- ALUOp <= "00";
				
				if(OpCode = "100011") then -- LW
					NS <= E3;
				elsif(OpCode = "101011") then -- SW 
					NS <= E5;
				else -- ADDI 
					NS <= E9;
				end if;
				
			when E3 => -- LW Memory Read
				MemRead <= '1'; IorD <= '1';
				NS <= E4;
				
			when E4 => -- LW completion
				RegWrite <= '1'; MemToReg <= '1'; -- RegDest <= '0';
				NS <= E0;
				
			when E5 => -- SW completion
				MemWrite <= '1'; IorD <= '1';
				NS <= E0;
				
			when E6 => -- R-Type instructions 
				ALUSelA <= '1'; ALUop <= "10";
				NS <= E7;
				
			when E7 => -- R-Type instructions 
				RegWrite <= '1'; RegDest <= '1'; 
				NS <= E0;
				
			when E8  => -- STLI
				ALUSelA <= '1'; ALUSelB <= "10"; ALUOp <= "11";
				NS <= E9;
				
			when E9  => --
				RegWrite <= '1'; -- RegDest <= '0'; MemToReg <= '0';
				NS <= E0;
				
			when E10 => -- Branch completion
				ALUSelA <= '1'; ALUOp <= "01"; PCWriteCond <= '1';
				PCSource <= "01"; -- ALUSelB <= "00";
				NS <= E0;
				
			when E11 => -- Jump completion
				PCWrite <= '1'; PCSource <= "10";
				NS <= E0;
				
		end case;
	end process;
	
	/*STATE <= "0000" when (CS = E0) else
				"0001" when (CS = E1) else
				"0010" when (CS = E2) else
				"0011" when (CS = E3) else
				"0100" when (CS = E4) else
				"0101" when (CS = E5) else
				"0110" when (CS = E6) else
				"0111" when (CS = E7) else
				"1000" when (CS = E8) else
				"1001" when (CS = E9) else
				"1010" when (CS = E10) else
				"1011";*/
				
	DU_CState <= "00000" when CS = E0 else 
					 "00001" when CS = E1 else 
					 "00010" when CS = E2 else
					 "00011" when CS = E3 else
					 "00100" when CS = E4 else
					 "00101" when CS = E5 else
					 "00110" when CS = E6 else
					 "00111" when CS = E7 else
					 "01000" when CS = E8 else
					 "01001" when CS = E9 else
					 "10000" when CS = E10 else
                "10001" when CS = E11 else
                "11111"; -- when others
	
end Behavioral;