library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit is
	port(dataIn   : in  std_logic_vector(7 downto 0);
		  shAmount : in  std_logic_vector(2 downto 0);
		  rotate   : in  std_logic;
		  dirLeft  : in  std_logic;
		  shArith  : in  std_logic;
		  dataOut  : out std_logic_vector(7 downto 0));
end CombShiftUnit;

architecture Behavioral of CombShiftUnit is
	signal s_shAmount : integer;
	
begin
	s_shAmount <= to_integer(unsigned(shAmount));
	
	process(dataIn, s_shAmount, rotate, dirLeft, shArith)
	begin
		--Rotate  
		if (rotate = '1') then
			if (dirLeft = '1') then
				dataOut <= std_logic_vector(ROTATE_LEFT(unsigned(dataIn), s_ShAmount));
			else
				dataOut <= std_logic_vector(ROTATE_RIGHT(unsigned(dataIn), s_ShAmount));
			end if;
			
		--Shifts Aritméticos
		elsif (shArith = '1') then
			--Shift Left
			if (dirLeft = '1') then
				dataOut <= std_logic_vector(SHIFT_LEFT(signed(dataIn), s_ShAmount));
			--Shift Right
			else
				dataOut <= std_logic_vector(SHIFT_RIGHT(signed(dataIn), s_ShAmount));
			end if;
			
		--Shifts Lógicos
		else
			--Shift Left
			if (dirLeft = '1') then
				dataOut <= std_logic_vector(SHIFT_LEFT(unsigned(dataIn), s_ShAmount));
			--Shift Right
			else
				dataOut <= std_logic_vector(SHIFT_LEFT(unsigned(dataIn), s_ShAmount));
			end if;
		end if;
	end process;

end Behavioral;