library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DivCtrlUnit is
   generic(numBits  : positive);
   port(clk         : in  std_logic;
        reset       : in  std_logic;
        busy        : out std_logic;
        done        : out std_logic;
        divisorLSb  : in  std_logic;
		  dividend_bigger  : in  std_logic;
		  init        : out std_logic);
       -- regsInit    : out std_logic;
       -- accEnable   : out std_logic;
       -- regsShift   : out std_logic);
end DivCtrlUnit;


---------------------------------------------------------------------------
-- 4 processes architecture
-- (state register + counter + state transitions + outputs)
---------------------------------------------------------------------------

architecture Behavioral_4Proc_AsyncOut of DivCtrlUnit is

   type TState is (ST_IDLE, ST_INIT, ST_DIVIDE_CTRL,
                   ST_SUBTRACT, ST_SHIFT_R);
   signal s_currentState, s_nextState : TState;

  -- subtype TCounter is natural range 0 to numBits;
  -- signal s_iterCnt : TCounter;

begin

	-- Handles reset and states transitions
   process(clk)
   begin
      if (rising_edge(clk)) then
         if (reset = '1') then
            s_currentState <= ST_IDLE;
         else
            s_currentState <= s_nextState;
         end if;
     end if;
   end process;

	-- useless clock
   --process(clk)
   --begin
   --   if (rising_edge(clk)) then
   --      if (s_currentState = ST_IDLE) then
   --         s_iterCnt <= 0;
      --   elsif (s_currentState = ST_DIVIDE_CTRL) then
       --     s_iterCnt <= s_iterCnt + 1;
   --      end if;
   --   end if;
   --end process;
  
	-- Specifies state transitions 
   process(s_currentState, start, mulplierLSb)
   begin
      s_nextState <= s_currentState;

      case s_currentState is
      when ST_IDLE =>
         if (start = '1') then
            s_nextState <= ST_INIT;
         end if;

      when ST_INIT =>
			if (divisorLSb = '1') then
				s_nextState <= ST_DIVIDE_CTRL;
			else
				s_nextState <= ST_INIT;
			end if;

      when ST_DIVIDE_CTRL =>
         if (dividend_bigger) then
            s_nextState <= ST_SUBTRACT;
         else
            s_nextState <= ST_SHIFT_R;
         end if;

      when ST_SUBTRACT =>
         s_nextState <= ST_DIVIDE_CTRL;

      when ST_SHIFT_R =>
         if (divisorLSb = '0') then
            s_nextState <= ST_DIVIDE_CTRL;
         else -- division is done
            s_nextState <= ST_IDLE;
         end if;
      end case;
   end process;

	
   process(s_currentState)
   begin
      busy      <= '0';
      done      <= '0';
		init      <= '0';
      --regsInit  <= '0';
      --accEnable <= '0';
      --regsShift <= '0'; 

      case s_currentState is
			when ST_IDLE =>
				done      <= '1';

			when ST_INIT =>
				init      <= '1';
				busy      <= '1';
				--regsInit  <= '1';

			when ST_DIVIDE_CTRL =>
				busy      <= '1';

			when ST_SUBTRACT =>
				busy      <= '1';
		  --    accEnable <= '1';

			when ST_SHIFT_R =>
				busy      <= '1';
				--regsShift <= '1'; 
      end case;
   end process;
	
end Behavioral_4Proc_AsyncOut;