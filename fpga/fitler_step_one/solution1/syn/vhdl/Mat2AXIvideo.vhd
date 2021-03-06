-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mat2AXIvideo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    img_data_stream_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_V_empty_n : IN STD_LOGIC;
    img_data_stream_V_read : OUT STD_LOGIC;
    AXI_video_strm_V_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    AXI_video_strm_V_data_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_data_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_keep_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_keep_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_keep_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_strb_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_strb_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_strb_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_user_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_user_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_user_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_last_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_last_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_last_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_id_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_id_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_id_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_dest_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_dest_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_dest_V_write : OUT STD_LOGIC );
end;


architecture behav of Mat2AXIvideo is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv10_1FF : STD_LOGIC_VECTOR (9 downto 0) := "0111111111";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal img_data_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal exitcond_reg_200 : STD_LOGIC_VECTOR (0 downto 0);
    signal AXI_video_strm_V_data_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_keep_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_strb_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_user_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_last_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_id_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_dest_V_blk_n : STD_LOGIC;
    signal t_V_1_reg_129 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond4_fu_145_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_V_fu_151_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_V_reg_195 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond_fu_157_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal AXI_video_strm_V_id_V1_status : STD_LOGIC;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_V_fu_163_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal axi_last_V_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_reg_209 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal t_V_reg_118 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal AXI_video_strm_V_id_V1_update : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_user_V_fu_78 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((exitcond4_fu_145_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((exitcond4_fu_145_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((exitcond4_fu_145_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    t_V_1_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_157_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                t_V_1_reg_129 <= j_V_fu_163_p2;
            elsif (((exitcond4_fu_145_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                t_V_1_reg_129 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    t_V_reg_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                t_V_reg_118 <= i_V_reg_195;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_reg_118 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    tmp_user_V_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                tmp_user_V_fu_78 <= ap_const_lv1_0;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                tmp_user_V_fu_78 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_157_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                axi_last_V_reg_209 <= axi_last_V_fu_169_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond_reg_200 <= exitcond_fu_157_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_V_reg_195 <= i_V_fu_151_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, exitcond4_fu_145_p2, ap_CS_fsm_state2, exitcond_fu_157_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond4_fu_145_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((exitcond_fu_157_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((exitcond_fu_157_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    AXI_video_strm_V_data_V_blk_n_assign_proc : process(AXI_video_strm_V_data_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_200)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_data_V_blk_n <= AXI_video_strm_V_data_V_full_n;
        else 
            AXI_video_strm_V_data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_data_V_din <= img_data_stream_V_dout;
    AXI_video_strm_V_data_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_dest_V_blk_n_assign_proc : process(AXI_video_strm_V_dest_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_200)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_dest_V_blk_n <= AXI_video_strm_V_dest_V_full_n;
        else 
            AXI_video_strm_V_dest_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_dest_V_din <= ap_const_lv1_0;
    AXI_video_strm_V_dest_V_write <= AXI_video_strm_V_id_V1_update;
    AXI_video_strm_V_id_V1_status <= (AXI_video_strm_V_user_V_full_n and AXI_video_strm_V_strb_V_full_n and AXI_video_strm_V_last_V_full_n and AXI_video_strm_V_keep_V_full_n and AXI_video_strm_V_id_V_full_n and AXI_video_strm_V_dest_V_full_n and AXI_video_strm_V_data_V_full_n);

    AXI_video_strm_V_id_V1_update_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_200, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            AXI_video_strm_V_id_V1_update <= ap_const_logic_1;
        else 
            AXI_video_strm_V_id_V1_update <= ap_const_logic_0;
        end if; 
    end process;


    AXI_video_strm_V_id_V_blk_n_assign_proc : process(AXI_video_strm_V_id_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_200)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_id_V_blk_n <= AXI_video_strm_V_id_V_full_n;
        else 
            AXI_video_strm_V_id_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_id_V_din <= ap_const_lv1_0;
    AXI_video_strm_V_id_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_keep_V_blk_n_assign_proc : process(AXI_video_strm_V_keep_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_200)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_keep_V_blk_n <= AXI_video_strm_V_keep_V_full_n;
        else 
            AXI_video_strm_V_keep_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_keep_V_din <= ap_const_lv1_1;
    AXI_video_strm_V_keep_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_last_V_blk_n_assign_proc : process(AXI_video_strm_V_last_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_200)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_last_V_blk_n <= AXI_video_strm_V_last_V_full_n;
        else 
            AXI_video_strm_V_last_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_last_V_din <= axi_last_V_reg_209;
    AXI_video_strm_V_last_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_strb_V_blk_n_assign_proc : process(AXI_video_strm_V_strb_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_200)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_strb_V_blk_n <= AXI_video_strm_V_strb_V_full_n;
        else 
            AXI_video_strm_V_strb_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_strb_V_din <= ap_const_lv1_0;
    AXI_video_strm_V_strb_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_user_V_blk_n_assign_proc : process(AXI_video_strm_V_user_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_200)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_user_V_blk_n <= AXI_video_strm_V_user_V_full_n;
        else 
            AXI_video_strm_V_user_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_user_V_din <= tmp_user_V_fu_78;
    AXI_video_strm_V_user_V_write <= AXI_video_strm_V_id_V1_update;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(img_data_stream_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_reg_200, AXI_video_strm_V_id_V1_status)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_logic_0 = AXI_video_strm_V_id_V1_status)) or ((exitcond_reg_200 = ap_const_lv1_0) and (img_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(img_data_stream_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_reg_200, AXI_video_strm_V_id_V1_status)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_logic_0 = AXI_video_strm_V_id_V1_status)) or ((exitcond_reg_200 = ap_const_lv1_0) and (img_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(img_data_stream_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_reg_200, AXI_video_strm_V_id_V1_status)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_logic_0 = AXI_video_strm_V_id_V1_status)) or ((exitcond_reg_200 = ap_const_lv1_0) and (img_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(img_data_stream_V_empty_n, exitcond_reg_200, AXI_video_strm_V_id_V1_status)
    begin
                ap_block_state4_pp0_stage0_iter1 <= (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_logic_0 = AXI_video_strm_V_id_V1_status)) or ((exitcond_reg_200 = ap_const_lv1_0) and (img_data_stream_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(exitcond_fu_157_p2)
    begin
        if ((exitcond_fu_157_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, exitcond4_fu_145_p2, ap_CS_fsm_state2)
    begin
        if (((exitcond4_fu_145_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(exitcond4_fu_145_p2, ap_CS_fsm_state2)
    begin
        if (((exitcond4_fu_145_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    axi_last_V_fu_169_p2 <= "1" when (t_V_1_reg_129 = ap_const_lv10_1FF) else "0";
    exitcond4_fu_145_p2 <= "1" when (t_V_reg_118 = ap_const_lv10_200) else "0";
    exitcond_fu_157_p2 <= "1" when (t_V_1_reg_129 = ap_const_lv10_200) else "0";
    i_V_fu_151_p2 <= std_logic_vector(unsigned(t_V_reg_118) + unsigned(ap_const_lv10_1));

    img_data_stream_V_blk_n_assign_proc : process(img_data_stream_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_200)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_data_stream_V_blk_n <= img_data_stream_V_empty_n;
        else 
            img_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_data_stream_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_200, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_200 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            img_data_stream_V_read <= ap_const_logic_1;
        else 
            img_data_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_163_p2 <= std_logic_vector(unsigned(t_V_1_reg_129) + unsigned(ap_const_lv10_1));
end behav;
