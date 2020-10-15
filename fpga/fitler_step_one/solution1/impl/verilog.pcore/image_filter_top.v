// ==============================================================
// File generated on Tue Aug 04 18:25:23 +0200 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module image_filter_top (
INPUT_STREAM_TVALID,
INPUT_STREAM_TREADY,
INPUT_STREAM_TDATA,
INPUT_STREAM_TKEEP,
INPUT_STREAM_TSTRB,
INPUT_STREAM_TUSER,
INPUT_STREAM_TLAST,
INPUT_STREAM_TID,
INPUT_STREAM_TDEST,
OUTPUT_STREAM_TVALID,
OUTPUT_STREAM_TREADY,
OUTPUT_STREAM_TDATA,
OUTPUT_STREAM_TKEEP,
OUTPUT_STREAM_TSTRB,
OUTPUT_STREAM_TUSER,
OUTPUT_STREAM_TLAST,
OUTPUT_STREAM_TID,
OUTPUT_STREAM_TDEST,
aresetn,
aclk,
ap_start,
ap_ready,
ap_done,
ap_idle
);

parameter RESET_ACTIVE_LOW = 1;

input INPUT_STREAM_TVALID ;
output INPUT_STREAM_TREADY ;
input [8 - 1:0] INPUT_STREAM_TDATA ;
input [1 - 1:0] INPUT_STREAM_TKEEP ;
input [1 - 1:0] INPUT_STREAM_TSTRB ;
input [1 - 1:0] INPUT_STREAM_TUSER ;
input [1 - 1:0] INPUT_STREAM_TLAST ;
input [1 - 1:0] INPUT_STREAM_TID ;
input [1 - 1:0] INPUT_STREAM_TDEST ;


output OUTPUT_STREAM_TVALID ;
input OUTPUT_STREAM_TREADY ;
output [8 - 1:0] OUTPUT_STREAM_TDATA ;
output [1 - 1:0] OUTPUT_STREAM_TKEEP ;
output [1 - 1:0] OUTPUT_STREAM_TSTRB ;
output [1 - 1:0] OUTPUT_STREAM_TUSER ;
output [1 - 1:0] OUTPUT_STREAM_TLAST ;
output [1 - 1:0] OUTPUT_STREAM_TID ;
output [1 - 1:0] OUTPUT_STREAM_TDEST ;

input aresetn ;

input aclk ;

input ap_start ;
output ap_ready ;
output ap_done ;
output ap_idle ;


wire INPUT_STREAM_TVALID;
wire INPUT_STREAM_TREADY;
wire [8 - 1:0] INPUT_STREAM_TDATA;
wire [1 - 1:0] INPUT_STREAM_TKEEP;
wire [1 - 1:0] INPUT_STREAM_TSTRB;
wire [1 - 1:0] INPUT_STREAM_TUSER;
wire [1 - 1:0] INPUT_STREAM_TLAST;
wire [1 - 1:0] INPUT_STREAM_TID;
wire [1 - 1:0] INPUT_STREAM_TDEST;


wire OUTPUT_STREAM_TVALID;
wire OUTPUT_STREAM_TREADY;
wire [8 - 1:0] OUTPUT_STREAM_TDATA;
wire [1 - 1:0] OUTPUT_STREAM_TKEEP;
wire [1 - 1:0] OUTPUT_STREAM_TSTRB;
wire [1 - 1:0] OUTPUT_STREAM_TUSER;
wire [1 - 1:0] OUTPUT_STREAM_TLAST;
wire [1 - 1:0] OUTPUT_STREAM_TID;
wire [1 - 1:0] OUTPUT_STREAM_TDEST;

wire aresetn;


wire [8 - 1:0] sig_image_filter_input_V_data_V_dout;
wire sig_image_filter_input_V_data_V_empty_n;
wire sig_image_filter_input_V_data_V_read;
wire [1 - 1:0] sig_image_filter_input_V_keep_V_dout;
wire sig_image_filter_input_V_keep_V_empty_n;
wire sig_image_filter_input_V_keep_V_read;
wire [1 - 1:0] sig_image_filter_input_V_strb_V_dout;
wire sig_image_filter_input_V_strb_V_empty_n;
wire sig_image_filter_input_V_strb_V_read;
wire [1 - 1:0] sig_image_filter_input_V_user_V_dout;
wire sig_image_filter_input_V_user_V_empty_n;
wire sig_image_filter_input_V_user_V_read;
wire [1 - 1:0] sig_image_filter_input_V_last_V_dout;
wire sig_image_filter_input_V_last_V_empty_n;
wire sig_image_filter_input_V_last_V_read;
wire [1 - 1:0] sig_image_filter_input_V_id_V_dout;
wire sig_image_filter_input_V_id_V_empty_n;
wire sig_image_filter_input_V_id_V_read;
wire [1 - 1:0] sig_image_filter_input_V_dest_V_dout;
wire sig_image_filter_input_V_dest_V_empty_n;
wire sig_image_filter_input_V_dest_V_read;

