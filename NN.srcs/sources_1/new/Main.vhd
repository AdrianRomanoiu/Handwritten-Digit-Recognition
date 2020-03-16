library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Main is
  Port (Clk   : in STD_LOGIC;
        Rst   : in STD_LOGIC;
        Start : in STD_LOGIC;
        
        RX : in STD_LOGIC;
        
        SW  : in STD_LOGIC_VECTOR(15 downto 0);
        Seg : out STD_LOGIC_VECTOR(7 downto 0);
        An  : out STD_LOGIC_VECTOR(7 downto 0);
        
        Finish : out STD_LOGIC);
end Main;


architecture Behavioral of Main is

------------------------Aux-----------------------------------------
signal zero_32 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal one : STD_LOGIC := '1';
signal zero : STD_LOGIC := '0';
--------------------------------------------------------------------

------------------------Image---------------------------------------
signal IMG_Output      : STD_LOGIC_VECTOR(0 downto 0);
signal Adr_IMG     : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
--------------------------------------------------------------------

-----------------------WEIGHTS_1-----------------------------------
signal WEIGHT_1_Output : STD_LOGIC_VECTOR(31 downto 0);
signal Adr_WEIGHTS : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
--------------------------------------------------------------------

-----------------------WEIGHTS_2-----------------------------------
signal WEIGHT_2_Output : STD_LOGIC_VECTOR(31 downto 0);
signal Adr_WEIGHTS_2 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
--------------------------------------------------------------------

-----------------------BIASES_1-------------------------------------
signal BIASES_1_Output : STD_LOGIC_VECTOR(31 downto 0);
signal Adr_BIASES  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
--------------------------------------------------------------------

-----------------------BIASES_1-------------------------------------
signal BIASES_2_Output : STD_LOGIC_VECTOR(31 downto 0);
signal Adr_BIASES_2  : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
--------------------------------------------------------------------

-----------------------Flip_Flop_Result-----------------------------
signal CE_AddResult : STD_LOGIC;
signal FF_Q : STD_LOGIC_VECTOR(31 downto 0);
--------------------------------------------------------------------

-----------------------Flip_Flop_Mul_Result-------------------------
signal CE_MulResult : STD_LOGIC;
signal FF_Q_Mul : STD_LOGIC_VECTOR(31 downto 0);
--------------------------------------------------------------------

-----------------------Flip_Flop_Add_Result-----------------------------
signal CE_FinAddResult : STD_LOGIC;
signal FF_Q_Add : STD_LOGIC_VECTOR(31 downto 0);
--------------------------------------------------------------------

----------------------MUX_A-----------------------------------------
signal Bias_or_FF_Q : STD_LOGIC;
signal MUX_A_Out : STD_LOGIC_VECTOR(31 downto 0);
--------------------------------------------------------------------

----------------------MUX_B-----------------------------------------
signal Bias_or_AddResult : STD_LOGIC;
signal MUX_B_Out : STD_LOGIC_VECTOR(31 downto 0);
--------------------------------------------------------------------

----------------------MUX_C-----------------------------------------
signal Bias_or_AddResult_2 : STD_LOGIC;
signal MUX_C_Out : STD_LOGIC_VECTOR(31 downto 0);
--------------------------------------------------------------------

---------------------FP_Adder-------------------------------------
signal AddResult : STD_LOGIC_VECTOR(31 downto 0);
signal FP_Add_Reset : STD_LOGIC := '1';
signal FP_Add_Finish : STD_LOGIC;
signal FP_Valid : STD_LOGIC;
------------------------------------------------------------------

---------------------FP_Adder_2-------------------------------------
signal AddResult_Fin : STD_LOGIC_VECTOR(31 downto 0);
signal FP_Add_Reset_2 : STD_LOGIC := '1';
signal FP_Add_Finish_2 : STD_LOGIC;
signal FP_Valid_2 : STD_LOGIC;
------------------------------------------------------------------

---------------------FP_Mul-------------------------------------
signal MulResult : STD_LOGIC_VECTOR(31 downto 0);
signal FP_Mul_Reset : STD_LOGIC := '1';
signal FP_Mul_Finish : STD_LOGIC;
signal FP_Mul_Valid : STD_LOGIC;
------------------------------------------------------------------

---------------------Out-------------------------------
signal CE_Enables : STD_LOGIC_VECTOR(31 downto 0);
------------------------------------------------------------------

---------------------L2-------------------------------
signal L2_Output : STD_LOGIC_VECTOR(31 downto 0);
signal s : STD_LOGIC;
signal L_WD : STD_LOGIC;
signal a : STD_LOGIC_VECTOR(15 downto 0);
------------------------------------------------------------------

---------------------L3-------------------------------
signal L3_Output : STD_LOGIC_VECTOR(31 downto 0);
signal s_2 : STD_LOGIC;
signal L_WD_F : STD_LOGIC;
signal a_2 : STD_LOGIC_VECTOR(15 downto 0);
------------------------------------------------------------------

