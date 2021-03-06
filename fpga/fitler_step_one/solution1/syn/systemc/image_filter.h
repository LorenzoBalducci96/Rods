// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _image_filter_HH_
#define _image_filter_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Block_proc.h"
#include "AXIvideo2Mat.h"
#include "GaussianBlur.h"
#include "Mat2AXIvideo.h"
#include "fifo_w11_d2_A.h"
#include "fifo_w8_d2_A.h"
#include "start_for_Gaussiazec.h"
#include "start_for_Mat2AXIAem.h"

namespace ap_rtl {

struct image_filter : public sc_module {
    // Port declarations 48
    sc_in< sc_lv<8> > input_V_data_V_dout;
    sc_in< sc_logic > input_V_data_V_empty_n;
    sc_out< sc_logic > input_V_data_V_read;
    sc_in< sc_lv<1> > input_V_keep_V_dout;
    sc_in< sc_logic > input_V_keep_V_empty_n;
    sc_out< sc_logic > input_V_keep_V_read;
    sc_in< sc_lv<1> > input_V_strb_V_dout;
    sc_in< sc_logic > input_V_strb_V_empty_n;
    sc_out< sc_logic > input_V_strb_V_read;
    sc_in< sc_lv<1> > input_V_user_V_dout;
    sc_in< sc_logic > input_V_user_V_empty_n;
    sc_out< sc_logic > input_V_user_V_read;
    sc_in< sc_lv<1> > input_V_last_V_dout;
    sc_in< sc_logic > input_V_last_V_empty_n;
    sc_out< sc_logic > input_V_last_V_read;
    sc_in< sc_lv<1> > input_V_id_V_dout;
    sc_in< sc_logic > input_V_id_V_empty_n;
    sc_out< sc_logic > input_V_id_V_read;
    sc_in< sc_lv<1> > input_V_dest_V_dout;
    sc_in< sc_logic > input_V_dest_V_empty_n;
    sc_out< sc_logic > input_V_dest_V_read;
    sc_out< sc_lv<8> > output_V_data_V_din;
    sc_in< sc_logic > output_V_data_V_full_n;
    sc_out< sc_logic > output_V_data_V_write;
    sc_out< sc_lv<1> > output_V_keep_V_din;
    sc_in< sc_logic > output_V_keep_V_full_n;
    sc_out< sc_logic > output_V_keep_V_write;
    sc_out< sc_lv<1> > output_V_strb_V_din;
    sc_in< sc_logic > output_V_strb_V_full_n;
    sc_out< sc_logic > output_V_strb_V_write;
    sc_out< sc_lv<1> > output_V_user_V_din;
    sc_in< sc_logic > output_V_user_V_full_n;
    sc_out< sc_logic > output_V_user_V_write;
    sc_out< sc_lv<1> > output_V_last_V_din;
    sc_in< sc_logic > output_V_last_V_full_n;
    sc_out< sc_logic > output_V_last_V_write;
    sc_out< sc_lv<1> > output_V_id_V_din;
    sc_in< sc_logic > output_V_id_V_full_n;
    sc_out< sc_logic > output_V_id_V_write;
    sc_out< sc_lv<1> > output_V_dest_V_din;
    sc_in< sc_logic > output_V_dest_V_full_n;
    sc_out< sc_logic > output_V_dest_V_write;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    image_filter(sc_module_name name);
    SC_HAS_PROCESS(image_filter);

