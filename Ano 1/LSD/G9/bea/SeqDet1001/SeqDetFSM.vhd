library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(clk  : in std_logic;
		  Xin  : in  std_logic;
		  Yout : out std_logic;
		  states: out std_logic_vector(2 downto 0)); --testing
end SeqDetFSM;


architecture MealyArch of SeqDetFSM is
	-- States
	type TState is (S0, S1, S2, S3);
	signal s_currentState, s_nextState : TState;
	
begin

	sync_proc: process(clk)
	begin
		if (rising_edge(clk)) then
			s_currentState <= s_nextState;
		end if;
	end process;
		
	comb_proc: process(s_currentState, xin)
	begin
		Yout <= '0'; -- most common value for Yout
		case s_currentState is
		
			when S0 => 
				if (Xin = '1')  then
					s_nextState <= S1;
				else 
					s_nextState <= S0; -- if (Xin = '0'), stay on S0
				end if;
				states <= "000";
				
			when S1 => 
				if (Xin = '0')  then
					s_nextState <= S2;
				else 
					s_nextState <= S1; -- if (Xin = '1'), stay on S1
				end if;	
				states <= "001";
				
			when S2 => 
				if (Xin = '1')  then
					s_nextState <= S1;
				elsif (Xin = '0') then
					s_nextState <= S3;
				else 
					s_nextState <= S2;
				end if;
				states <= "010";
				
			when S3 => 
				if (Xin = '1')  then
					Yout <= '1';
					s_nextState <= S1; -- sequence with repetition
				else 
					s_nextState <= S0; -- if (Xin = '0'), got to S0
				end if;
				states <= "100";
						
			when others => s_nextState <= S0; -- catch all
			
		end case;
	end process;
end MealyArch;