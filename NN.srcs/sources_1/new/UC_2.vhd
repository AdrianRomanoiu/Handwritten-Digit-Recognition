library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UC_2 is
  Port (Clk   : in STD_LOGIC;
        Rst   : in STD_LOGIC;
        Start : in STD_LOGIC;
        
        L2_Bit31 : in STD_LOGIC;
        Fin_Mul  : in STD_LOGIC;
        Fin_Add  : in STD_LOGIC;
        Fin_Cmp  : in STD_LOGIC;
        
        Adr_B_2 : out STD_LOGIC_VECTOR(15 downto 0); 
        Adr_W_2 : out STD_LOGIC_VECTOR(15 downto 0); 
        Adr_L_2 : out STD_LOGIC_VECTOR(15 downto 0);
        Adr_L_3 : out STD_LOGIC_VECTOR(15 downto 0);
        
        L3_WD  : out STD_LOGIC;
        OP_Out : out STD_LOGIC;
        
        UC_Finish : out STD_LOGIC;
        
        Mul_Valid : out STD_LOGIC;
        Mul_Rst   : out STD_LOGIC;
        Add_Valid : out STD_LOGIC;
        Add_Rst   : out STD_LOGIC;
        Cmp_Valid : out STD_LOGIC;
        Cmp_Rst   : out STD_LOGIC;
        
        CE_MulResult : out STD_LOGIC;
        CE_AddResult : out STD_LOGIC;
        CE_CmpResult : out STD_LOGIC);
end UC_2;

architecture Behavioral of UC_2 is

type stateType is (idle, up_c2, up_az, mul, store, add, store_add, rst_1, rst_2, store_l, compare, store_cmp, rst_cmp_1, rst_cmp_2, up_c1, stop);
signal State : stateType := idle;

signal c1 : INTEGER := 10;
signal c2 : INTEGER := 32;
signal OP : STD_LOGIC := '0';

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
                        c1 <= 10;
                        c2 <= 32;
                        State <= idle;
                    end if;
                
                when up_c2 =>
                    if c2 = 0 then
                        State <= store_l;
                    else
                        c2 <= c2 - 1;
                        State <= up_az;
                    end if;
                    
                when up_az =>
                    if L2_Bit31 = '1' then
                        State <= up_c2;
                    else
                        State <= mul;
                    end if;
                    
                when mul =>
                    if Fin_Mul = '1' then
                        State <= store;
                    else
                        State <= mul;
                    end if;
                
                when store =>
                    State <= add;
                    
                when add =>
                    if Fin_Add = '1' then
                        State <= store_add;
                    else
                        State <= add;
                    end if;
                
                when store_add =>
                    State <= rst_1;
                
                when rst_1 =>
                    OP <= '1';
                    State <= rst_2;
                    
                when rst_2 =>
                    State <= up_c2;
                    
                when store_l =>
                    State <= compare;
                    
                when compare =>
                    if Fin_Cmp = '1' then
                        State <= store_cmp;
                    else
                        State <= compare;
                    end if;
                    
                when store_cmp =>
                    State <= rst_cmp_1;
                    
                when rst_cmp_1 =>
                    State <= rst_cmp_2;
                
                when rst_cmp_2 =>
                    State <= up_c1;
                    
                when up_c1 =>
                    c2 <= 32;
                    OP <= '0';
                    if c1 = 1 then
                        State <= stop;
                    else
                        c1 <= c1 - 1;
                        State <= up_c2;
                    end if;
                
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
            Adr_B_2 <= (others => '0');
            Adr_W_2 <= (others => '0'); 
            Adr_L_2 <= (others => '0');
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '1';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            CE_CmpResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            
        when idle => 
            Adr_B_2 <= (others => '0');
            Adr_W_2 <= (others => '0'); 
            Adr_L_2 <= (others => '0');
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when up_c2 => 
            Adr_B_2 <= (others => '0');
            Adr_W_2 <= (others => '0'); 
            Adr_L_2 <= (others => '0');
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when up_az => 
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when store_l =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            L3_WD <= '1'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
        
        when up_c1 =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when store =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '1';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when store_add =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '1';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when rst_1 =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '0';
            Add_Valid <= '0';
            Add_Rst <= '0';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when rst_2 =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '0';
            Add_Valid <= '0';
            Add_Rst <= '0';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
        
        when add => 
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '1';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when mul => 
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= (others => '0');
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '1';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
         
        when compare =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '1';
            Cmp_Rst <= '1';
            CE_CmpResult <= '0';
            
        when store_cmp =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '1';
            CE_CmpResult <= '1';
            
        when rst_cmp_1 =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '0';
            CE_CmpResult <= '0';
            
        when rst_cmp_2 =>
            Adr_B_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            Adr_W_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1 + 32 * (10 - c1), 16));
            Adr_L_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(32 - c2 - 1, 16));
            Adr_L_3 <= STD_LOGIC_VECTOR(TO_UNSIGNED(10 - c1, 16));
            L3_WD <= '0'; 
            OP_Out <= OP;
            UC_Finish <= '0';
            Mul_Valid <= '0';
            Mul_Rst <= '1';
            Add_Valid <= '0';
            Add_Rst <= '1';
            CE_MulResult <= '0';
            CE_AddResult <= '0';
            Cmp_Valid <= '0';
            Cmp_Rst <= '0';
            CE_CmpResult <= '0';
            
    end case;
end process;

end Behavioral;
