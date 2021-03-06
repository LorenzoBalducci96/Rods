// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _AXIvideo2Mat_HH_
#define _AXIvideo2Mat_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct AXIvideo2Mat : public sc_module {
    // Port declarations 46
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > AXI_video_strm_V_data_V_dout;
    sc_in< sc_logic > AXI_video_strm_V_data_V_empty_n;
    sc_out< sc_logic > AXI_video_strm_V_data_V_read;
    sc_in< sc_lv<1> > AXI_video_strm_V_keep_V_dout;
    sc_in< sc_logic > AXI_video_strm_V_keep_V_empty_n;
    sc_out< sc_logic > AXI_video_strm_V_keep_V_read;
    sc_in< sc_lv<1> > AXI_video_strm_V_strb_V_dout;
    sc_in< sc_logic > AXI_video_strm_V_strb_V_empty_n;
    sc_out< sc_logic > AXI_video_strm_V_strb_V_read;
    sc_in< sc_lv<1> > AXI_video_strm_V_user_V_dout;
    sc_in< sc_logic > AXI_video_strm_V_user_V_empty_n;
    sc_out< sc_logic > AXI_video_strm_V_user_V_read;
    sc_in< sc_lv<1> > AXI_video_strm_V_last_V_dout;
    sc_in< sc_logic > AXI_video_strm_V_last_V_empty_n;
    sc_out< sc_logic > AXI_video_strm_V_last_V_read;
    sc_in< sc_lv<1> > AXI_video_strm_V_id_V_dout;
    sc_in< sc_logic > AXI_video_strm_V_id_V_empty_n;
    sc_out< sc_logic > AXI_video_strm_V_id_V_read;
    sc_in< sc_lv<1> > AXI_video_strm_V_dest_V_dout;
    sc_in< sc_logic > AXI_video_strm_V_dest_V_empty_n;
    sc_out< sc_logic > AXI_video_strm_V_dest_V_read;
    sc_in< sc_lv<11> > img_rows_V_dout;
    sc_in< sc_logic > img_rows_V_empty_n;
    sc_out< sc_logic > img_rows_V_read;
    sc_in< sc_lv<11> > img_cols_V_dout;
    sc_in< sc_logic > img_cols_V_empty_n;
    sc_out< sc_logic > img_cols_V_read;
    sc_out< sc_lv<8> > img_data_stream_V_din;
    sc_in< sc_logic > img_data_stream_V_full_n;
    sc_out< sc_logic > img_data_stream_V_write;
    sc_out< sc_lv<11> > img_rows_V_out_din;
    sc_in< sc_logic > img_rows_V_out_full_n;
    sc_out< sc_logic > img_rows_V_out_write;
    sc_out< sc_lv<11> > img_cols_V_out_din;
    sc_in< sc_logic > img_cols_V_out_full_n;
    sc_out< sc_logic > img_cols_V_out_write;


    // Module declarations
    AXIvideo2Mat(sc_module_name name);
    SC_HAS_PROCESS(AXIvideo2Mat);

    ~AXIvideo2Mat();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > AXI_video_strm_V_data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > exitcond_i_reg_383;
    sc_signal< sc_lv<1> > brmerge_i_fu_333_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > ap_phi_mux_eol_2_i_phi_fu_274_p4;
    sc_signal< sc_logic > AXI_video_strm_V_keep_V_blk_n;
    sc_signal< sc_logic > AXI_video_strm_V_strb_V_blk_n;
    sc_signal< sc_logic > AXI_video_strm_V_user_V_blk_n;
    sc_signal< sc_logic > AXI_video_strm_V_last_V_blk_n;
    sc_signal< sc_logic > AXI_video_strm_V_id_V_blk_n;
    sc_signal< sc_logic > AXI_video_strm_V_dest_V_blk_n;
    sc_signal< sc_logic > img_rows_V_blk_n;
    sc_signal< sc_logic > img_cols_V_blk_n;
    sc_signal< sc_logic > img_data_stream_V_blk_n;
    sc_signal< sc_logic > img_rows_V_out_blk_n;
    sc_signal< sc_logic > img_cols_V_out_blk_n;
    sc_signal< sc_lv<32> > t_V_3_reg_176;
    sc_signal< sc_lv<1> > eol_reg_187;
    sc_signal< sc_lv<8> > axi_data_V_1_i_reg_198;
    sc_signal< sc_lv<1> > eol_i_reg_209;
    sc_signal< sc_lv<32> > rows_V_fu_291_p1;
    sc_signal< sc_lv<32> > rows_V_reg_344;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > cols_V_fu_295_p1;
    sc_signal< sc_lv<32> > cols_V_reg_349;
    sc_signal< sc_lv<8> > tmp_data_V_reg_354;
    sc_signal< sc_logic > AXI_video_strm_V_id_V0_status;
    sc_signal< sc_lv<1> > tmp_last_V_reg_362;
    sc_signal< sc_lv<1> > exitcond5_i_fu_308_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > i_V_fu_313_p2;
    sc_signal< sc_lv<32> > i_V_reg_378;
    sc_signal< sc_lv<1> > exitcond_i_fu_319_p2;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter0;
    sc_signal< bool > ap_predicate_op74_read_state6;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<32> > j_V_fu_324_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< bool > ap_block_state8;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_lv<1> > axi_last_V_3_i_reg_247;
    sc_signal< sc_lv<1> > axi_last_V1_i_reg_145;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > axi_data_V_3_i_reg_259;
    sc_signal< sc_lv<8> > axi_data_V1_i_reg_155;
    sc_signal< sc_lv<32> > t_V_reg_165;
    sc_signal< sc_lv<1> > ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4;
    sc_signal< sc_lv<8> > ap_phi_mux_p_Val2_s_phi_fu_238_p4;
    sc_signal< sc_lv<1> > ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_221;
    sc_signal< sc_lv<8> > ap_phi_reg_pp1_iter1_p_Val2_s_reg_234;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > eol_2_i_reg_271;
    sc_signal< sc_logic > AXI_video_strm_V_id_V0_update;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<1> > sof_1_i_fu_88;
    sc_signal< sc_lv<11> > rows_V_fu_291_p0;
    sc_signal< sc_lv<11> > cols_V_fu_295_p0;
    sc_signal< sc_lv<1> > tmp_user_V_fu_299_p1;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< bool > ap_condition_141;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_pp1_stage0;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<8> ap_ST_fsm_state9;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_AXI_video_strm_V_data_V_blk_n();
    void thread_AXI_video_strm_V_data_V_read();
    void thread_AXI_video_strm_V_dest_V_blk_n();
    void thread_AXI_video_strm_V_dest_V_read();
    void thread_AXI_video_strm_V_id_V0_status();
    void thread_AXI_video_strm_V_id_V0_update();
    void thread_AXI_video_strm_V_id_V_blk_n();
    void thread_AXI_video_strm_V_id_V_read();
    void thread_AXI_video_strm_V_keep_V_blk_n();
    void thread_AXI_video_strm_V_keep_V_read();
    void thread_AXI_video_strm_V_last_V_blk_n();
    void thread_AXI_video_strm_V_last_V_read();
    void thread_AXI_video_strm_V_strb_V_blk_n();
    void thread_AXI_video_strm_V_strb_V_read();
    void thread_AXI_video_strm_V_user_V_blk_n();
    void thread_AXI_video_strm_V_user_V_read();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state5_pp1_stage0_iter0();
    void thread_ap_block_state6_pp1_stage0_iter1();
    void thread_ap_block_state8();
    void thread_ap_condition_141();
    void thread_ap_done();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_axi_last_V_2_i_phi_fu_226_p4();
    void thread_ap_phi_mux_eol_2_i_phi_fu_274_p4();
    void thread_ap_phi_mux_p_Val2_s_phi_fu_238_p4();
    void thread_ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_221();
    void thread_ap_phi_reg_pp1_iter1_p_Val2_s_reg_234();
    void thread_ap_predicate_op74_read_state6();
    void thread_ap_ready();
    void thread_brmerge_i_fu_333_p2();
    void thread_cols_V_fu_295_p0();
    void thread_cols_V_fu_295_p1();
    void thread_exitcond5_i_fu_308_p2();
    void thread_exitcond_i_fu_319_p2();
    void thread_i_V_fu_313_p2();
    void thread_img_cols_V_blk_n();
    void thread_img_cols_V_out_blk_n();
    void thread_img_cols_V_out_din();
    void thread_img_cols_V_out_write();
    void thread_img_cols_V_read();
    void thread_img_data_stream_V_blk_n();
    void thread_img_data_stream_V_din();
    void thread_img_data_stream_V_write();
    void thread_img_rows_V_blk_n();
    void thread_img_rows_V_out_blk_n();
    void thread_img_rows_V_out_din();
    void thread_img_rows_V_out_write();
    void thread_img_rows_V_read();
    void thread_internal_ap_ready();
    void thread_j_V_fu_324_p2();
    void thread_real_start();
    void thread_rows_V_fu_291_p0();
    void thread_rows_V_fu_291_p1();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_user_V_fu_299_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
