library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(clk, xin : in  std_logic;
		  yout 	  : out std_logic);
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is
	-- states
	type state is (A, B, C, D);
	signal nState, pState : state; 
	
	begin
	
	sync_proc : process(clk)
		begin
			if (rising_edge(clk)) then
--				if (reset = '1') then -- syncronous reset
--					pState <= A;
--				else 
					pState <= nState;
--				end if;
			end if;
		end process;
	
	comb_proc : process (pState, xin)
		begin
			yout <= '0';
			case pState is 
			when A =>
				if (xin = '1') then nState <= B;
				else nState <= A;
				end if;
			when B =>		-- detects first 1
				if (xin = '0') then nState <= C;
				else nState <= B;
				end if;
			when C =>
				if (xin = '0') then nState <= D;
				else nState <= B;
				end if;
			when D =>
				if (xin = '1') then 
					nState <= B;		-- sequences can overlap
					yout <= '1';
				else nState <= A;
				end if;
			when others => 			-- catch all
				nState <= A;
			end case;
		end process;
		
end MealyArch;