library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;

entity RST_RAM is
  generic (L        : INTEGER;
           C        : INTEGER); 
           
  Port (Clk   : in STD_LOGIC;
        Rst   : in STD_LOGIC;
        Adr   : in STD_LOGIC_VECTOR(15 downto 0);
        WD    : in STD_LOGIC;
        
        Input   : in STD_LOGIC_VECTOR(C - 1 downto 0);
        Output  : out STD_LOGIC_VECTOR(C - 1 downto 0);
        Output_max : out STD_LOGIC_VECTOR(15 downto 0)
        );
end RST_RAM;


architecture Behavioral of RST_RAM is  

type RAM_TYPE is array(0 to L - 1) of STD_LOGIC_VECTOR(C - 1 downto 0);
signal data : RAM_TYPE := (others => (others => '0'));

begin

process(Clk)
begin
    if RISING_EDGE(Clk) then
        if Rst = '1' then
            data <= (others => (others => '0'));
        elsif WD = '1' then
            data(TO_INTEGER(UNSIGNED(Adr))) <= Input;
        end if;
    end if;  
end process;

Output <= data(TO_INTEGER(UNSIGNED(Adr)));

end Behavioral;