wire [8 - 1:0] sig_image_filter_output_V_data_V_din;
wire sig_image_filter_output_V_data_V_full_n;
wire sig_image_filter_output_V_data_V_write;
wire [1 - 1:0] sig_image_filter_output_V_keep_V_din;
wire sig_image_filter_output_V_keep_V_full_n;
wire sig_image_filter_output_V_keep_V_write;
wire [1 - 1:0] sig_image_filter_output_V_strb_V_din;
wire sig_image_filter_output_V_strb_V_full_n;
wire sig_image_filter_output_V_strb_V_write;
wire [1 - 1:0] sig_image_filter_output_V_user_V_din;
wire sig_image_filter_output_V_user_V_full_n;
wire sig_image_filter_output_V_user_V_write;
wire [1 - 1:0] sig_image_filter_output_V_last_V_din;
wire sig_image_filter_output_V_last_V_full_n;
wire sig_image_filter_output_V_last_V_write;
wire [1 - 1:0] sig_image_filter_output_V_id_V_din;
wire sig_image_filter_output_V_id_V_full_n;
wire sig_image_filter_output_V_id_V_write;
wire [1 - 1:0] sig_image_filter_output_V_dest_V_din;
wire sig_image_filter_output_V_dest_V_full_n;
wire sig_image_filter_output_V_dest_V_write;

wire sig_image_filter_ap_rst;



image_filter image_filter_U(
    .input_V_data_V_dout(sig_image_filter_input_V_data_V_dout),
    .input_V_data_V_empty_n(sig_image_filter_input_V_data_V_empty_n),
    .input_V_data_V_read(sig_image_filter_input_V_data_V_read),
    .input_V_keep_V_dout(sig_image_filter_input_V_keep_V_dout),
    .input_V_keep_V_empty_n(sig_image_filter_input_V_keep_V_empty_n),
    .input_V_keep_V_read(sig_image_filter_input_V_keep_V_read),
    .input_V_strb_V_dout(sig_image_filter_input_V_strb_V_dout),
    .input_V_strb_V_empty_n(sig_image_filter_input_V_strb_V_empty_n),
    .input_V_strb_V_read(sig_image_filter_input_V_strb_V_read),
    .input_V_user_V_dout(sig_image_filter_input_V_user_V_dout),
    .input_V_user_V_empty_n(sig_image_filter_input_V_user_V_empty_n),
    .input_V_user_V_read(sig_image_filter_input_V_user_V_read),
    .input_V_last_V_dout(sig_image_filter_input_V_last_V_dout),
    .input_V_last_V_empty_n(sig_image_filter_input_V_last_V_empty_n),
    .input_V_last_V_read(sig_image_filter_input_V_last_V_read),
    .input_V_id_V_dout(sig_image_filter_input_V_id_V_dout),
    .input_V_id_V_empty_n(sig_image_filter_input_V_id_V_empty_n),
    .input_V_id_V_read(sig_image_filter_input_V_id_V_read),
    .input_V_dest_V_dout(sig_image_filter_input_V_dest_V_dout),
    .input_V_dest_V_empty_n(sig_image_filter_input_V_dest_V_empty_n),
    .input_V_dest_V_read(sig_image_filter_input_V_dest_V_read),
    .output_V_data_V_din(sig_image_filter_output_V_data_V_din),
    .output_V_data_V_full_n(sig_image_filter_output_V_data_V_full_n),
    .output_V_data_V_write(sig_image_filter_output_V_data_V_write),
    .output_V_keep_V_din(sig_image_filter_output_V_keep_V_din),
    .output_V_keep_V_full_n(sig_image_filter_output_V_keep_V_full_n),
    .output_V_keep_V_write(sig_image_filter_output_V_keep_V_write),
    .output_V_strb_V_din(sig_image_filter_output_V_strb_V_din),
    .output_V_strb_V_full_n(sig_image_filter_output_V_strb_V_full_n),
    .output_V_strb_V_write(sig_image_filter_output_V_strb_V_write),
    .output_V_user_V_din(sig_image_filter_output_V_user_V_din),
    .output_V_user_V_full_n(sig_image_filter_output_V_user_V_full_n),
    .output_V_user_V_write(sig_image_filter_output_V_user_V_write),
    .output_V_last_V_din(sig_image_filter_output_V_last_V_din),
    .output_V_last_V_full_n(sig_image_filter_output_V_last_V_full_n),
    .output_V_last_V_write(sig_image_filter_output_V_last_V_write),
    .output_V_id_V_din(sig_image_filter_output_V_id_V_din),
    .output_V_id_V_full_n(sig_image_filter_output_V_id_V_full_n),
    .output_V_id_V_write(sig_image_filter_output_V_id_V_write),
    .output_V_dest_V_din(sig_image_filter_output_V_dest_V_din),
    .output_V_dest_V_full_n(sig_image_filter_output_V_dest_V_full_n),
    .output_V_dest_V_write(sig_image_filter_output_V_dest_V_write),
    .ap_rst(sig_image_filter_ap_rst),
    .ap_clk(aclk),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

image_filter_INPUT_STREAM_if image_filter_INPUT_STREAM_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .input_V_data_V_dout(sig_image_filter_input_V_data_V_dout),
    .input_V_data_V_empty_n(sig_image_filter_input_V_data_V_empty_n),
    .input_V_data_V_read(sig_image_filter_input_V_data_V_read),
    .input_V_keep_V_dout(sig_image_filter_input_V_keep_V_dout),
    .input_V_keep_V_empty_n(sig_image_filter_input_V_keep_V_empty_n),
    .input_V_keep_V_read(sig_image_filter_input_V_keep_V_read),
    .input_V_strb_V_dout(sig_image_filter_input_V_strb_V_dout),
    .input_V_strb_V_empty_n(sig_image_filter_input_V_strb_V_empty_n),
    .input_V_strb_V_read(sig_image_filter_input_V_strb_V_read),
    .input_V_user_V_dout(sig_image_filter_input_V_user_V_dout),
    .input_V_user_V_empty_n(sig_image_filter_input_V_user_V_empty_n),
    .input_V_user_V_read(sig_image_filter_input_V_user_V_read),
    .input_V_last_V_dout(sig_image_filter_input_V_last_V_dout),
    .input_V_last_V_empty_n(sig_image_filter_input_V_last_V_empty_n),
    .input_V_last_V_read(sig_image_filter_input_V_last_V_read),
    .input_V_id_V_dout(sig_image_filter_input_V_id_V_dout),
    .input_V_id_V_empty_n(sig_image_filter_input_V_id_V_empty_n),
    .input_V_id_V_read(sig_image_filter_input_V_id_V_read),
    .input_V_dest_V_dout(sig_image_filter_input_V_dest_V_dout),
    .input_V_dest_V_empty_n(sig_image_filter_input_V_dest_V_empty_n),
    .input_V_dest_V_read(sig_image_filter_input_V_dest_V_read),
    .TVALID(INPUT_STREAM_TVALID),
    .TREADY(INPUT_STREAM_TREADY),
    .TDATA(INPUT_STREAM_TDATA),
    .TKEEP(INPUT_STREAM_TKEEP),
    .TSTRB(INPUT_STREAM_TSTRB),
    .TUSER(INPUT_STREAM_TUSER),
    .TLAST(INPUT_STREAM_TLAST),
    .TID(INPUT_STREAM_TID),
    .TDEST(INPUT_STREAM_TDEST));

