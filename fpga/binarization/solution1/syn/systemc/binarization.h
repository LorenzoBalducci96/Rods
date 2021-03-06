// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _binarization_HH_
#define _binarization_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct binarization : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > INPUT_STREAM_TDATA;
    sc_in< sc_logic > INPUT_STREAM_TVALID;
    sc_out< sc_logic > INPUT_STREAM_TREADY;
    sc_in< sc_lv<1> > INPUT_STREAM_TKEEP;
    sc_in< sc_lv<1> > INPUT_STREAM_TSTRB;
    sc_in< sc_lv<1> > INPUT_STREAM_TUSER;
    sc_in< sc_lv<1> > INPUT_STREAM_TLAST;
    sc_in< sc_lv<1> > INPUT_STREAM_TID;
    sc_in< sc_lv<1> > INPUT_STREAM_TDEST;
    sc_in< sc_lv<8> > threshold;
    sc_in< sc_lv<1> > update_threshold_V;
    sc_in< sc_lv<1> > inverted_V;
    sc_out< sc_lv<8> > OUTPUT_STREAM_TDATA;
    sc_out< sc_logic > OUTPUT_STREAM_TVALID;
    sc_in< sc_logic > OUTPUT_STREAM_TREADY;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TKEEP;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TSTRB;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TUSER;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TLAST;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TID;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TDEST;


    // Module declarations
    binarization(sc_module_name name);
    SC_HAS_PROCESS(binarization);

    ~binarization();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > INPUT_STREAM_V_data_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_ack_out;
    sc_signal< sc_lv<8> > INPUT_STREAM_V_data_V_0_payload_A;
    sc_signal< sc_lv<8> > INPUT_STREAM_V_data_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_data_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_keep_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_ack_out;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_keep_V_0_payload_A;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_keep_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_keep_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_keep_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_strb_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_ack_out;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_strb_V_0_payload_A;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_strb_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_strb_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_strb_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_user_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_ack_out;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_user_V_0_payload_A;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_user_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_user_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_user_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_last_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_ack_out;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_last_V_0_payload_A;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_last_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_last_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_id_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_ack_out;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_id_V_0_payload_A;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_id_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_id_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_id_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_dest_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_ack_out;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_dest_V_0_payload_A;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_dest_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_dest_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_state_cmp_full;
    sc_signal< sc_lv<8> > OUTPUT_STREAM_V_data_V_1_data_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_vld_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_vld_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_ack_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_ack_out;
    sc_signal< sc_lv<8> > OUTPUT_STREAM_V_data_V_1_payload_A;
    sc_signal< sc_lv<8> > OUTPUT_STREAM_V_data_V_1_payload_B;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_sel_rd;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_sel_wr;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_sel;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_load_A;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_load_B;
    sc_signal< sc_lv<2> > OUTPUT_STREAM_V_data_V_1_state;
    sc_signal< sc_logic > OUTPUT_STREAM_V_data_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_keep_V_1_data_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_vld_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_vld_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_ack_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_ack_out;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_keep_V_1_payload_A;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_keep_V_1_payload_B;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_sel_rd;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_sel_wr;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_sel;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_load_A;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_load_B;
    sc_signal< sc_lv<2> > OUTPUT_STREAM_V_keep_V_1_state;
    sc_signal< sc_logic > OUTPUT_STREAM_V_keep_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_strb_V_1_data_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_vld_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_vld_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_ack_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_ack_out;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_strb_V_1_payload_A;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_strb_V_1_payload_B;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_sel_rd;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_sel_wr;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_sel;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_load_A;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_load_B;
    sc_signal< sc_lv<2> > OUTPUT_STREAM_V_strb_V_1_state;
    sc_signal< sc_logic > OUTPUT_STREAM_V_strb_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_user_V_1_data_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_vld_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_vld_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_ack_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_ack_out;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_user_V_1_payload_A;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_user_V_1_payload_B;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_sel_rd;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_sel_wr;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_sel;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_load_A;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_load_B;
    sc_signal< sc_lv<2> > OUTPUT_STREAM_V_user_V_1_state;
    sc_signal< sc_logic > OUTPUT_STREAM_V_user_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_last_V_1_data_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_vld_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_vld_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_ack_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_ack_out;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_last_V_1_payload_A;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_last_V_1_payload_B;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_sel_rd;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_sel_wr;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_sel;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_load_A;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_load_B;
    sc_signal< sc_lv<2> > OUTPUT_STREAM_V_last_V_1_state;
    sc_signal< sc_logic > OUTPUT_STREAM_V_last_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_id_V_1_data_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_vld_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_vld_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_ack_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_ack_out;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_id_V_1_payload_A;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_id_V_1_payload_B;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_sel_rd;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_sel_wr;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_sel;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_load_A;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_load_B;
    sc_signal< sc_lv<2> > OUTPUT_STREAM_V_id_V_1_state;
    sc_signal< sc_logic > OUTPUT_STREAM_V_id_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_dest_V_1_data_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_vld_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_vld_out;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_ack_in;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_ack_out;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_dest_V_1_payload_A;
    sc_signal< sc_lv<1> > OUTPUT_STREAM_V_dest_V_1_payload_B;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_sel_rd;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_sel_wr;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_sel;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_load_A;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_load_B;
    sc_signal< sc_lv<2> > OUTPUT_STREAM_V_dest_V_1_state;
    sc_signal< sc_logic > OUTPUT_STREAM_V_dest_V_1_state_cmp_full;
    sc_signal< sc_lv<8> > threshold_memorized;
    sc_signal< sc_logic > INPUT_STREAM_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > OUTPUT_STREAM_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > tmp_data_V_1_fu_198_p3;
    sc_signal< sc_lv<1> > update_threshold_V_r_read_fu_80_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_179_p2;
    sc_signal< sc_lv<1> > not_tmp_2_fu_185_p2;
    sc_signal< sc_lv<1> > tmp_data_V_2_fu_191_p3;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_INPUT_STREAM_TDATA_blk_n();
    void thread_INPUT_STREAM_TREADY();
    void thread_INPUT_STREAM_V_data_V_0_ack_in();
    void thread_INPUT_STREAM_V_data_V_0_ack_out();
    void thread_INPUT_STREAM_V_data_V_0_data_out();
    void thread_INPUT_STREAM_V_data_V_0_load_A();
    void thread_INPUT_STREAM_V_data_V_0_load_B();
    void thread_INPUT_STREAM_V_data_V_0_sel();
    void thread_INPUT_STREAM_V_data_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_data_V_0_vld_in();
    void thread_INPUT_STREAM_V_data_V_0_vld_out();
    void thread_INPUT_STREAM_V_dest_V_0_ack_in();
    void thread_INPUT_STREAM_V_dest_V_0_ack_out();
    void thread_INPUT_STREAM_V_dest_V_0_data_out();
    void thread_INPUT_STREAM_V_dest_V_0_load_A();
    void thread_INPUT_STREAM_V_dest_V_0_load_B();
    void thread_INPUT_STREAM_V_dest_V_0_sel();
    void thread_INPUT_STREAM_V_dest_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_dest_V_0_vld_in();
    void thread_INPUT_STREAM_V_dest_V_0_vld_out();
    void thread_INPUT_STREAM_V_id_V_0_ack_in();
    void thread_INPUT_STREAM_V_id_V_0_ack_out();
    void thread_INPUT_STREAM_V_id_V_0_data_out();
    void thread_INPUT_STREAM_V_id_V_0_load_A();
    void thread_INPUT_STREAM_V_id_V_0_load_B();
    void thread_INPUT_STREAM_V_id_V_0_sel();
    void thread_INPUT_STREAM_V_id_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_id_V_0_vld_in();
    void thread_INPUT_STREAM_V_id_V_0_vld_out();
    void thread_INPUT_STREAM_V_keep_V_0_ack_in();
    void thread_INPUT_STREAM_V_keep_V_0_ack_out();
    void thread_INPUT_STREAM_V_keep_V_0_data_out();
    void thread_INPUT_STREAM_V_keep_V_0_load_A();
    void thread_INPUT_STREAM_V_keep_V_0_load_B();
    void thread_INPUT_STREAM_V_keep_V_0_sel();
    void thread_INPUT_STREAM_V_keep_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_keep_V_0_vld_in();
    void thread_INPUT_STREAM_V_keep_V_0_vld_out();
    void thread_INPUT_STREAM_V_last_V_0_ack_in();
    void thread_INPUT_STREAM_V_last_V_0_ack_out();
    void thread_INPUT_STREAM_V_last_V_0_data_out();
    void thread_INPUT_STREAM_V_last_V_0_load_A();
    void thread_INPUT_STREAM_V_last_V_0_load_B();
    void thread_INPUT_STREAM_V_last_V_0_sel();
    void thread_INPUT_STREAM_V_last_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_last_V_0_vld_in();
    void thread_INPUT_STREAM_V_last_V_0_vld_out();
    void thread_INPUT_STREAM_V_strb_V_0_ack_in();
    void thread_INPUT_STREAM_V_strb_V_0_ack_out();
    void thread_INPUT_STREAM_V_strb_V_0_data_out();
    void thread_INPUT_STREAM_V_strb_V_0_load_A();
    void thread_INPUT_STREAM_V_strb_V_0_load_B();
    void thread_INPUT_STREAM_V_strb_V_0_sel();
    void thread_INPUT_STREAM_V_strb_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_strb_V_0_vld_in();
    void thread_INPUT_STREAM_V_strb_V_0_vld_out();
    void thread_INPUT_STREAM_V_user_V_0_ack_in();
    void thread_INPUT_STREAM_V_user_V_0_ack_out();
    void thread_INPUT_STREAM_V_user_V_0_data_out();
    void thread_INPUT_STREAM_V_user_V_0_load_A();
    void thread_INPUT_STREAM_V_user_V_0_load_B();
    void thread_INPUT_STREAM_V_user_V_0_sel();
    void thread_INPUT_STREAM_V_user_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_user_V_0_vld_in();
    void thread_INPUT_STREAM_V_user_V_0_vld_out();
    void thread_OUTPUT_STREAM_TDATA();
    void thread_OUTPUT_STREAM_TDATA_blk_n();
    void thread_OUTPUT_STREAM_TDEST();
    void thread_OUTPUT_STREAM_TID();
    void thread_OUTPUT_STREAM_TKEEP();
    void thread_OUTPUT_STREAM_TLAST();
    void thread_OUTPUT_STREAM_TSTRB();
    void thread_OUTPUT_STREAM_TUSER();
    void thread_OUTPUT_STREAM_TVALID();
    void thread_OUTPUT_STREAM_V_data_V_1_ack_in();
    void thread_OUTPUT_STREAM_V_data_V_1_ack_out();
    void thread_OUTPUT_STREAM_V_data_V_1_data_out();
    void thread_OUTPUT_STREAM_V_data_V_1_load_A();
    void thread_OUTPUT_STREAM_V_data_V_1_load_B();
    void thread_OUTPUT_STREAM_V_data_V_1_sel();
    void thread_OUTPUT_STREAM_V_data_V_1_state_cmp_full();
    void thread_OUTPUT_STREAM_V_data_V_1_vld_in();
    void thread_OUTPUT_STREAM_V_data_V_1_vld_out();
    void thread_OUTPUT_STREAM_V_dest_V_1_ack_in();
    void thread_OUTPUT_STREAM_V_dest_V_1_ack_out();
    void thread_OUTPUT_STREAM_V_dest_V_1_data_out();
    void thread_OUTPUT_STREAM_V_dest_V_1_load_A();
    void thread_OUTPUT_STREAM_V_dest_V_1_load_B();
    void thread_OUTPUT_STREAM_V_dest_V_1_sel();
    void thread_OUTPUT_STREAM_V_dest_V_1_state_cmp_full();
    void thread_OUTPUT_STREAM_V_dest_V_1_vld_in();
    void thread_OUTPUT_STREAM_V_dest_V_1_vld_out();
    void thread_OUTPUT_STREAM_V_id_V_1_ack_in();
    void thread_OUTPUT_STREAM_V_id_V_1_ack_out();
    void thread_OUTPUT_STREAM_V_id_V_1_data_out();
    void thread_OUTPUT_STREAM_V_id_V_1_load_A();
    void thread_OUTPUT_STREAM_V_id_V_1_load_B();
    void thread_OUTPUT_STREAM_V_id_V_1_sel();
    void thread_OUTPUT_STREAM_V_id_V_1_state_cmp_full();
    void thread_OUTPUT_STREAM_V_id_V_1_vld_in();
    void thread_OUTPUT_STREAM_V_id_V_1_vld_out();
    void thread_OUTPUT_STREAM_V_keep_V_1_ack_in();
    void thread_OUTPUT_STREAM_V_keep_V_1_ack_out();
    void thread_OUTPUT_STREAM_V_keep_V_1_data_out();
    void thread_OUTPUT_STREAM_V_keep_V_1_load_A();
    void thread_OUTPUT_STREAM_V_keep_V_1_load_B();
    void thread_OUTPUT_STREAM_V_keep_V_1_sel();
    void thread_OUTPUT_STREAM_V_keep_V_1_state_cmp_full();
    void thread_OUTPUT_STREAM_V_keep_V_1_vld_in();
    void thread_OUTPUT_STREAM_V_keep_V_1_vld_out();
    void thread_OUTPUT_STREAM_V_last_V_1_ack_in();
    void thread_OUTPUT_STREAM_V_last_V_1_ack_out();
    void thread_OUTPUT_STREAM_V_last_V_1_data_out();
    void thread_OUTPUT_STREAM_V_last_V_1_load_A();
    void thread_OUTPUT_STREAM_V_last_V_1_load_B();
    void thread_OUTPUT_STREAM_V_last_V_1_sel();
    void thread_OUTPUT_STREAM_V_last_V_1_state_cmp_full();
    void thread_OUTPUT_STREAM_V_last_V_1_vld_in();
    void thread_OUTPUT_STREAM_V_last_V_1_vld_out();
    void thread_OUTPUT_STREAM_V_strb_V_1_ack_in();
    void thread_OUTPUT_STREAM_V_strb_V_1_ack_out();
    void thread_OUTPUT_STREAM_V_strb_V_1_data_out();
    void thread_OUTPUT_STREAM_V_strb_V_1_load_A();
    void thread_OUTPUT_STREAM_V_strb_V_1_load_B();
    void thread_OUTPUT_STREAM_V_strb_V_1_sel();
    void thread_OUTPUT_STREAM_V_strb_V_1_state_cmp_full();
    void thread_OUTPUT_STREAM_V_strb_V_1_vld_in();
    void thread_OUTPUT_STREAM_V_strb_V_1_vld_out();
    void thread_OUTPUT_STREAM_V_user_V_1_ack_in();
    void thread_OUTPUT_STREAM_V_user_V_1_ack_out();
    void thread_OUTPUT_STREAM_V_user_V_1_data_out();
    void thread_OUTPUT_STREAM_V_user_V_1_load_A();
    void thread_OUTPUT_STREAM_V_user_V_1_load_B();
    void thread_OUTPUT_STREAM_V_user_V_1_sel();
    void thread_OUTPUT_STREAM_V_user_V_1_state_cmp_full();
    void thread_OUTPUT_STREAM_V_user_V_1_vld_in();
    void thread_OUTPUT_STREAM_V_user_V_1_vld_out();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_not_tmp_2_fu_185_p2();
    void thread_tmp_2_fu_179_p2();
    void thread_tmp_data_V_1_fu_198_p3();
    void thread_tmp_data_V_2_fu_191_p3();
    void thread_update_threshold_V_r_read_fu_80_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