----------------------SSD-----------------------------------------
signal SSD_Data : STD_LOGIC_VECTOR(31 downto 0);
------------------------------------------------------------------

signal Adr_L_2 : STD_LOGIC_VECTOR(15 downto 0);
signal Adr_L_3 : STD_LOGIC_VECTOR(15 downto 0);
signal andGate : STD_LOGIC := '0';
signal Result  : STD_LOGIC_VECTOR(31 downto 0);
signal Output  : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

----------------------CMP-----------------------------------------
signal CMP_Fin      : STD_LOGIC;
signal CMP_Res      : STD_LOGIC_VECTOR(7 downto 0);
signal CE_CmpResult : STD_LOGIC;
signal CMP_Valid    : STD_LOGIC;
signal CMP_Reset    : STD_LOGIC := '1';
-------------------------------------------------------------------

----------------------UART-----------------------------------------
signal Baud_En   : STD_LOGIC := '0';
signal RX_RDY    : STD_LOGIC := '0';
signal RX_DATA   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal Adr_Input : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
------------------------------------------------------------------

---------------------------Max_Num------------------------------
signal Max_Num_CE  : STD_LOGIC := '0';
signal Max_Num_In  : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal Max_Num_Out : STD_LOGIC_VECTOR(31 downto 0) := (others => '0'); 
------------------------------------------------------------------

---------------------------Adr_Store------------------------------
signal Adr_Store_CE  : STD_LOGIC := '0';
------------------------------------------------------------------

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
                 Adr_Output => Adr_IMG,
                 Adr_Input => Adr_Input,
                 Output => IMG_Output(0));

RAM_WEIGHTS_1: entity WORK.RAM
               generic map(L => 25_088,
                           C => 32,
                           FileName => "Weights_binary_32x784.txt")
               port map(Clk => Clk,
                        Adr => Adr_WEIGHTS,
                        --Rst => '0',
                        WD => '0',
                        Input => zero_32,
                        Output => WEIGHT_1_Output);
                        
RAM_BIAS_1: entity WORK.RAM
               generic map(L => 32,
                           C => 32,
                           FileName => "Biases_binary_32.txt")
               port map(Clk => Clk,
                        Adr => Adr_BIASES,
                        --Rst => '0',
                        WD => '0',
                        Input => zero_32,
                        Output => BIASES_1_Output);

FF: entity WORK.FF
        port map(Clk => Clk,
                 Rst => Rst,
                 CE => CE_AddResult,
                 D => MUX_B_Out,
                 Q => FF_Q);

MUX_A: with Bias_or_FF_Q select MUX_A_Out <= BIASES_1_Output when '0', FF_Q when others;
MUX_B: with Bias_or_AddResult select MUX_B_Out <= BIASES_1_Output when '0', AddResult when others;
FP_ADD: entity WORK.floating_point_0
            port map(aclk => Clk,
                     aresetn => FP_Add_Reset,
                     s_axis_a_tvalid => FP_Valid,
                     s_axis_a_tdata => MUX_A_Out,
                     s_axis_b_tvalid => FP_Valid,
                     s_axis_b_tdata => WEIGHT_1_Output,
                     m_axis_result_tvalid => FP_Add_Finish,
                     m_axis_result_tready => zero,
                     m_axis_result_tdata => AddResult);

UC: entity WORK.UC
        port map(Clk => Clk,
                 Rst => Rst,
                 Start => Start,
                 Add_Finish => FP_Add_Finish,
                 IMG_Bit => IMG_Output,
                 Adr_B => Adr_BIASES,
                 Adr_W => Adr_WEIGHTS,
                 Adr_I => Adr_IMG,
                 Add_Rst => FP_Add_Reset,
                 Add_V => FP_Valid,
                 CE_Enables => CE_Enables,
                 CE_AddResult => CE_AddResult,
                 OP_Out => Bias_or_FF_Q,
                 AZ => Bias_or_AddResult,
                 UC_Finish => s,
                 L_WD => L_WD);
                 
                 
with s select a <= CE_Enables(15 downto 0) when '0', Adr_L_2 when others; --SW here
RAM_L_2: entity WORK.RAM
               generic map(L => 32,
                           C => 32,
                           FileName => "-.txt")
               port map(Clk => Clk,
                        Adr => a,
                        WD => L_WD,
                        --Rst => Rst,
                        Input => FF_Q,
                        Output => L2_Output);

RAM_WEIGHTS_2: entity WORK.RAM
               generic map(L => 320,
                           C => 32,
                           FileName => "Weights_binary_10x32.txt")
               port map(Clk => Clk,
                        Adr => Adr_WEIGHTS_2,
                        WD => '0',
                        --Rst => '0',
                        Input => FF_Q,
                        Output => WEIGHT_2_Output);

