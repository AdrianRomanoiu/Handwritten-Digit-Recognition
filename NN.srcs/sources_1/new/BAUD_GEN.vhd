library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BAUD_GEN is
  Port (Clk     : in STD_LOGIC;
        Baud_En : out STD_LOGIC);
end BAUD_GEN;

architecture Behavioral of BAUD_GEN is

signal counter : INTEGER := 0;

begin

process(Clk)
begin
    if RISING_EDGE(Clk) then
        if counter = 651 then
            Baud_En <= '1';
            counter <= 0;
        else
            Baud_En <= '0';
            counter <= counter + 1;
        end if;
    end if;
end process;

end Behavioral;
