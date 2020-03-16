library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IMAGE is
  Port (Clk : in STD_LOGIC;
        Rst : in STD_LOGIC;
        WD  : in STD_LOGIC;
        
        Adr_Output : in STD_LOGIC_VECTOR(15 downto 0);
        Adr_Input  : in STD_LOGIC_VECTOR(15 downto 0);
        
        Input  : in STD_LOGIC_VECTOR(7 downto 0);
        Output : out STD_LOGIC);
end IMAGE;

architecture Behavioral of IMAGE is
 
signal data : STD_LOGIC_VECTOR(783 downto 0) := (others => '0');

begin

process(Clk)
begin
    if RISING_EDGE(Clk) then
        if WD = '1' then
              data(TO_INTEGER(UNSIGNED(Adr_Input)) + 0) <= Input(0);
              data(TO_INTEGER(UNSIGNED(Adr_Input)) + 1) <= Input(1);
              data(TO_INTEGER(UNSIGNED(Adr_Input)) + 2) <= Input(2);
              data(TO_INTEGER(UNSIGNED(Adr_Input)) + 3) <= Input(3);
              data(TO_INTEGER(UNSIGNED(Adr_Input)) + 4) <= Input(4);
              data(TO_INTEGER(UNSIGNED(Adr_Input)) + 5) <= Input(5);
              data(TO_INTEGER(UNSIGNED(Adr_Input)) + 6) <= Input(6);
              data(TO_INTEGER(UNSIGNED(Adr_Input)) + 7) <= Input(7);
        end if;
    end if;
end process;

Output <= data(TO_INTEGER(UNSIGNED(Adr_Output)));

end Behavioral;
