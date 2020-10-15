-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity image_filter is
port (
    input_V_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    input_V_data_V_empty_n : IN STD_LOGIC;
    input_V_data_V_read : OUT STD_LOGIC;
    input_V_keep_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    input_V_keep_V_empty_n : IN STD_LOGIC;
    input_V_keep_V_read : OUT STD_LOGIC;
    input_V_strb_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    input_V_strb_V_empty_n : IN STD_LOGIC;
    input_V_strb_V_read : OUT STD_LOGIC;
    input_V_user_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    input_V_user_V_empty_n : IN STD_LOGIC;
    input_V_user_V_read : OUT STD_LOGIC;
    input_V_last_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    input_V_last_V_empty_n : IN STD_LOGIC;
    input_V_last_V_read : OUT STD_LOGIC;
    input_V_id_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    input_V_id_V_empty_n : IN STD_LOGIC;
    input_V_id_V_read : OUT STD_LOGIC;
    input_V_dest_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    input_V_dest_V_empty_n : IN STD_LOGIC;
    input_V_dest_V_read : OUT STD_LOGIC;
    output_V_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    output_V_data_V_full_n : IN STD_LOGIC;
    output_V_data_V_write : OUT STD_LOGIC;
    output_V_keep_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_V_keep_V_full_n : IN STD_LOGIC;
    output_V_keep_V_write : OUT STD_LOGIC;
    output_V_strb_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_V_strb_V_full_n : IN STD_LOGIC;
    output_V_strb_V_write : OUT STD_LOGIC;
    output_V_user_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_V_user_V_full_n : IN STD_LOGIC;
    output_V_user_V_write : OUT STD_LOGIC;
    output_V_last_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_V_last_V_full_n : IN STD_LOGIC;
    output_V_last_V_write : OUT STD_LOGIC;
    output_V_id_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_V_id_V_full_n : IN STD_LOGIC;
    output_V_id_V_write : OUT STD_LOGIC;
    output_V_dest_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    output_V_dest_V_full_n : IN STD_LOGIC;
    output_V_dest_V_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of image_filter is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "image_filter,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=13.500000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=12.771250,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=7,HLS_SYN_DSP=23,HLS_SYN_FF=1785,HLS_SYN_LUT=4974,HLS_VERSION=2018_3}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal Block_proc_U0_ap_start : STD_LOGIC;
    signal Block_proc_U0_ap_done : STD_LOGIC;
    signal Block_proc_U0_ap_continue : STD_LOGIC;
    signal Block_proc_U0_ap_idle : STD_LOGIC;
    signal Block_proc_U0_ap_ready : STD_LOGIC;
    signal Block_proc_U0_img_input_rows_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal Block_proc_U0_img_input_rows_V_out_write : STD_LOGIC;
    signal Block_proc_U0_img_input_cols_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal Block_proc_U0_img_input_cols_V_out_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_start : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_done : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_continue : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_idle : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_ready : STD_LOGIC;
    signal AXIvideo2Mat_U0_start_out : STD_LOGIC;
    signal AXIvideo2Mat_U0_start_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_AXI_video_strm_V_data_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_AXI_video_strm_V_keep_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_AXI_video_strm_V_strb_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_AXI_video_strm_V_user_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_AXI_video_strm_V_last_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_AXI_video_strm_V_id_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_AXI_video_strm_V_dest_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_rows_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_cols_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_data_stream_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal AXIvideo2Mat_U0_img_data_stream_V_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_rows_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal AXIvideo2Mat_U0_img_rows_V_out_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_cols_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal AXIvideo2Mat_U0_img_cols_V_out_write : STD_LOGIC;
    signal GaussianBlur_U0_ap_start : STD_LOGIC;
    signal GaussianBlur_U0_ap_done : STD_LOGIC;
    signal GaussianBlur_U0_ap_continue : STD_LOGIC;
    signal GaussianBlur_U0_ap_idle : STD_LOGIC;
    signal GaussianBlur_U0_ap_ready : STD_LOGIC;
    signal GaussianBlur_U0_start_out : STD_LOGIC;
    signal GaussianBlur_U0_start_write : STD_LOGIC;
    signal GaussianBlur_U0_p_src_rows_V_read : STD_LOGIC;
    signal GaussianBlur_U0_p_src_cols_V_read : STD_LOGIC;
    signal GaussianBlur_U0_p_src_data_stream_V_read : STD_LOGIC;
    signal GaussianBlur_U0_p_dst_data_stream_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal GaussianBlur_U0_p_dst_data_stream_V_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_start : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_done : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_continue : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_idle : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_ready : STD_LOGIC;
    signal Mat2AXIvideo_U0_img_data_stream_V_read : STD_LOGIC;
    signal Mat2AXIvideo_U0_AXI_video_strm_V_data_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal Mat2AXIvideo_U0_AXI_video_strm_V_data_V_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_din : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_din : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_AXI_video_strm_V_user_V_din : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_AXI_video_strm_V_user_V_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_AXI_video_strm_V_last_V_din : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_AXI_video_strm_V_last_V_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_AXI_video_strm_V_id_V_din : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_AXI_video_strm_V_id_V_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_din : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal img_input_rows_V_c_full_n : STD_LOGIC;
    signal img_input_rows_V_c_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal img_input_rows_V_c_empty_n : STD_LOGIC;
    signal img_input_cols_V_c_full_n : STD_LOGIC;
    signal img_input_cols_V_c_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal img_input_cols_V_c_empty_n : STD_LOGIC;
    signal img_input_data_strea_full_n : STD_LOGIC;
    signal img_input_data_strea_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_input_data_strea_empty_n : STD_LOGIC;
    signal img_input_rows_V_c6_full_n : STD_LOGIC;
    signal img_input_rows_V_c6_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal img_input_rows_V_c6_empty_n : STD_LOGIC;
    signal img_input_cols_V_c7_full_n : STD_LOGIC;
    signal img_input_cols_V_c7_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal img_input_cols_V_c7_empty_n : STD_LOGIC;
    signal filtered_data_stream_full_n : STD_LOGIC;
    signal filtered_data_stream_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal filtered_data_stream_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_Block_proc_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_Block_proc_U0_ap_ready : STD_LOGIC;
    signal Block_proc_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_AXIvideo2Mat_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_AXIvideo2Mat_U0_ap_ready : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal Block_proc_U0_start_full_n : STD_LOGIC;
    signal Block_proc_U0_start_write : STD_LOGIC;
    signal start_for_GaussianBlur_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_GaussianBlur_U0_full_n : STD_LOGIC;
    signal start_for_GaussianBlur_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_GaussianBlur_U0_empty_n : STD_LOGIC;
    signal start_for_Mat2AXIvideo_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Mat2AXIvideo_U0_full_n : STD_LOGIC;
    signal start_for_Mat2AXIvideo_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Mat2AXIvideo_U0_empty_n : STD_LOGIC;
    signal Mat2AXIvideo_U0_start_full_n : STD_LOGIC;
    signal Mat2AXIvideo_U0_start_write : STD_LOGIC;

    component Block_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_input_rows_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        img_input_rows_V_out_full_n : IN STD_LOGIC;
        img_input_rows_V_out_write : OUT STD_LOGIC;
        img_input_cols_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        img_input_cols_V_out_full_n : IN STD_LOGIC;
        img_input_cols_V_out_write : OUT STD_LOGIC );
    end component;


    component AXIvideo2Mat IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        AXI_video_strm_V_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        AXI_video_strm_V_data_V_empty_n : IN STD_LOGIC;
        AXI_video_strm_V_data_V_read : OUT STD_LOGIC;
        AXI_video_strm_V_keep_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        AXI_video_strm_V_keep_V_empty_n : IN STD_LOGIC;
        AXI_video_strm_V_keep_V_read : OUT STD_LOGIC;
        AXI_video_strm_V_strb_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        AXI_video_strm_V_strb_V_empty_n : IN STD_LOGIC;
        AXI_video_strm_V_strb_V_read : OUT STD_LOGIC;
        AXI_video_strm_V_user_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        AXI_video_strm_V_user_V_empty_n : IN STD_LOGIC;
        AXI_video_strm_V_user_V_read : OUT STD_LOGIC;
        AXI_video_strm_V_last_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        AXI_video_strm_V_last_V_empty_n : IN STD_LOGIC;
        AXI_video_strm_V_last_V_read : OUT STD_LOGIC;
        AXI_video_strm_V_id_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        AXI_video_strm_V_id_V_empty_n : IN STD_LOGIC;
        AXI_video_strm_V_id_V_read : OUT STD_LOGIC;
        AXI_video_strm_V_dest_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        AXI_video_strm_V_dest_V_empty_n : IN STD_LOGIC;
        AXI_video_strm_V_dest_V_read : OUT STD_LOGIC;
        img_rows_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        img_rows_V_empty_n : IN STD_LOGIC;
        img_rows_V_read : OUT STD_LOGIC;
        img_cols_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        img_cols_V_empty_n : IN STD_LOGIC;
        img_cols_V_read : OUT STD_LOGIC;
        img_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_V_full_n : IN STD_LOGIC;
        img_data_stream_V_write : OUT STD_LOGIC;
        img_rows_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        img_rows_V_out_full_n : IN STD_LOGIC;
        img_rows_V_out_write : OUT STD_LOGIC;
        img_cols_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        img_cols_V_out_full_n : IN STD_LOGIC;
        img_cols_V_out_write : OUT STD_LOGIC );
    end component;


    component GaussianBlur IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_src_rows_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        p_src_rows_V_empty_n : IN STD_LOGIC;
        p_src_rows_V_read : OUT STD_LOGIC;
        p_src_cols_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        p_src_cols_V_empty_n : IN STD_LOGIC;
        p_src_cols_V_read : OUT STD_LOGIC;
        p_src_data_stream_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_stream_V_empty_n : IN STD_LOGIC;
        p_src_data_stream_V_read : OUT STD_LOGIC;
        p_dst_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_data_stream_V_full_n : IN STD_LOGIC;
        p_dst_data_stream_V_write : OUT STD_LOGIC );
    end component;


    component Mat2AXIvideo IS
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
    end component;


    component fifo_w11_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (10 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (10 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_Gaussiazec IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_Mat2AXIAem IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    Block_proc_U0 : component Block_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => Block_proc_U0_ap_start,
        ap_done => Block_proc_U0_ap_done,
        ap_continue => Block_proc_U0_ap_continue,
        ap_idle => Block_proc_U0_ap_idle,
        ap_ready => Block_proc_U0_ap_ready,
        img_input_rows_V_out_din => Block_proc_U0_img_input_rows_V_out_din,
        img_input_rows_V_out_full_n => img_input_rows_V_c_full_n,
        img_input_rows_V_out_write => Block_proc_U0_img_input_rows_V_out_write,
        img_input_cols_V_out_din => Block_proc_U0_img_input_cols_V_out_din,
        img_input_cols_V_out_full_n => img_input_cols_V_c_full_n,
        img_input_cols_V_out_write => Block_proc_U0_img_input_cols_V_out_write);

    AXIvideo2Mat_U0 : component AXIvideo2Mat
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => AXIvideo2Mat_U0_ap_start,
        start_full_n => start_for_GaussianBlur_U0_full_n,
        ap_done => AXIvideo2Mat_U0_ap_done,
        ap_continue => AXIvideo2Mat_U0_ap_continue,
        ap_idle => AXIvideo2Mat_U0_ap_idle,
        ap_ready => AXIvideo2Mat_U0_ap_ready,
        start_out => AXIvideo2Mat_U0_start_out,
        start_write => AXIvideo2Mat_U0_start_write,
        AXI_video_strm_V_data_V_dout => input_V_data_V_dout,
        AXI_video_strm_V_data_V_empty_n => input_V_data_V_empty_n,
        AXI_video_strm_V_data_V_read => AXIvideo2Mat_U0_AXI_video_strm_V_data_V_read,
        AXI_video_strm_V_keep_V_dout => input_V_keep_V_dout,
        AXI_video_strm_V_keep_V_empty_n => input_V_keep_V_empty_n,
        AXI_video_strm_V_keep_V_read => AXIvideo2Mat_U0_AXI_video_strm_V_keep_V_read,
        AXI_video_strm_V_strb_V_dout => input_V_strb_V_dout,
        AXI_video_strm_V_strb_V_empty_n => input_V_strb_V_empty_n,
        AXI_video_strm_V_strb_V_read => AXIvideo2Mat_U0_AXI_video_strm_V_strb_V_read,
        AXI_video_strm_V_user_V_dout => input_V_user_V_dout,
        AXI_video_strm_V_user_V_empty_n => input_V_user_V_empty_n,
        AXI_video_strm_V_user_V_read => AXIvideo2Mat_U0_AXI_video_strm_V_user_V_read,
        AXI_video_strm_V_last_V_dout => input_V_last_V_dout,
        AXI_video_strm_V_last_V_empty_n => input_V_last_V_empty_n,
        AXI_video_strm_V_last_V_read => AXIvideo2Mat_U0_AXI_video_strm_V_last_V_read,
        AXI_video_strm_V_id_V_dout => input_V_id_V_dout,
        AXI_video_strm_V_id_V_empty_n => input_V_id_V_empty_n,
        AXI_video_strm_V_id_V_read => AXIvideo2Mat_U0_AXI_video_strm_V_id_V_read,
        AXI_video_strm_V_dest_V_dout => input_V_dest_V_dout,
        AXI_video_strm_V_dest_V_empty_n => input_V_dest_V_empty_n,
        AXI_video_strm_V_dest_V_read => AXIvideo2Mat_U0_AXI_video_strm_V_dest_V_read,
        img_rows_V_dout => img_input_rows_V_c_dout,
        img_rows_V_empty_n => img_input_rows_V_c_empty_n,
        img_rows_V_read => AXIvideo2Mat_U0_img_rows_V_read,
        img_cols_V_dout => img_input_cols_V_c_dout,
        img_cols_V_empty_n => img_input_cols_V_c_empty_n,
        img_cols_V_read => AXIvideo2Mat_U0_img_cols_V_read,
        img_data_stream_V_din => AXIvideo2Mat_U0_img_data_stream_V_din,
        img_data_stream_V_full_n => img_input_data_strea_full_n,
        img_data_stream_V_write => AXIvideo2Mat_U0_img_data_stream_V_write,
        img_rows_V_out_din => AXIvideo2Mat_U0_img_rows_V_out_din,
        img_rows_V_out_full_n => img_input_rows_V_c6_full_n,
        img_rows_V_out_write => AXIvideo2Mat_U0_img_rows_V_out_write,
        img_cols_V_out_din => AXIvideo2Mat_U0_img_cols_V_out_din,
        img_cols_V_out_full_n => img_input_cols_V_c7_full_n,
        img_cols_V_out_write => AXIvideo2Mat_U0_img_cols_V_out_write);

    GaussianBlur_U0 : component GaussianBlur
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => GaussianBlur_U0_ap_start,
        start_full_n => start_for_Mat2AXIvideo_U0_full_n,
        ap_done => GaussianBlur_U0_ap_done,
        ap_continue => GaussianBlur_U0_ap_continue,
        ap_idle => GaussianBlur_U0_ap_idle,
        ap_ready => GaussianBlur_U0_ap_ready,
        start_out => GaussianBlur_U0_start_out,
        start_write => GaussianBlur_U0_start_write,
        p_src_rows_V_dout => img_input_rows_V_c6_dout,
        p_src_rows_V_empty_n => img_input_rows_V_c6_empty_n,
        p_src_rows_V_read => GaussianBlur_U0_p_src_rows_V_read,
        p_src_cols_V_dout => img_input_cols_V_c7_dout,
        p_src_cols_V_empty_n => img_input_cols_V_c7_empty_n,
        p_src_cols_V_read => GaussianBlur_U0_p_src_cols_V_read,
        p_src_data_stream_V_dout => img_input_data_strea_dout,
        p_src_data_stream_V_empty_n => img_input_data_strea_empty_n,
        p_src_data_stream_V_read => GaussianBlur_U0_p_src_data_stream_V_read,
        p_dst_data_stream_V_din => GaussianBlur_U0_p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n => filtered_data_stream_full_n,
        p_dst_data_stream_V_write => GaussianBlur_U0_p_dst_data_stream_V_write);

    Mat2AXIvideo_U0 : component Mat2AXIvideo
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => Mat2AXIvideo_U0_ap_start,
        ap_done => Mat2AXIvideo_U0_ap_done,
        ap_continue => Mat2AXIvideo_U0_ap_continue,
        ap_idle => Mat2AXIvideo_U0_ap_idle,
        ap_ready => Mat2AXIvideo_U0_ap_ready,
        img_data_stream_V_dout => filtered_data_stream_dout,
        img_data_stream_V_empty_n => filtered_data_stream_empty_n,
        img_data_stream_V_read => Mat2AXIvideo_U0_img_data_stream_V_read,
        AXI_video_strm_V_data_V_din => Mat2AXIvideo_U0_AXI_video_strm_V_data_V_din,
        AXI_video_strm_V_data_V_full_n => output_V_data_V_full_n,
        AXI_video_strm_V_data_V_write => Mat2AXIvideo_U0_AXI_video_strm_V_data_V_write,
        AXI_video_strm_V_keep_V_din => Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_din,
        AXI_video_strm_V_keep_V_full_n => output_V_keep_V_full_n,
        AXI_video_strm_V_keep_V_write => Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_write,
        AXI_video_strm_V_strb_V_din => Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_din,
        AXI_video_strm_V_strb_V_full_n => output_V_strb_V_full_n,
        AXI_video_strm_V_strb_V_write => Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_write,
        AXI_video_strm_V_user_V_din => Mat2AXIvideo_U0_AXI_video_strm_V_user_V_din,
        AXI_video_strm_V_user_V_full_n => output_V_user_V_full_n,
        AXI_video_strm_V_user_V_write => Mat2AXIvideo_U0_AXI_video_strm_V_user_V_write,
        AXI_video_strm_V_last_V_din => Mat2AXIvideo_U0_AXI_video_strm_V_last_V_din,
        AXI_video_strm_V_last_V_full_n => output_V_last_V_full_n,
        AXI_video_strm_V_last_V_write => Mat2AXIvideo_U0_AXI_video_strm_V_last_V_write,
        AXI_video_strm_V_id_V_din => Mat2AXIvideo_U0_AXI_video_strm_V_id_V_din,
        AXI_video_strm_V_id_V_full_n => output_V_id_V_full_n,
        AXI_video_strm_V_id_V_write => Mat2AXIvideo_U0_AXI_video_strm_V_id_V_write,
        AXI_video_strm_V_dest_V_din => Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_din,
        AXI_video_strm_V_dest_V_full_n => output_V_dest_V_full_n,
        AXI_video_strm_V_dest_V_write => Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_write);

    img_input_rows_V_c_U : component fifo_w11_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc_U0_img_input_rows_V_out_din,
        if_full_n => img_input_rows_V_c_full_n,
        if_write => Block_proc_U0_img_input_rows_V_out_write,
        if_dout => img_input_rows_V_c_dout,
        if_empty_n => img_input_rows_V_c_empty_n,
        if_read => AXIvideo2Mat_U0_img_rows_V_read);

    img_input_cols_V_c_U : component fifo_w11_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc_U0_img_input_cols_V_out_din,
        if_full_n => img_input_cols_V_c_full_n,
        if_write => Block_proc_U0_img_input_cols_V_out_write,
        if_dout => img_input_cols_V_c_dout,
        if_empty_n => img_input_cols_V_c_empty_n,
        if_read => AXIvideo2Mat_U0_img_cols_V_read);

    img_input_data_strea_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_data_stream_V_din,
        if_full_n => img_input_data_strea_full_n,
        if_write => AXIvideo2Mat_U0_img_data_stream_V_write,
        if_dout => img_input_data_strea_dout,
        if_empty_n => img_input_data_strea_empty_n,
        if_read => GaussianBlur_U0_p_src_data_stream_V_read);

    img_input_rows_V_c6_U : component fifo_w11_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_rows_V_out_din,
        if_full_n => img_input_rows_V_c6_full_n,
        if_write => AXIvideo2Mat_U0_img_rows_V_out_write,
        if_dout => img_input_rows_V_c6_dout,
        if_empty_n => img_input_rows_V_c6_empty_n,
        if_read => GaussianBlur_U0_p_src_rows_V_read);

    img_input_cols_V_c7_U : component fifo_w11_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_cols_V_out_din,
        if_full_n => img_input_cols_V_c7_full_n,
        if_write => AXIvideo2Mat_U0_img_cols_V_out_write,
        if_dout => img_input_cols_V_c7_dout,
        if_empty_n => img_input_cols_V_c7_empty_n,
        if_read => GaussianBlur_U0_p_src_cols_V_read);

    filtered_data_stream_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => GaussianBlur_U0_p_dst_data_stream_V_din,
        if_full_n => filtered_data_stream_full_n,
        if_write => GaussianBlur_U0_p_dst_data_stream_V_write,
        if_dout => filtered_data_stream_dout,
        if_empty_n => filtered_data_stream_empty_n,
        if_read => Mat2AXIvideo_U0_img_data_stream_V_read);

    start_for_Gaussiazec_U : component start_for_Gaussiazec
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_GaussianBlur_U0_din,
        if_full_n => start_for_GaussianBlur_U0_full_n,
        if_write => AXIvideo2Mat_U0_start_write,
        if_dout => start_for_GaussianBlur_U0_dout,
        if_empty_n => start_for_GaussianBlur_U0_empty_n,
        if_read => GaussianBlur_U0_ap_ready);

    start_for_Mat2AXIAem_U : component start_for_Mat2AXIAem
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_Mat2AXIvideo_U0_din,
        if_full_n => start_for_Mat2AXIvideo_U0_full_n,
        if_write => GaussianBlur_U0_start_write,
        if_dout => start_for_Mat2AXIvideo_U0_dout,
        if_empty_n => start_for_Mat2AXIvideo_U0_empty_n,
        if_read => Mat2AXIvideo_U0_ap_ready);





    ap_sync_reg_AXIvideo2Mat_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_sync_AXIvideo2Mat_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_Block_proc_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_Block_proc_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_Block_proc_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_Block_proc_U0_ap_ready <= ap_sync_Block_proc_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    AXIvideo2Mat_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_sync_ready = ap_const_logic_1) and (ap_const_logic_0 = AXIvideo2Mat_U0_ap_ready))) then 
                AXIvideo2Mat_U0_ap_ready_count <= std_logic_vector(unsigned(AXIvideo2Mat_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_const_logic_1 = AXIvideo2Mat_U0_ap_ready) and (ap_sync_ready = ap_const_logic_0))) then 
                AXIvideo2Mat_U0_ap_ready_count <= std_logic_vector(unsigned(AXIvideo2Mat_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    Block_proc_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_sync_ready = ap_const_logic_1) and (ap_const_logic_0 = Block_proc_U0_ap_ready))) then 
                Block_proc_U0_ap_ready_count <= std_logic_vector(unsigned(Block_proc_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_const_logic_1 = Block_proc_U0_ap_ready) and (ap_sync_ready = ap_const_logic_0))) then 
                Block_proc_U0_ap_ready_count <= std_logic_vector(unsigned(Block_proc_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;
    AXIvideo2Mat_U0_ap_continue <= ap_const_logic_1;
    AXIvideo2Mat_U0_ap_start <= ((ap_sync_reg_AXIvideo2Mat_U0_ap_ready xor ap_const_logic_1) and ap_start);
    Block_proc_U0_ap_continue <= ap_const_logic_1;
    Block_proc_U0_ap_start <= ((ap_sync_reg_Block_proc_U0_ap_ready xor ap_const_logic_1) and ap_start);
    Block_proc_U0_start_full_n <= ap_const_logic_1;
    Block_proc_U0_start_write <= ap_const_logic_0;
    GaussianBlur_U0_ap_continue <= ap_const_logic_1;
    GaussianBlur_U0_ap_start <= start_for_GaussianBlur_U0_empty_n;
    Mat2AXIvideo_U0_ap_continue <= ap_const_logic_1;
    Mat2AXIvideo_U0_ap_start <= start_for_Mat2AXIvideo_U0_empty_n;
    Mat2AXIvideo_U0_start_full_n <= ap_const_logic_1;
    Mat2AXIvideo_U0_start_write <= ap_const_logic_0;
    ap_done <= Mat2AXIvideo_U0_ap_done;
    ap_idle <= (Mat2AXIvideo_U0_ap_idle and GaussianBlur_U0_ap_idle and Block_proc_U0_ap_idle and AXIvideo2Mat_U0_ap_idle);
    ap_ready <= ap_sync_ready;
    ap_sync_AXIvideo2Mat_U0_ap_ready <= (ap_sync_reg_AXIvideo2Mat_U0_ap_ready or AXIvideo2Mat_U0_ap_ready);
    ap_sync_Block_proc_U0_ap_ready <= (ap_sync_reg_Block_proc_U0_ap_ready or Block_proc_U0_ap_ready);
    ap_sync_continue <= ap_const_logic_1;
    ap_sync_done <= Mat2AXIvideo_U0_ap_done;
    ap_sync_ready <= (ap_sync_Block_proc_U0_ap_ready and ap_sync_AXIvideo2Mat_U0_ap_ready);
    input_V_data_V_read <= AXIvideo2Mat_U0_AXI_video_strm_V_data_V_read;
    input_V_dest_V_read <= AXIvideo2Mat_U0_AXI_video_strm_V_dest_V_read;
    input_V_id_V_read <= AXIvideo2Mat_U0_AXI_video_strm_V_id_V_read;
    input_V_keep_V_read <= AXIvideo2Mat_U0_AXI_video_strm_V_keep_V_read;
    input_V_last_V_read <= AXIvideo2Mat_U0_AXI_video_strm_V_last_V_read;
    input_V_strb_V_read <= AXIvideo2Mat_U0_AXI_video_strm_V_strb_V_read;
    input_V_user_V_read <= AXIvideo2Mat_U0_AXI_video_strm_V_user_V_read;
    output_V_data_V_din <= Mat2AXIvideo_U0_AXI_video_strm_V_data_V_din;
    output_V_data_V_write <= Mat2AXIvideo_U0_AXI_video_strm_V_data_V_write;
    output_V_dest_V_din <= Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_din;
    output_V_dest_V_write <= Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_write;
    output_V_id_V_din <= Mat2AXIvideo_U0_AXI_video_strm_V_id_V_din;
    output_V_id_V_write <= Mat2AXIvideo_U0_AXI_video_strm_V_id_V_write;
    output_V_keep_V_din <= Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_din;
    output_V_keep_V_write <= Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_write;
    output_V_last_V_din <= Mat2AXIvideo_U0_AXI_video_strm_V_last_V_din;
    output_V_last_V_write <= Mat2AXIvideo_U0_AXI_video_strm_V_last_V_write;
    output_V_strb_V_din <= Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_din;
    output_V_strb_V_write <= Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_write;
    output_V_user_V_din <= Mat2AXIvideo_U0_AXI_video_strm_V_user_V_din;
    output_V_user_V_write <= Mat2AXIvideo_U0_AXI_video_strm_V_user_V_write;
    start_for_GaussianBlur_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_Mat2AXIvideo_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;