    ~image_filter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Block_proc* Block_proc_U0;
    AXIvideo2Mat* AXIvideo2Mat_U0;
    GaussianBlur* GaussianBlur_U0;
    Mat2AXIvideo* Mat2AXIvideo_U0;
    fifo_w11_d2_A* img_input_rows_V_c_U;
    fifo_w11_d2_A* img_input_cols_V_c_U;
    fifo_w8_d2_A* img_input_data_strea_U;
    fifo_w11_d2_A* img_input_rows_V_c6_U;
    fifo_w11_d2_A* img_input_cols_V_c7_U;
    fifo_w8_d2_A* filtered_data_stream_U;
    start_for_Gaussiazec* start_for_Gaussiazec_U;
    start_for_Mat2AXIAem* start_for_Mat2AXIAem_U;
    sc_signal< sc_logic > Block_proc_U0_ap_start;
    sc_signal< sc_logic > Block_proc_U0_ap_done;
    sc_signal< sc_logic > Block_proc_U0_ap_continue;
    sc_signal< sc_logic > Block_proc_U0_ap_idle;
    sc_signal< sc_logic > Block_proc_U0_ap_ready;
    sc_signal< sc_lv<11> > Block_proc_U0_img_input_rows_V_out_din;
    sc_signal< sc_logic > Block_proc_U0_img_input_rows_V_out_write;
    sc_signal< sc_lv<11> > Block_proc_U0_img_input_cols_V_out_din;
    sc_signal< sc_logic > Block_proc_U0_img_input_cols_V_out_write;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_start;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_done;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_continue;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_idle;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_logic > AXIvideo2Mat_U0_start_out;
    sc_signal< sc_logic > AXIvideo2Mat_U0_start_write;
    sc_signal< sc_logic > AXIvideo2Mat_U0_AXI_video_strm_V_data_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_U0_AXI_video_strm_V_keep_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_U0_AXI_video_strm_V_strb_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_U0_AXI_video_strm_V_user_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_U0_AXI_video_strm_V_last_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_U0_AXI_video_strm_V_id_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_U0_AXI_video_strm_V_dest_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_rows_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_cols_V_read;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_V_write;
    sc_signal< sc_lv<11> > AXIvideo2Mat_U0_img_rows_V_out_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_rows_V_out_write;
    sc_signal< sc_lv<11> > AXIvideo2Mat_U0_img_cols_V_out_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_cols_V_out_write;
    sc_signal< sc_logic > GaussianBlur_U0_ap_start;
    sc_signal< sc_logic > GaussianBlur_U0_ap_done;
    sc_signal< sc_logic > GaussianBlur_U0_ap_continue;
    sc_signal< sc_logic > GaussianBlur_U0_ap_idle;
    sc_signal< sc_logic > GaussianBlur_U0_ap_ready;
    sc_signal< sc_logic > GaussianBlur_U0_start_out;
    sc_signal< sc_logic > GaussianBlur_U0_start_write;
    sc_signal< sc_logic > GaussianBlur_U0_p_src_rows_V_read;
    sc_signal< sc_logic > GaussianBlur_U0_p_src_cols_V_read;
    sc_signal< sc_logic > GaussianBlur_U0_p_src_data_stream_V_read;
    sc_signal< sc_lv<8> > GaussianBlur_U0_p_dst_data_stream_V_din;
    sc_signal< sc_logic > GaussianBlur_U0_p_dst_data_stream_V_write;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_start;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_done;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_continue;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_idle;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_ready;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_V_read;
    sc_signal< sc_lv<8> > Mat2AXIvideo_U0_AXI_video_strm_V_data_V_din;
    sc_signal< sc_logic > Mat2AXIvideo_U0_AXI_video_strm_V_data_V_write;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_din;
    sc_signal< sc_logic > Mat2AXIvideo_U0_AXI_video_strm_V_keep_V_write;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_din;
    sc_signal< sc_logic > Mat2AXIvideo_U0_AXI_video_strm_V_strb_V_write;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_AXI_video_strm_V_user_V_din;
    sc_signal< sc_logic > Mat2AXIvideo_U0_AXI_video_strm_V_user_V_write;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_AXI_video_strm_V_last_V_din;
    sc_signal< sc_logic > Mat2AXIvideo_U0_AXI_video_strm_V_last_V_write;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_AXI_video_strm_V_id_V_din;
    sc_signal< sc_logic > Mat2AXIvideo_U0_AXI_video_strm_V_id_V_write;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_din;
    sc_signal< sc_logic > Mat2AXIvideo_U0_AXI_video_strm_V_dest_V_write;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > img_input_rows_V_c_full_n;
    sc_signal< sc_lv<11> > img_input_rows_V_c_dout;
    sc_signal< sc_logic > img_input_rows_V_c_empty_n;
    sc_signal< sc_logic > img_input_cols_V_c_full_n;
    sc_signal< sc_lv<11> > img_input_cols_V_c_dout;
    sc_signal< sc_logic > img_input_cols_V_c_empty_n;
    sc_signal< sc_logic > img_input_data_strea_full_n;
    sc_signal< sc_lv<8> > img_input_data_strea_dout;
    sc_signal< sc_logic > img_input_data_strea_empty_n;
    sc_signal< sc_logic > img_input_rows_V_c6_full_n;
    sc_signal< sc_lv<11> > img_input_rows_V_c6_dout;
    sc_signal< sc_logic > img_input_rows_V_c6_empty_n;
    sc_signal< sc_logic > img_input_cols_V_c7_full_n;
    sc_signal< sc_lv<11> > img_input_cols_V_c7_dout;
    sc_signal< sc_logic > img_input_cols_V_c7_empty_n;
    sc_signal< sc_logic > filtered_data_stream_full_n;
    sc_signal< sc_lv<8> > filtered_data_stream_dout;
    sc_signal< sc_logic > filtered_data_stream_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > ap_sync_reg_Block_proc_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_Block_proc_U0_ap_ready;
    sc_signal< sc_lv<2> > Block_proc_U0_ap_ready_count;
    sc_signal< sc_logic > ap_sync_reg_AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_lv<2> > AXIvideo2Mat_U0_ap_ready_count;
    sc_signal< sc_logic > Block_proc_U0_start_full_n;
    sc_signal< sc_logic > Block_proc_U0_start_write;
    sc_signal< sc_lv<1> > start_for_GaussianBlur_U0_din;
    sc_signal< sc_logic > start_for_GaussianBlur_U0_full_n;
    sc_signal< sc_lv<1> > start_for_GaussianBlur_U0_dout;
    sc_signal< sc_logic > start_for_GaussianBlur_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_din;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_dout;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_empty_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_full_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_write;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_AXIvideo2Mat_U0_ap_continue();
    void thread_AXIvideo2Mat_U0_ap_start();
    void thread_Block_proc_U0_ap_continue();
    void thread_Block_proc_U0_ap_start();
    void thread_Block_proc_U0_start_full_n();
    void thread_Block_proc_U0_start_write();
    void thread_GaussianBlur_U0_ap_continue();
    void thread_GaussianBlur_U0_ap_start();
    void thread_Mat2AXIvideo_U0_ap_continue();
    void thread_Mat2AXIvideo_U0_ap_start();
    void thread_Mat2AXIvideo_U0_start_full_n();
    void thread_Mat2AXIvideo_U0_start_write();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_AXIvideo2Mat_U0_ap_ready();
    void thread_ap_sync_Block_proc_U0_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_input_V_data_V_read();
    void thread_input_V_dest_V_read();
    void thread_input_V_id_V_read();
    void thread_input_V_keep_V_read();
    void thread_input_V_last_V_read();
    void thread_input_V_strb_V_read();
    void thread_input_V_user_V_read();
    void thread_output_V_data_V_din();
    void thread_output_V_data_V_write();
    void thread_output_V_dest_V_din();
    void thread_output_V_dest_V_write();
    void thread_output_V_id_V_din();
    void thread_output_V_id_V_write();
    void thread_output_V_keep_V_din();
    void thread_output_V_keep_V_write();
    void thread_output_V_last_V_din();
    void thread_output_V_last_V_write();
    void thread_output_V_strb_V_din();
    void thread_output_V_strb_V_write();
    void thread_output_V_user_V_din();
    void thread_output_V_user_V_write();
    void thread_start_for_GaussianBlur_U0_din();
    void thread_start_for_Mat2AXIvideo_U0_din();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
