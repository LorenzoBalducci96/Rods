// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _otsu_HH_
#define _otsu_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "otsu_udiv_32ns_32bkb.h"
#include "otsu_values.h"
#include "otsu_scores.h"

namespace ap_rtl {

struct otsu : public sc_module {
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
    sc_out< sc_lv<8> > OUTPUT_STREAM_TDATA;
    sc_out< sc_logic > OUTPUT_STREAM_TVALID;
    sc_in< sc_logic > OUTPUT_STREAM_TREADY;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TKEEP;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TSTRB;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TUSER;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TLAST;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TID;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TDEST;
    sc_out< sc_lv<8> > best_threshold;
    sc_out< sc_logic > best_threshold_ap_vld;
    sc_out< sc_lv<1> > updateThreshold_V;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    otsu(sc_module_name name);
    SC_HAS_PROCESS(otsu);

    ~otsu();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    otsu_values* values_U;
    otsu_scores* scores_U;
    otsu_udiv_32ns_32bkb<1,36,32,32,16>* otsu_udiv_32ns_32bkb_U1;
    otsu_udiv_32ns_32bkb<1,36,32,32,16>* otsu_udiv_32ns_32bkb_U2;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<58> > ap_CS_fsm;
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
    sc_signal< sc_lv<32> > width_count;
    sc_signal< sc_lv<32> > height_count;
    sc_signal< sc_lv<8> > values_address0;
    sc_signal< sc_logic > values_ce0;
    sc_signal< sc_logic > values_we0;
    sc_signal< sc_lv<32> > values_d0;
    sc_signal< sc_lv<32> > values_q0;
    sc_signal< sc_lv<8> > scores_address0;
    sc_signal< sc_logic > scores_ce0;
    sc_signal< sc_logic > scores_we0;
    sc_signal< sc_lv<14> > scores_d0;
    sc_signal< sc_lv<14> > scores_q0;
    sc_signal< sc_logic > INPUT_STREAM_TDATA_blk_n;
    sc_signal< sc_logic > OUTPUT_STREAM_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state56;
    sc_signal< sc_lv<1> > tmp_13_fu_784_p2;
    sc_signal< sc_lv<1> > or_cond_reg_948;
    sc_signal< sc_logic > ap_CS_fsm_state58;
    sc_signal< sc_lv<32> > reg_446;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<8> > tmp_data_V_reg_883;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > tmp_keep_V_reg_889;
    sc_signal< sc_lv<1> > tmp_strb_V_reg_894;
    sc_signal< sc_lv<1> > tmp_user_V_reg_899;
    sc_signal< sc_lv<1> > tmp_last_V_reg_904;
    sc_signal< sc_lv<1> > tmp_id_V_reg_909;
    sc_signal< sc_lv<1> > tmp_dest_V_reg_914;
    sc_signal< sc_lv<32> > width_count_load_reg_919;
    sc_signal< sc_lv<32> > height_count_load_reg_925;
    sc_signal< sc_lv<1> > tmp_2_fu_492_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_931;
    sc_signal< sc_lv<9> > count_1_fu_504_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > values_addr_1_reg_943;
    sc_signal< sc_lv<1> > tmp_3_fu_498_p2;
    sc_signal< sc_lv<1> > or_cond_fu_537_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<9> > scoreIter_3_fu_549_p2;
    sc_signal< sc_lv<9> > scoreIter_3_reg_955;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_s_fu_543_p2;
    sc_signal< sc_lv<17> > tmp_10_cast_fu_570_p1;
    sc_signal< sc_lv<17> > tmp_10_cast_reg_965;
    sc_signal< sc_lv<32> > tmp_12_fu_578_p2;
    sc_signal< sc_lv<32> > tmp_12_reg_971;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > sum_1_fu_584_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<9> > threshold_1_cast4_ca_fu_589_p1;
    sc_signal< sc_lv<9> > threshold_1_cast4_ca_reg_981;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > tmp_14_fu_599_p1;
    sc_signal< sc_lv<32> > tmp_14_reg_989;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<9> > scoreIter_4_fu_608_p2;
    sc_signal< sc_lv<9> > scoreIter_4_reg_997;
    sc_signal< sc_lv<1> > tmp_15_fu_603_p2;
    sc_signal< sc_lv<16> > tmp_19_fu_619_p1;
    sc_signal< sc_lv<32> > tmp_21_fu_623_p2;
    sc_signal< sc_lv<32> > tmp_21_reg_1012;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > count_pixels_under_t_fu_628_p2;
    sc_signal< sc_lv<32> > count_pixels_under_t_reg_1017;
    sc_signal< sc_lv<32> > sum_under_threshold_1_fu_634_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<16> > scoreIter_2_fu_639_p2;
    sc_signal< sc_lv<16> > scoreIter_2_reg_1027;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<1> > exitcond1_fu_645_p2;
    sc_signal< sc_lv<1> > or_cond1_fu_668_p2;
    sc_signal< sc_lv<1> > or_cond1_reg_1041;
    sc_signal< sc_lv<32> > tmp_29_fu_689_p2;
    sc_signal< sc_lv<32> > tmp_29_reg_1045;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > count_pixels_over_th_fu_695_p2;
    sc_signal< sc_lv<32> > count_pixels_over_th_reg_1050;
    sc_signal< sc_lv<32> > sum_over_threshold_1_fu_701_p2;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<17> > tmp_33_fu_718_p2;
    sc_signal< sc_lv<17> > tmp_33_reg_1060;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_lv<17> > tmp_35_fu_727_p2;
    sc_signal< sc_lv<17> > tmp_35_reg_1065;
    sc_signal< sc_lv<32> > tmp_36_cast_fu_732_p1;
    sc_signal< sc_lv<32> > tmp_36_cast_reg_1070;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_lv<32> > tmp1_fu_735_p2;
    sc_signal< sc_lv<32> > tmp1_reg_1075;
    sc_signal< sc_lv<32> > tmp_40_cast_fu_741_p1;
    sc_signal< sc_lv<32> > tmp_40_cast_reg_1080;
    sc_signal< sc_lv<32> > tmp2_fu_744_p2;
    sc_signal< sc_lv<32> > tmp2_reg_1085;
    sc_signal< sc_lv<32> > tmp_34_fu_750_p2;
    sc_signal< sc_lv<32> > tmp_34_reg_1090;
    sc_signal< sc_logic > ap_CS_fsm_state54;
    sc_signal< sc_lv<32> > tmp_36_fu_754_p2;
    sc_signal< sc_lv<32> > tmp_36_reg_1095;
    sc_signal< sc_lv<8> > tmp_39_fu_778_p2;
    sc_signal< sc_logic > ap_CS_fsm_state55;
    sc_signal< sc_lv<9> > count_2_fu_790_p2;
    sc_signal< sc_lv<9> > count_2_reg_1108;
    sc_signal< bool > ap_predicate_op300_write_state56;
    sc_signal< bool > ap_block_state56_io;
    sc_signal< sc_lv<32> > tmp_22_fu_806_p2;
    sc_signal< sc_lv<32> > record_id_2_record_i_fu_856_p3;
    sc_signal< sc_logic > ap_CS_fsm_state57;
    sc_signal< sc_lv<32> > record_2_record_fu_864_p3;
    sc_signal< sc_lv<9> > count_reg_272;
    sc_signal< sc_lv<32> > sum_reg_283;
    sc_signal< sc_lv<9> > scoreIter_reg_295;
    sc_signal< sc_lv<8> > threshold_1_reg_307;
    sc_signal< sc_lv<9> > scoreIter_1_reg_319;
    sc_signal< sc_lv<1> > exitcond_fu_593_p2;
    sc_signal< sc_lv<32> > sum_under_threshold_reg_330;
    sc_signal< sc_lv<32> > probability_under_th_reg_342;
    sc_signal< sc_lv<16> > scoreIter_2_in_reg_354;
    sc_signal< sc_lv<32> > sum_over_threshold_reg_363;
    sc_signal< sc_lv<32> > probability_over_thr_reg_375;
    sc_signal< sc_lv<14> > ap_phi_mux_computedScore1_phi_fu_391_p4;
    sc_signal< sc_lv<14> > computedScore1_reg_387;
    sc_signal< sc_lv<32> > record_id_reg_399;
    sc_signal< sc_lv<32> > record_reg_411;
    sc_signal< sc_lv<9> > count1_reg_423;
    sc_signal< sc_lv<32> > width_count_new_reg_435;
    sc_signal< sc_lv<1> > tmp_23_fu_811_p2;
    sc_signal< sc_lv<64> > tmp_4_fu_510_p1;
    sc_signal< sc_lv<64> > tmp_6_fu_516_p1;
    sc_signal< sc_lv<64> > tmp_10_fu_555_p1;
    sc_signal< sc_lv<64> > tmp_20_fu_614_p1;
    sc_signal< sc_lv<64> > tmp_27_fu_651_p1;
    sc_signal< sc_lv<64> > tmp_38_fu_773_p1;
    sc_signal< sc_lv<64> > tmp_17_fu_796_p1;
    sc_signal< bool > ap_block_state58;
    sc_signal< sc_lv<32> > p_s_fu_828_p3;
    sc_signal< sc_lv<1> > updateThreshold_V_preg;
    sc_signal< sc_lv<32> > tmp_7_fu_520_p2;
    sc_signal< sc_lv<32> > tmp_1_fu_486_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_527_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_532_p2;
    sc_signal< sc_lv<14> > tmp_5_fu_560_p4;
    sc_signal< sc_lv<32> > tmp_12_fu_578_p0;
    sc_signal< sc_lv<9> > tmp_12_fu_578_p1;
    sc_signal< sc_lv<32> > tmp_21_fu_623_p0;
    sc_signal< sc_lv<9> > tmp_21_fu_623_p1;
    sc_signal< sc_lv<32> > count_pixels_under_t_fu_628_p0;
    sc_signal< sc_lv<1> > tmp_26_fu_656_p2;
    sc_signal< sc_lv<1> > tmp_30_fu_662_p2;
    sc_signal< sc_lv<32> > tmp_29_fu_689_p0;
    sc_signal< sc_lv<16> > tmp_29_fu_689_p1;
    sc_signal< sc_lv<32> > count_pixels_over_th_fu_695_p0;
    sc_signal< sc_lv<16> > grp_fu_674_p2;
    sc_signal< sc_lv<16> > grp_fu_680_p2;
    sc_signal< sc_lv<16> > meanUnderThreshold_fu_706_p1;
    sc_signal< sc_lv<17> > tmp_35_cast_fu_714_p1;
    sc_signal< sc_lv<16> > meanOverThreshold_fu_710_p1;
    sc_signal< sc_lv<17> > tmp_39_cast_fu_723_p1;
    sc_signal< sc_lv<17> > tmp1_fu_735_p0;
    sc_signal< sc_lv<17> > tmp2_fu_744_p0;
    sc_signal< sc_lv<17> > tmp_34_fu_750_p0;
    sc_signal< sc_lv<17> > tmp_36_fu_754_p0;
    sc_signal< sc_lv<32> > tmp_37_fu_758_p2;
    sc_signal< sc_lv<32> > tmp_24_fu_817_p2;
    sc_signal< sc_lv<1> > tmp_25_fu_822_p2;
    sc_signal< sc_lv<32> > record_1_fu_842_p1;
    sc_signal< sc_lv<1> > tmp_18_fu_846_p2;
    sc_signal< sc_lv<32> > record_id_1_fu_852_p1;
    sc_signal< sc_logic > grp_fu_674_ap_start;
    sc_signal< sc_logic > grp_fu_674_ap_done;
    sc_signal< sc_logic > grp_fu_680_ap_start;
    sc_signal< sc_logic > grp_fu_680_ap_done;
    sc_signal< sc_lv<58> > ap_NS_fsm;
    sc_signal< sc_lv<32> > tmp_12_fu_578_p10;
    sc_signal< sc_lv<32> > tmp_29_fu_689_p10;
    sc_signal< bool > ap_condition_1232;
    sc_signal< bool > ap_condition_1237;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<58> ap_ST_fsm_state1;
    static const sc_lv<58> ap_ST_fsm_state2;
    static const sc_lv<58> ap_ST_fsm_state3;
    static const sc_lv<58> ap_ST_fsm_state4;
    static const sc_lv<58> ap_ST_fsm_state5;
    static const sc_lv<58> ap_ST_fsm_state6;
    static const sc_lv<58> ap_ST_fsm_state7;
    static const sc_lv<58> ap_ST_fsm_state8;
    static const sc_lv<58> ap_ST_fsm_state9;
    static const sc_lv<58> ap_ST_fsm_state10;
    static const sc_lv<58> ap_ST_fsm_state11;
    static const sc_lv<58> ap_ST_fsm_state12;
    static const sc_lv<58> ap_ST_fsm_state13;
    static const sc_lv<58> ap_ST_fsm_state14;
    static const sc_lv<58> ap_ST_fsm_state15;
    static const sc_lv<58> ap_ST_fsm_state16;
    static const sc_lv<58> ap_ST_fsm_state17;
    static const sc_lv<58> ap_ST_fsm_state18;
    static const sc_lv<58> ap_ST_fsm_state19;
    static const sc_lv<58> ap_ST_fsm_state20;
    static const sc_lv<58> ap_ST_fsm_state21;
    static const sc_lv<58> ap_ST_fsm_state22;
    static const sc_lv<58> ap_ST_fsm_state23;
    static const sc_lv<58> ap_ST_fsm_state24;
    static const sc_lv<58> ap_ST_fsm_state25;
    static const sc_lv<58> ap_ST_fsm_state26;
    static const sc_lv<58> ap_ST_fsm_state27;
    static const sc_lv<58> ap_ST_fsm_state28;
    static const sc_lv<58> ap_ST_fsm_state29;
    static const sc_lv<58> ap_ST_fsm_state30;
    static const sc_lv<58> ap_ST_fsm_state31;
    static const sc_lv<58> ap_ST_fsm_state32;
    static const sc_lv<58> ap_ST_fsm_state33;
    static const sc_lv<58> ap_ST_fsm_state34;
    static const sc_lv<58> ap_ST_fsm_state35;
    static const sc_lv<58> ap_ST_fsm_state36;
    static const sc_lv<58> ap_ST_fsm_state37;
    static const sc_lv<58> ap_ST_fsm_state38;
    static const sc_lv<58> ap_ST_fsm_state39;
    static const sc_lv<58> ap_ST_fsm_state40;
    static const sc_lv<58> ap_ST_fsm_state41;
    static const sc_lv<58> ap_ST_fsm_state42;
    static const sc_lv<58> ap_ST_fsm_state43;
    static const sc_lv<58> ap_ST_fsm_state44;
    static const sc_lv<58> ap_ST_fsm_state45;
    static const sc_lv<58> ap_ST_fsm_state46;
    static const sc_lv<58> ap_ST_fsm_state47;
    static const sc_lv<58> ap_ST_fsm_state48;
    static const sc_lv<58> ap_ST_fsm_state49;
    static const sc_lv<58> ap_ST_fsm_state50;
    static const sc_lv<58> ap_ST_fsm_state51;
    static const sc_lv<58> ap_ST_fsm_state52;
    static const sc_lv<58> ap_ST_fsm_state53;
    static const sc_lv<58> ap_ST_fsm_state54;
    static const sc_lv<58> ap_ST_fsm_state55;
    static const sc_lv<58> ap_ST_fsm_state56;
    static const sc_lv<58> ap_ST_fsm_state57;
    static const sc_lv<58> ap_ST_fsm_state58;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_39;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_35;
    static const sc_lv<32> ap_const_lv32_36;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<32> ap_const_lv32_1FF;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<16> ap_const_lv16_FF;
    static const sc_lv<32> ap_const_lv32_200;
    // Thread declarations
    void thread_ap_var_for_const0();
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
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state54();
    void thread_ap_CS_fsm_state55();
    void thread_ap_CS_fsm_state56();
    void thread_ap_CS_fsm_state57();
    void thread_ap_CS_fsm_state58();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_block_state56_io();
    void thread_ap_block_state58();
    void thread_ap_condition_1232();
    void thread_ap_condition_1237();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_computedScore1_phi_fu_391_p4();
    void thread_ap_predicate_op300_write_state56();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_best_threshold();
    void thread_best_threshold_ap_vld();
    void thread_count_1_fu_504_p2();
    void thread_count_2_fu_790_p2();
    void thread_count_pixels_over_th_fu_695_p0();
    void thread_count_pixels_over_th_fu_695_p2();
    void thread_count_pixels_under_t_fu_628_p0();
    void thread_count_pixels_under_t_fu_628_p2();
    void thread_exitcond1_fu_645_p2();
    void thread_exitcond_fu_593_p2();
    void thread_grp_fu_674_ap_start();
    void thread_grp_fu_680_ap_start();
    void thread_meanOverThreshold_fu_710_p1();
    void thread_meanUnderThreshold_fu_706_p1();
    void thread_or_cond1_fu_668_p2();
    void thread_or_cond_fu_537_p2();
    void thread_p_s_fu_828_p3();
    void thread_record_1_fu_842_p1();
    void thread_record_2_record_fu_864_p3();
    void thread_record_id_1_fu_852_p1();
    void thread_record_id_2_record_i_fu_856_p3();
    void thread_scoreIter_2_fu_639_p2();
    void thread_scoreIter_3_fu_549_p2();
    void thread_scoreIter_4_fu_608_p2();
    void thread_scores_address0();
    void thread_scores_ce0();
    void thread_scores_d0();
    void thread_scores_we0();
    void thread_sum_1_fu_584_p2();
    void thread_sum_over_threshold_1_fu_701_p2();
    void thread_sum_under_threshold_1_fu_634_p2();
    void thread_threshold_1_cast4_ca_fu_589_p1();
    void thread_tmp1_fu_735_p0();
    void thread_tmp1_fu_735_p2();
    void thread_tmp2_fu_744_p0();
    void thread_tmp2_fu_744_p2();
    void thread_tmp_10_cast_fu_570_p1();
    void thread_tmp_10_fu_555_p1();
    void thread_tmp_12_fu_578_p0();
    void thread_tmp_12_fu_578_p1();
    void thread_tmp_12_fu_578_p10();
    void thread_tmp_12_fu_578_p2();
    void thread_tmp_13_fu_784_p2();
    void thread_tmp_14_fu_599_p1();
    void thread_tmp_15_fu_603_p2();
    void thread_tmp_17_fu_796_p1();
    void thread_tmp_18_fu_846_p2();
    void thread_tmp_19_fu_619_p1();
    void thread_tmp_1_fu_486_p2();
    void thread_tmp_20_fu_614_p1();
    void thread_tmp_21_fu_623_p0();
    void thread_tmp_21_fu_623_p1();
    void thread_tmp_21_fu_623_p2();
    void thread_tmp_22_fu_806_p2();
    void thread_tmp_23_fu_811_p2();
    void thread_tmp_24_fu_817_p2();
    void thread_tmp_25_fu_822_p2();
    void thread_tmp_26_fu_656_p2();
    void thread_tmp_27_fu_651_p1();
    void thread_tmp_29_fu_689_p0();
    void thread_tmp_29_fu_689_p1();
    void thread_tmp_29_fu_689_p10();
    void thread_tmp_29_fu_689_p2();
    void thread_tmp_2_fu_492_p2();
    void thread_tmp_30_fu_662_p2();
    void thread_tmp_33_fu_718_p2();
    void thread_tmp_34_fu_750_p0();
    void thread_tmp_34_fu_750_p2();
    void thread_tmp_35_cast_fu_714_p1();
    void thread_tmp_35_fu_727_p2();
    void thread_tmp_36_cast_fu_732_p1();
    void thread_tmp_36_fu_754_p0();
    void thread_tmp_36_fu_754_p2();
    void thread_tmp_37_fu_758_p2();
    void thread_tmp_38_fu_773_p1();
    void thread_tmp_39_cast_fu_723_p1();
    void thread_tmp_39_fu_778_p2();
    void thread_tmp_3_fu_498_p2();
    void thread_tmp_40_cast_fu_741_p1();
    void thread_tmp_4_fu_510_p1();
    void thread_tmp_5_fu_560_p4();
    void thread_tmp_6_fu_516_p1();
    void thread_tmp_7_fu_520_p2();
    void thread_tmp_8_fu_527_p2();
    void thread_tmp_9_fu_532_p2();
    void thread_tmp_s_fu_543_p2();
    void thread_updateThreshold_V();
    void thread_values_address0();
    void thread_values_ce0();
    void thread_values_d0();
    void thread_values_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
