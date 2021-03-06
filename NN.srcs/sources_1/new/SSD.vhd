library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SSD is
port(   Clk    : in STD_LOGIC;
		Digits : in STD_LOGIC_VECTOR(15 DOWNTO 0);
		An  : out STD_LOGIC_VECTOR(3 DOWNTO 0);
		Cat : out STD_LOGIC_VECTOR(6 DOWNTO 0));
end SSD;

architecture Behavioral of SSD is

signal countSSD: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal mux_out:STD_LOGIC_VECTOR(3 DOWNTO 0);

begin

process(Clk)
begin
	if rising_edge(Clk) then
		countSSD <= countSSD+1;
		end if;
end process;

process(countSSD(15 downto 0),Digits)
begin
	case (countSSD(15 downto 14)) is
		when "00" => mux_out <= Digits(3 downto 0); 
						An<="1110";
		when "01" => mux_out <= Digits(7 downto 4); 
						An<="1101";
		when "10" => mux_out <= Digits(11 downto 8); 
						An<="1011";
		when "11" => mux_out <= Digits(15 downto 12); 
						An<="0111";
		when others => mux_out<="0000";
					An <="1111";
	end case;
end process;




--HEX-to-seven-segment decoder
--   HEX:   in    STD_LOGIC_VECTOR (3 downto 0);
--   LED:   out   STD_LOGIC_VECTOR (6 downto 0);
-- 
-- segment encoinputg
--      0
--     ---  
--  5 |   | 1
--     ---   <- 6
--  4 |   | 2
--     ---
--      3
   
	
	
	
    with mux_out Select
   Cat<= "1111001" when "0001",   --1
         "0100100" when "0010",   --2
         "0110000" when "0011",   --3
         "0011001" when "0100",   --4
         "0010010" when "0101",   --5
         "0000010" when "0110",   --6
         "1111000" when "0111",   --7
         "0000000" when "1000",   --8
         "0010000" when "1001",   --9
         "0001000" when "1010",   --A
         "0000011" when "1011",   --b
         "1000110" when "1100",   --C
         "0100001" when "1101",   --d
         "0000110" when "1110",   --E
         "0001110" when "1111",   --F
         "1000000" when others;   --0
 
end Behavioral;
