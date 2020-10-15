// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AXIvideo2Mat (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        AXI_video_strm_V_data_V_dout,
        AXI_video_strm_V_data_V_empty_n,
        AXI_video_strm_V_data_V_read,
        AXI_video_strm_V_keep_V_dout,
        AXI_video_strm_V_keep_V_empty_n,
        AXI_video_strm_V_keep_V_read,
        AXI_video_strm_V_strb_V_dout,
        AXI_video_strm_V_strb_V_empty_n,
        AXI_video_strm_V_strb_V_read,
        AXI_video_strm_V_user_V_dout,
        AXI_video_strm_V_user_V_empty_n,
        AXI_video_strm_V_user_V_read,
        AXI_video_strm_V_last_V_dout,
        AXI_video_strm_V_last_V_empty_n,
        AXI_video_strm_V_last_V_read,
        AXI_video_strm_V_id_V_dout,
        AXI_video_strm_V_id_V_empty_n,
        AXI_video_strm_V_id_V_read,
        AXI_video_strm_V_dest_V_dout,
        AXI_video_strm_V_dest_V_empty_n,
        AXI_video_strm_V_dest_V_read,
        img_rows_V_dout,
        img_rows_V_empty_n,
        img_rows_V_read,
        img_cols_V_dout,
        img_cols_V_empty_n,
        img_cols_V_read,
        img_data_stream_V_din,
        img_data_stream_V_full_n,
        img_data_stream_V_write,
        img_rows_V_out_din,
        img_rows_V_out_full_n,
        img_rows_V_out_write,
        img_cols_V_out_din,
        img_cols_V_out_full_n,
        img_cols_V_out_write
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp1_stage0 = 8'd16;
parameter    ap_ST_fsm_state7 = 8'd32;
parameter    ap_ST_fsm_state8 = 8'd64;
parameter    ap_ST_fsm_state9 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] AXI_video_strm_V_data_V_dout;
input   AXI_video_strm_V_data_V_empty_n;
output   AXI_video_strm_V_data_V_read;
input  [0:0] AXI_video_strm_V_keep_V_dout;
input   AXI_video_strm_V_keep_V_empty_n;
output   AXI_video_strm_V_keep_V_read;
input  [0:0] AXI_video_strm_V_strb_V_dout;
input   AXI_video_strm_V_strb_V_empty_n;
output   AXI_video_strm_V_strb_V_read;
input  [0:0] AXI_video_strm_V_user_V_dout;
input   AXI_video_strm_V_user_V_empty_n;
output   AXI_video_strm_V_user_V_read;
input  [0:0] AXI_video_strm_V_last_V_dout;
input   AXI_video_strm_V_last_V_empty_n;
output   AXI_video_strm_V_last_V_read;
input  [0:0] AXI_video_strm_V_id_V_dout;
input   AXI_video_strm_V_id_V_empty_n;
output   AXI_video_strm_V_id_V_read;
input  [0:0] AXI_video_strm_V_dest_V_dout;
input   AXI_video_strm_V_dest_V_empty_n;
output   AXI_video_strm_V_dest_V_read;
input  [10:0] img_rows_V_dout;
input   img_rows_V_empty_n;
output   img_rows_V_read;
input  [10:0] img_cols_V_dout;
input   img_cols_V_empty_n;
output   img_cols_V_read;
output  [7:0] img_data_stream_V_din;
input   img_data_stream_V_full_n;
output   img_data_stream_V_write;
output  [10:0] img_rows_V_out_din;
input   img_rows_V_out_full_n;
output   img_rows_V_out_write;
output  [10:0] img_cols_V_out_din;
input   img_cols_V_out_full_n;
output   img_cols_V_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg img_rows_V_read;
reg img_cols_V_read;
reg img_data_stream_V_write;
reg img_rows_V_out_write;
reg img_cols_V_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    AXI_video_strm_V_data_V_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] exitcond_i_reg_383;
wire   [0:0] brmerge_i_fu_333_p2;
wire    ap_CS_fsm_state8;
wire   [0:0] ap_phi_mux_eol_2_i_phi_fu_274_p4;
reg    AXI_video_strm_V_keep_V_blk_n;
reg    AXI_video_strm_V_strb_V_blk_n;
reg    AXI_video_strm_V_user_V_blk_n;
reg    AXI_video_strm_V_last_V_blk_n;
reg    AXI_video_strm_V_id_V_blk_n;
reg    AXI_video_strm_V_dest_V_blk_n;
reg    img_rows_V_blk_n;
reg    img_cols_V_blk_n;
reg    img_data_stream_V_blk_n;
reg    img_rows_V_out_blk_n;
reg    img_cols_V_out_blk_n;
reg   [31:0] t_V_3_reg_176;
reg   [0:0] eol_reg_187;
reg   [7:0] axi_data_V_1_i_reg_198;
reg   [0:0] eol_i_reg_209;
wire  signed [31:0] rows_V_fu_291_p1;
reg  signed [31:0] rows_V_reg_344;
reg    ap_block_state1;
wire  signed [31:0] cols_V_fu_295_p1;
reg  signed [31:0] cols_V_reg_349;
reg   [7:0] tmp_data_V_reg_354;
wire    AXI_video_strm_V_id_V0_status;
reg   [0:0] tmp_last_V_reg_362;
wire   [0:0] exitcond5_i_fu_308_p2;
wire    ap_CS_fsm_state4;
wire   [31:0] i_V_fu_313_p2;
reg   [31:0] i_V_reg_378;
wire   [0:0] exitcond_i_fu_319_p2;
wire    ap_block_state5_pp1_stage0_iter0;
reg    ap_predicate_op74_read_state6;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [31:0] j_V_fu_324_p2;
reg    ap_enable_reg_pp1_iter0;
reg    ap_block_state8;
reg    ap_block_pp1_stage0_subdone;
reg   [0:0] axi_last_V_3_i_reg_247;
reg   [0:0] axi_last_V1_i_reg_145;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state3;
reg   [7:0] axi_data_V_3_i_reg_259;
reg   [7:0] axi_data_V1_i_reg_155;
reg   [31:0] t_V_reg_165;
reg   [0:0] ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4;
reg   [7:0] ap_phi_mux_p_Val2_s_phi_fu_238_p4;
wire   [0:0] ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_221;
wire   [7:0] ap_phi_reg_pp1_iter1_p_Val2_s_reg_234;
wire    ap_CS_fsm_state7;
reg   [0:0] eol_2_i_reg_271;
reg    AXI_video_strm_V_id_V0_update;
reg    ap_block_pp1_stage0_01001;
reg   [0:0] sof_1_i_fu_88;
wire  signed [10:0] rows_V_fu_291_p0;
wire  signed [10:0] cols_V_fu_295_p0;
wire   [0:0] tmp_user_V_fu_299_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_condition_141;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (exitcond_i_fu_319_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd0))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_data_V1_i_reg_155 <= tmp_data_V_reg_354;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        axi_data_V1_i_reg_155 <= axi_data_V_3_i_reg_259;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_383 == 1'd0))) begin
        axi_data_V_1_i_reg_198 <= ap_phi_mux_p_Val2_s_phi_fu_238_p4;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd0))) begin
        axi_data_V_1_i_reg_198 <= axi_data_V1_i_reg_155;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        axi_data_V_3_i_reg_259 <= axi_data_V_1_i_reg_198;
    end else if ((~((1'b0 == AXI_video_strm_V_id_V0_status) & (eol_2_i_reg_271 == 1'd0)) & (1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0))) begin
        axi_data_V_3_i_reg_259 <= AXI_video_strm_V_data_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_last_V1_i_reg_145 <= tmp_last_V_reg_362;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        axi_last_V1_i_reg_145 <= axi_last_V_3_i_reg_247;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        axi_last_V_3_i_reg_247 <= eol_reg_187;
    end else if ((~((1'b0 == AXI_video_strm_V_id_V0_status) & (eol_2_i_reg_271 == 1'd0)) & (1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0))) begin
        axi_last_V_3_i_reg_247 <= AXI_video_strm_V_last_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        eol_2_i_reg_271 <= eol_i_reg_209;
    end else if ((~((1'b0 == AXI_video_strm_V_id_V0_status) & (eol_2_i_reg_271 == 1'd0)) & (1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0))) begin
        eol_2_i_reg_271 <= AXI_video_strm_V_last_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_383 == 1'd0))) begin
        eol_i_reg_209 <= ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd0))) begin
        eol_i_reg_209 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_383 == 1'd0))) begin
        eol_reg_187 <= ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd0))) begin
        eol_reg_187 <= axi_last_V1_i_reg_145;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_383 == 1'd0))) begin
        sof_1_i_fu_88 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sof_1_i_fu_88 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_fu_319_p2 == 1'd0))) begin
        t_V_3_reg_176 <= j_V_fu_324_p2;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd0))) begin
        t_V_3_reg_176 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        t_V_reg_165 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        t_V_reg_165 <= i_V_reg_378;
    end
