library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Receiver is
  Port (Clk : in STD_LOGIC;
        Rst : in STD_LOGIC;
        RX  : in STD_LOGIC;
        
        SW : in STD_LOGIC_VECTOR(15 downto 0);
        
        An  : out STD_LOGIC_VECTOR(7 downto 0);
        Seg : out STD_LOGIC_VECTOR(7 downto 0));
end Receiver;

architecture Behavioral of Receiver is

signal Baud_En : STD_LOGIC := '0';

signal RX_RDY  : STD_LOGIC := '0';
signal RX_DATA : STD_LOGIC_VECTOR(7 downto 0) := (others => '0'); 

signal Output : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

signal Adr_Input : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

begin

GEN: entity WORK.BAUD_GEN
        port map(Clk => Clk,
                 Baud_En => Baud_En);
                 
RX_FSM: entity WORK.RX_FSM
        port map(Clk => Clk,
                 Rst => Rst,
                 Baud_En => Baud_En,
                 RX => RX,
                 Adr_Input => Adr_Input,
                 RX_RDY => RX_RDY,
                 RX_DATA => RX_DATA);
                 
IMAGE: entity WORK.IMAGE
        port map(Clk => Clk,
                 Rst => Rst,
                 WD => RX_RDY,
                 Input => RX_DATA,
                 Adr_Output => SW,
                 Adr_Input => Adr_Input,
                 Output => Output(0));
                 
                      
SSD: entity WORK.displ7seg
        port map(Clk => Clk,
                 Rst => Rst,
                 An => An,
                 Seg => Seg,
                 Data => Output);

end Behavioral;