image_filter_OUTPUT_STREAM_if image_filter_OUTPUT_STREAM_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .output_V_data_V_din(sig_image_filter_output_V_data_V_din),
    .output_V_data_V_full_n(sig_image_filter_output_V_data_V_full_n),
    .output_V_data_V_write(sig_image_filter_output_V_data_V_write),
    .output_V_keep_V_din(sig_image_filter_output_V_keep_V_din),
    .output_V_keep_V_full_n(sig_image_filter_output_V_keep_V_full_n),
    .output_V_keep_V_write(sig_image_filter_output_V_keep_V_write),
    .output_V_strb_V_din(sig_image_filter_output_V_strb_V_din),
    .output_V_strb_V_full_n(sig_image_filter_output_V_strb_V_full_n),
    .output_V_strb_V_write(sig_image_filter_output_V_strb_V_write),
    .output_V_user_V_din(sig_image_filter_output_V_user_V_din),
    .output_V_user_V_full_n(sig_image_filter_output_V_user_V_full_n),
    .output_V_user_V_write(sig_image_filter_output_V_user_V_write),
    .output_V_last_V_din(sig_image_filter_output_V_last_V_din),
    .output_V_last_V_full_n(sig_image_filter_output_V_last_V_full_n),
    .output_V_last_V_write(sig_image_filter_output_V_last_V_write),
    .output_V_id_V_din(sig_image_filter_output_V_id_V_din),
    .output_V_id_V_full_n(sig_image_filter_output_V_id_V_full_n),
    .output_V_id_V_write(sig_image_filter_output_V_id_V_write),
    .output_V_dest_V_din(sig_image_filter_output_V_dest_V_din),
    .output_V_dest_V_full_n(sig_image_filter_output_V_dest_V_full_n),
    .output_V_dest_V_write(sig_image_filter_output_V_dest_V_write),
    .TVALID(OUTPUT_STREAM_TVALID),
    .TREADY(OUTPUT_STREAM_TREADY),
    .TDATA(OUTPUT_STREAM_TDATA),
    .TKEEP(OUTPUT_STREAM_TKEEP),
    .TSTRB(OUTPUT_STREAM_TSTRB),
    .TUSER(OUTPUT_STREAM_TUSER),
    .TLAST(OUTPUT_STREAM_TLAST),
    .TID(OUTPUT_STREAM_TID),
    .TDEST(OUTPUT_STREAM_TDEST));

image_filter_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_image_filter_ap_rst),
    .din(aresetn));

endmodule
