library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UC is
  Port (Clk   : in STD_LOGIC;
        Rst   : in STD_LOGIC;
        Start : in STD_LOGIC;
        
        Add_Finish : in STD_LOGIC;
        IMG_Bit    : in STD_LOGIC_VECTOR(0 downto 0);
        
        Adr_B : out STD_LOGIC_VECTOR(15 downto 0);
        Adr_W : out STD_LOGIC_VECTOR(15 downto 0);
        Adr_I : out STD_LOGIC_VECTOR(15 downto 0);
        
        Add_Rst : out STD_LOGIC;
        Add_V   : out STD_LOGIC;
        
        CE_Enables   : out STD_LOGIC_VECTOR(31 downto 0);
        CE_AddResult : out STD_LOGIC;
        
        L_WD : out STD_LOGIC;
        
        OP_Out : out STD_LOGIC;
        AZ     : out STD_LOGIC;
        
        UC_Finish : out STD_LOGIC);
end UC;

architecture Behavioral of UC is

type stateType is (idle, up_c2, up_za, check_za, l_store, store_b, up_c1, add, store, rst_1, rst_2, stop);
signal State : stateType := idle;

signal c1 : INTEGER := 32;
signal c2 : INTEGER := 784;
signal za : INTEGER := 0;

signal OP : STD_LOGIC := '0';

signal one : STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000001";

begin

process(Clk)
begin
    if RISING_EDGE(Clk) then
        if Rst = '1' then
            State <= idle;
        else
            case State is 
                when idle =>
                    if Start = '1' then
                        State <= up_c2;
                    else
                        c1 <= 32;
                        c2 <= 784;
                        State <= idle;
                    end if;
                
                when up_c2 =>
                    if c2 = 0 then
                        State <= check_za;
                    else
                        c2 <= c2 - 1;
                        State <= up_za;
                    end if;
                    
                when check_za =>
                    if za = 0 then
                        State <= store_b;
                    else
                        State <= l_store;
                    end if;
                
                when store_b =>
                    State <= l_store;
                    
                when l_store =>
                    State <= up_c1;
                    
                when up_c1 =>
                    c2 <= 784;
                    za <= 0;
                    OP <= '0';
                    if c1 = 1 then
                        State <= stop;
                    else
                        c1 <= c1 - 1;
                        State <= up_c2;
                    end if;
                
                when up_za =>
                    za <= za + TO_INTEGER(UNSIGNED(IMG_Bit));
                    if IMG_Bit(0) = '0' then
                        State <= up_c2;
                    else
                        State <= add;
                    end if;
                    
                when add =>
                    if Add_Finish = '1' then
                        State <= store;
                    else
                        State <= add;
                    end if;
                
                when store =>
                    State <= rst_1;
                    
                when rst_1 =>
                    OP <= '1';
                    State <= rst_2;
                    
                when rst_2 =>
                    State <= up_c2;
                
                when stop =>
                    State <= stop;
                
            end case;
        end if;
    end if;
end process;

process(State)
begin
    case State is
        when stop =>
            Adr_B <= (others => '0');
            Adr_W <= (others => '0');
            Adr_I <= (others => '0');
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '1';
            L_WD <= '0';
        
        when idle =>
            Adr_B <= (others => '0');
            Adr_W <= (others => '0');
            Adr_I <= (others => '0');
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
        
        when up_c2 =>
            Adr_B <= (others => '0');
            Adr_W <= (others => '0');
            Adr_I <= (others => '0');
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
        
        when up_za =>
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
            
        when check_za =>
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
            
        when l_store =>
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 32));
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '1';
            
        when store_b =>
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '1';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
            
        when up_c1 => 
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
            
        when add =>
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '1';
            Add_V   <= '1';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
        
        when store =>
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '1';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '1';
            OP_Out <= OP;
            AZ <= '1';
            UC_Finish <= '0';
            L_WD <= '0';
            
        when rst_1 =>
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '0';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
            
        when rst_2 => 
            Adr_B <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c1, 16));
            Adr_W <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1 + 784 * (32 - c1), 16));
            Adr_I <= STD_LOGIC_VECTOR(TO_UNSIGNED(784 - c2 - 1, 16));
            Add_Rst <= '0';
            Add_V   <= '0';
            CE_Enables   <= (others => '0'); 
            CE_AddResult <= '0';
            OP_Out <= OP;
            AZ <= '0';
            UC_Finish <= '0';
            L_WD <= '0';
        
    end case;
end process;

end Behavioral;
