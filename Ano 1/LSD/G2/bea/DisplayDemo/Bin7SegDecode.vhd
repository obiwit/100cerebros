library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(enable   : in  std_logic;
		  binInput : in  std_logic_vector(3 downto 0);
        decOut_n : out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is 
begin
	decOut_n <= "1000000" when ((enable  = '1') and (binInput = "0000")) else --0
					"1111001" when ((enable  = '1') and (binInput = "0001")) else --1
					"0100100" when ((enable  = '1') and (binInput = "0010")) else --2
					"0110000" when ((enable  = '1') and (binInput = "0011")) else --3 
					"0011001" when ((enable  = '1') and (binInput = "0100")) else --4 
					"0010010" when ((enable  = '1') and (binInput = "0101")) else --5 
					"0000010" when ((enable  = '1') and (binInput = "0110")) else --6 
					"1111000" when ((enable  = '1') and (binInput = "0111")) else --7 
					"0000000" when ((enable  = '1') and (binInput = "1000")) else --8 
					"0010000" when ((enable  = '1') and (binInput = "1001")) else --9 
					"0001000" when ((enable  = '1') and (binInput = "1010")) else --A 
					"0000011" when ((enable  = '1') and (binInput = "1011")) else --B 
					"1000110" when ((enable  = '1') and (binInput = "1100")) else --C 
					"1000000" when ((enable  = '1') and (binInput = "1101")) else-- D 
					"0000110" when ((enable  = '1') and (binInput = "1110")) else --E 
					"0001110" when ((enable  = '1') and (binInput = "1111")) else --F 
					"1111111";										 --disabled
end Behavioral;