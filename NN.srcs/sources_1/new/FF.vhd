library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF is
  Port (Clk : in STD_LOGIC;
        Rst : in STD_LOGIC;
        CE  : in STD_LOGIC;
        
        D   : in STD_LOGIC_VECTOR(31 downto 0);
        Q   : out STD_LOGIC_VECTOR(31 downto 0));
end FF;

architecture Behavioral of FF is

begin

process(Clk)
begin
    if RISING_EDGE(Clk) then
        if Rst = '1' then
            Q <= (others => '0');
        elsif CE = '1' then
            Q <= D;
        end if;
    end if;
end process;

end Behavioral;