end

always @ (posedge ap_clk) begin
    if ((~((img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_V_reg_349 <= cols_V_fu_295_p1;
        rows_V_reg_344 <= rows_V_fu_291_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_i_reg_383 <= exitcond_i_fu_319_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_V_reg_378 <= i_V_fu_313_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b1 == AXI_video_strm_V_id_V0_status))) begin
        tmp_data_V_reg_354 <= AXI_video_strm_V_data_V_dout;
        tmp_last_V_reg_362 <= AXI_video_strm_V_last_V_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (brmerge_i_fu_333_p2 == 1'd0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0)))) begin
        AXI_video_strm_V_data_V_blk_n = AXI_video_strm_V_data_V_empty_n;
    end else begin
        AXI_video_strm_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (brmerge_i_fu_333_p2 == 1'd0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0)))) begin
        AXI_video_strm_V_dest_V_blk_n = AXI_video_strm_V_dest_V_empty_n;
    end else begin
        AXI_video_strm_V_dest_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (1'b1 == AXI_video_strm_V_id_V0_status)) | (~((1'b0 == AXI_video_strm_V_id_V0_status) & (eol_2_i_reg_271 == 1'd0)) & (1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op74_read_state6 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
        AXI_video_strm_V_id_V0_update = 1'b1;
    end else begin
        AXI_video_strm_V_id_V0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (brmerge_i_fu_333_p2 == 1'd0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0)))) begin
        AXI_video_strm_V_id_V_blk_n = AXI_video_strm_V_id_V_empty_n;
    end else begin
        AXI_video_strm_V_id_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (brmerge_i_fu_333_p2 == 1'd0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0)))) begin
        AXI_video_strm_V_keep_V_blk_n = AXI_video_strm_V_keep_V_empty_n;
    end else begin
        AXI_video_strm_V_keep_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (brmerge_i_fu_333_p2 == 1'd0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0)))) begin
        AXI_video_strm_V_last_V_blk_n = AXI_video_strm_V_last_V_empty_n;
    end else begin
        AXI_video_strm_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (brmerge_i_fu_333_p2 == 1'd0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0)))) begin
        AXI_video_strm_V_strb_V_blk_n = AXI_video_strm_V_strb_V_empty_n;
    end else begin
        AXI_video_strm_V_strb_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (brmerge_i_fu_333_p2 == 1'd0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0)))) begin
        AXI_video_strm_V_user_V_blk_n = AXI_video_strm_V_user_V_empty_n;
    end else begin
        AXI_video_strm_V_user_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_141)) begin
        if ((brmerge_i_fu_333_p2 == 1'd1)) begin
            ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4 = eol_reg_187;
        end else if ((brmerge_i_fu_333_p2 == 1'd0)) begin
            ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4 = AXI_video_strm_V_last_V_dout;
        end else begin
            ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4 = ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_221;
        end
    end else begin
        ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4 = ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_221;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_141)) begin
        if ((brmerge_i_fu_333_p2 == 1'd1)) begin
            ap_phi_mux_p_Val2_s_phi_fu_238_p4 = axi_data_V_1_i_reg_198;
        end else if ((brmerge_i_fu_333_p2 == 1'd0)) begin
            ap_phi_mux_p_Val2_s_phi_fu_238_p4 = AXI_video_strm_V_data_V_dout;
        end else begin
            ap_phi_mux_p_Val2_s_phi_fu_238_p4 = ap_phi_reg_pp1_iter1_p_Val2_s_reg_234;
        end
    end else begin
        ap_phi_mux_p_Val2_s_phi_fu_238_p4 = ap_phi_reg_pp1_iter1_p_Val2_s_reg_234;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_blk_n = img_cols_V_empty_n;
    end else begin
        img_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_out_blk_n = img_cols_V_out_full_n;
    end else begin
        img_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_out_write = 1'b1;
    end else begin
        img_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_read = 1'b1;
    end else begin
        img_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0))) begin
        img_data_stream_V_blk_n = img_data_stream_V_full_n;
    end else begin
        img_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_383 == 1'd0))) begin
        img_data_stream_V_write = 1'b1;
    end else begin
        img_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_blk_n = img_rows_V_empty_n;
    end else begin
        img_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_out_blk_n = img_rows_V_out_full_n;
    end else begin
        img_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_out_write = 1'b1;
    end else begin
        img_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_read = 1'b1;
    end else begin
        img_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b1 == AXI_video_strm_V_id_V0_status) & (tmp_user_V_fu_299_p1 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((tmp_user_V_fu_299_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b1 == AXI_video_strm_V_id_V0_status))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond5_i_fu_308_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if ((~((1'b0 == AXI_video_strm_V_id_V0_status) & (eol_2_i_reg_271 == 1'd0)) & (1'b1 == ap_CS_fsm_state8) & (eol_2_i_reg_271 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~((1'b0 == AXI_video_strm_V_id_V0_status) & (eol_2_i_reg_271 == 1'd0)) & (1'b1 == ap_CS_fsm_state8) & (ap_phi_mux_eol_2_i_phi_fu_274_p4 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign AXI_video_strm_V_data_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_dest_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_id_V0_status = (AXI_video_strm_V_user_V_empty_n & AXI_video_strm_V_strb_V_empty_n & AXI_video_strm_V_last_V_empty_n & AXI_video_strm_V_keep_V_empty_n & AXI_video_strm_V_id_V_empty_n & AXI_video_strm_V_dest_V_empty_n & AXI_video_strm_V_data_V_empty_n);

assign AXI_video_strm_V_id_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_keep_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_last_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_strb_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_user_V_read = AXI_video_strm_V_id_V0_update;

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((1'b0 == AXI_video_strm_V_id_V0_status) & (ap_predicate_op74_read_state6 == 1'b1)) | ((img_data_stream_V_full_n == 1'b0) & (exitcond_i_reg_383 == 1'd0))));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((1'b0 == AXI_video_strm_V_id_V0_status) & (ap_predicate_op74_read_state6 == 1'b1)) | ((img_data_stream_V_full_n == 1'b0) & (exitcond_i_reg_383 == 1'd0))));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((1'b0 == AXI_video_strm_V_id_V0_status) & (ap_predicate_op74_read_state6 == 1'b1)) | ((img_data_stream_V_full_n == 1'b0) & (exitcond_i_reg_383 == 1'd0))));
end

always @ (*) begin
    ap_block_state1 = ((img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = (((1'b0 == AXI_video_strm_V_id_V0_status) & (ap_predicate_op74_read_state6 == 1'b1)) | ((img_data_stream_V_full_n == 1'b0) & (exitcond_i_reg_383 == 1'd0)));
end

always @ (*) begin
    ap_block_state8 = ((1'b0 == AXI_video_strm_V_id_V0_status) & (eol_2_i_reg_271 == 1'd0));
end

always @ (*) begin
    ap_condition_141 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (exitcond_i_reg_383 == 1'd0) & (1'b0 == ap_block_pp1_stage0));
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_mux_eol_2_i_phi_fu_274_p4 = eol_2_i_reg_271;

assign ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_221 = 'bx;

assign ap_phi_reg_pp1_iter1_p_Val2_s_reg_234 = 'bx;

always @ (*) begin
    ap_predicate_op74_read_state6 = ((brmerge_i_fu_333_p2 == 1'd0) & (exitcond_i_reg_383 == 1'd0));
end

assign ap_ready = internal_ap_ready;

assign brmerge_i_fu_333_p2 = (sof_1_i_fu_88 | eol_i_reg_209);

assign cols_V_fu_295_p0 = img_cols_V_dout;

assign cols_V_fu_295_p1 = cols_V_fu_295_p0;

assign exitcond5_i_fu_308_p2 = ((t_V_reg_165 == rows_V_reg_344) ? 1'b1 : 1'b0);

assign exitcond_i_fu_319_p2 = ((t_V_3_reg_176 == cols_V_reg_349) ? 1'b1 : 1'b0);

assign i_V_fu_313_p2 = (t_V_reg_165 + 32'd1);

assign img_cols_V_out_din = img_cols_V_dout;

assign img_data_stream_V_din = ap_phi_mux_p_Val2_s_phi_fu_238_p4;

assign img_rows_V_out_din = img_rows_V_dout;

assign j_V_fu_324_p2 = (t_V_3_reg_176 + 32'd1);

assign rows_V_fu_291_p0 = img_rows_V_dout;

assign rows_V_fu_291_p1 = rows_V_fu_291_p0;

assign start_out = real_start;

assign tmp_user_V_fu_299_p1 = AXI_video_strm_V_user_V_dout;

endmodule //AXIvideo2Mat
