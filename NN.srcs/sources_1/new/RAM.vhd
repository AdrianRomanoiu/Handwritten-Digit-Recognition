library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;

entity RAM is
  generic (L        : INTEGER;
           C        : INTEGER; 
           FileName : STRING);
           
  Port (Clk   : in STD_LOGIC;
        --Rst   : in STD_LOGIC;
        Adr   : in STD_LOGIC_VECTOR(15 downto 0);
        WD    : in STD_LOGIC;
        
        Input   : in STD_LOGIC_VECTOR(C - 1 downto 0);
        Output  : out STD_LOGIC_VECTOR(C - 1 downto 0));
end RAM;


architecture Behavioral of RAM is  


type RAM_TYPE is array(0 to L - 1) of STD_LOGIC_VECTOR(C - 1 downto 0);

impure function RamInit return RAM_TYPE is
    file text_file : TEXT open read_mode is FileName;
    
    variable text_line   : LINE;
    variable ram_data    : RAM_TYPE;
    variable b_vector    : BIT_VECTOR(C - 1 downto 0);
begin
    if FileName = "-" then
        ram_data := (others => (others => '0'));
    else
        for i in 0 to L - 1 loop
            readline(text_file, text_line);
            read(text_line, b_vector);
            ram_data(i) := To_StdLogicVector(b_vector);
        end loop;
    end if;
      
    return ram_data;
end function;

signal data : RAM_TYPE := RamInit;

begin

process(Clk)
begin
    if RISING_EDGE(Clk) then
        if WD = '1' then
            data(TO_INTEGER(UNSIGNED(Adr))) <= Input;
        end if;
    end if;  
end process;

Output <= data(TO_INTEGER(UNSIGNED(Adr)));

end Behavioral;