RAM_BIAS_2: entity WORK.RAM
               generic map(L => 10,
                           C => 32,
                           FileName => "Biases_binary_10.txt")
               port map(Clk => Clk,
                        Adr => Adr_BIASES_2,
                       --Rst => '0',
                        WD => '0',
                        Input => zero_32,   
                        Output => BIASES_2_Output);


with s_2 select a_2 <= Adr_L_3 when '0', SW when others;
andGate <= (NOT FF_Q_Add(31)) AND L_WD_F;
RAM_L_3: entity WORK.RST_RAM
               generic map(L => 10,
                           C => 32)
               port map(Clk => Clk,
                        Adr => a_2,
                        Rst => Rst,
                        WD => andGate,
                        Input => FF_Q_Add,
                        Output => L3_Output);

Max_Num_CE <= CMP_Res(0) AND CE_CmpResult;
Adr_Store_CE <= CMP_Res(0) AND CE_CmpResult;
MAX_NUM: entity WORK.D
            generic map(S => 32)
            port map(Clk => Clk,
                     Rst => Rst,
                     CE => Max_Num_CE,
                     Input => L3_Output,
                     Output => Max_Num_Out);
                     
ADR_STORE: entity WORK.D
            generic map(S => 16)
            port map(Clk => Clk,
                     Rst => Rst,
                     CE => Adr_Store_CE,
                     Input => a_2,
                     Output => Output(15 downto 0));
                     
CMP: entity WORK.floating_point_2
        port map(aclk => Clk,
                 aresetn => CMP_Reset, 
                 s_axis_a_tvalid => CMP_Valid, 
                 s_axis_a_tdata => L3_Output,
                 s_axis_b_tvalid => CMP_Valid,
                 s_axis_b_tdata => Max_Num_Out,
                 m_axis_result_tvalid => CMP_Fin,
                 m_axis_result_tready => zero,
                 m_axis_result_tdata => CMP_Res); 
                  

FF_MUL_RES: entity WORK.FF
        port map(Clk => Clk,
                 Rst => Rst,
                 CE => CE_MulResult,
                 D => MulResult,
                 Q => FF_Q_Mul);
 
FF_ADD_RES: entity WORK.FF
        port map(Clk => Clk,
                 Rst => Rst,
                 CE => CE_FinAddResult,
                 D => AddResult_Fin,
                 Q => FF_Q_Add);
 
MUX_C: with Bias_or_AddResult_2 select MUX_C_Out <= BIASES_2_Output when '0', FF_Q_Add when others;
FP_ADD_2: entity WORK.floating_point_0
            port map(aclk => Clk,
                     aresetn => FP_Add_Reset_2,
                     s_axis_a_tvalid => FP_Valid_2,
                     s_axis_a_tdata => MUX_C_Out,
                     s_axis_b_tvalid => FP_Valid_2,
                     s_axis_b_tdata => FF_Q_Mul,
                     m_axis_result_tvalid => FP_Add_Finish_2,
                     m_axis_result_tready => zero,
                     m_axis_result_tdata => AddResult_Fin); 

MUL: entity WORK.floating_point_1
        port map(aclk => Clk,
                 aresetn => FP_Mul_Reset,
                 s_axis_a_tvalid => FP_Mul_Valid,
                 s_axis_a_tdata => WEIGHT_2_Output,
                 s_axis_b_tvalid => FP_Mul_Valid,
                 s_axis_b_tdata => L2_Output,
                 m_axis_result_tvalid => FP_Mul_Finish,
                 m_axis_result_tready => zero,
                 m_axis_result_tdata => MulResult);

UC_2: entity WORK.UC_2 
        port map(Clk => Clk,
                 Rst => Rst,
                 Start => s,
                 L2_Bit31 => L2_Output(31),
                 Fin_Mul => FP_Mul_Finish,
                 Fin_Add => FP_Add_Finish_2,
                 Fin_Cmp => CMP_Fin,
                 Adr_B_2 => Adr_BIASES_2,
                 Adr_W_2 => Adr_WEIGHTS_2,
                 Adr_L_2 => Adr_L_2,
                 Adr_L_3 => Adr_L_3,
                 L3_WD => L_WD_F,
                 OP_Out => Bias_or_AddResult_2,
                 UC_Finish => s_2,
                 Mul_Valid => FP_Mul_Valid,
                 Mul_Rst => FP_Mul_Reset,
                 Add_Valid => FP_Valid_2,
                 Add_Rst => FP_Add_Reset_2,
                 Cmp_Valid => CMP_Valid,
                 Cmp_Rst => CMP_Reset,
                 CE_MulResult => CE_MulResult,
                 CE_AddResult => CE_FinAddResult,
                 CE_CmpResult => CE_CmpResult);



SSD: entity WORK.displ7seg
        port map(Clk => Clk,
                 Rst => Rst,
                 Data => Output,
                 An => An,
                 Seg => Seg);
 
Finish <= s_2;

end Behavioral;
