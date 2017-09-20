library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AccN is 
	generic(N: positive := 4);
	port(dataIn					: in  std_logic_vector(N-1 downto 0);
		  enable, reset, clk : in  std_logic;
		  dataOut				: out std_logic_vector(N-1 downto 0));
end AccN;

architecture Structural of AccN is

	signal s_adderOut, s_regOut : std_logic_vector(N-1 downto 0);
	
begin
	Adder_N: entity work.AdderN(dataFlow)
				generic map(N => N)
				port map(operand0 => dataIn,
							operand1 => s_regOut,
							result 	=> s_adderOut);
	
	Reg_N	 : entity work.RegN(Behavioral)
				generic map(N => N)
				port map(reset  => reset,
							enable => enable,
							clk	 => clk,
							dataIn => s_adderOut,
							dataOut=> s_regOut);
							
	dataOut <= s_regOut;
end Structural;