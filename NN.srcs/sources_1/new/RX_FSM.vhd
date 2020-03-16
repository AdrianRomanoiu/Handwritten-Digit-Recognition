library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity RX_FSM is
  Port (Clk     : in STD_LOGIC;
        Rst     : in STD_LOGIC;
        Baud_En : in STD_LOGIC;
        
        RX : in STD_LOGIC;
            
        Adr_Input : out STD_LOGIC_VECTOR(15 downto 0);
                
        RX_RDY  : out STD_LOGIC;
        RX_DATA : out STD_LOGIC_VECTOR(7 downto 0));
end RX_FSM;

architecture Behavioral of RX_FSM is

type stateType is (idle, start, bits, stop, hold);
signal State : stateType := idle;

signal Baud_Cnt : INTEGER := 0;
signal Bit_Cnt  : INTEGER := 0;

signal counter : INTEGER := -8;

begin

process(Clk)
begin
    if RISING_EDGE(Clk) then
        if Baud_En = '1' then
            case State is
                when idle =>
                    Baud_Cnt <= 0;
                    if RX = '0' then
                        State <= start;
                        if counter = 776 then
                            counter <= 0;
                        else
                            counter <= counter + 8;
                        end if;
                    else
                        State <= idle;
                    end if;
                
                when start =>
                    if Baud_Cnt = 7 then
                        if RX = '0' then
                            Baud_Cnt <= 0;
                            State <= bits;
                        else
                            State <= idle;
                        end if;
                    else
                        Baud_Cnt <= Baud_Cnt + 1;
                    end if;
                
                when bits =>
                    if Baud_Cnt = 15 then
                        if Bit_Cnt = 8 then
                            Bit_Cnt <= 0;
                            Baud_Cnt <= 0;
                            State <= stop;
                        else
                            RX_DATA(Bit_Cnt) <= RX;
                            Bit_Cnt <= Bit_Cnt + 1;
                            Baud_Cnt <= 0;
                            State <= bits;
                        end if;
                    else
                        Baud_Cnt <= Baud_Cnt + 1;
                        State <= bits;
                    end if;
                
                when stop =>
                    if Baud_Cnt = 15 then
                        Baud_Cnt <= 0;
                        State <= hold;
                    else
                        Baud_Cnt <= Baud_Cnt + 1;
                        State <= stop;
                    end if;
                    
                when hold =>
                    if Baud_Cnt = 7 then
                        Baud_Cnt <= 0;
                        State <= idle;
                    else
                        Baud_Cnt <= Baud_Cnt + 1;
                        State <= hold;
                    end if;
                
            end case;
        end if;
    end if;
end process;

process(State)
begin
    case State is
        when idle  => RX_RDY <= '0'; Adr_Input <= (others => '0');
        when start => RX_RDY <= '0'; Adr_Input <= (others => '0');
        when bits  => RX_RDY <= '0'; Adr_Input <= (others => '0');
        when stop  => RX_RDY <= '0'; Adr_Input <= (others => '0');
        when hold  => RX_RDY <= '1'; Adr_Input <= CONV_STD_LOGIC_VECTOR(counter, 16);
    end case;
end process;

end Behavioral;
