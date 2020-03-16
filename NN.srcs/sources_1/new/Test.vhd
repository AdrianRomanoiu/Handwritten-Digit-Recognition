--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity Test is
--  Port (Clk : in STD_LOGIC;
--        Rst : in STD_LOGIC;
        
--        RX : in STD_LOGIC;
        
--        An  : out STD_LOGIC_VECTOR(7 downto 0);
--        Seg : out STD_LOGIC_VECTOR(7 downto 0);
        
--        Finish : out STD_LOGIC);
--end Test;

--architecture Behavioral of Test is

--signal Data     : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
--signal RX_Data  : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
--signal RX_Ready : STD_LOGIC := '0';

--begin

--RCV: entity WORK.UART_Receiver
--        port map(Clk => Clk,
--                 Rst => Rst,
--                 RX => RX,
--                 RX_Ready => RX_Ready,
--                 RX_Data => RX_Data);

--process(RX_Ready)
--begin
--    if RX_Ready = '1' then
--        Data <= "000000000000000000000000" & RX_Data; 
--    end if;
--end process;

--SSD: entity WORK.displ7seg
--        port map(Clk => Clk,
--                 Rst => Rst,
--                 An => An,
--                 Seg => Seg,
--                 Data => Data);

--Finish <= RX_Ready;

--end Behavioral;
