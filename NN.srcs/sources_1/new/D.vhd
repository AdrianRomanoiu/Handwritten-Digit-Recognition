library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D is
  generic (S : INTEGER);
  Port (Clk : in STD_LOGIC;
        Rst : in STD_LOGIC;
        CE  : in STD_LOGIC;
        
        Input  : in STD_LOGIC_VECTOR(S - 1 downto 0);
        Output : out STD_LOGIC_VECTOR(S - 1 downto 0));
end D;

architecture Behavioral of D is

signal data : STD_LOGIC_VECTOR(S -1 downto 0) := (others => '0');

begin

process(Clk)
begin
    if RISING_EDGE(Clk) then
        if Rst = '1' then
            data <= (others => '0');
        else
            if CE = '1' then
                data <= Input;
            end if;
        end if;
    end if;
end process;

Output <= data;

end Behavioral;
