// ==============================================================
// File generated on Tue Aug 04 18:25:21 +0200 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __image_filter_ama_xdS__HH__
#define __image_filter_ama_xdS__HH__
#include "simcore_ama_7.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int din3_WIDTH,
    int dout_WIDTH>
SC_MODULE(image_filter_ama_xdS) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_in< sc_dt::sc_lv<din3_WIDTH> >   din3;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    simcore_ama_7<ID, 1, din0_WIDTH, din1_WIDTH, din2_WIDTH, din3_WIDTH, dout_WIDTH> simcore_ama_7_U;

    SC_CTOR(image_filter_ama_xdS):  simcore_ama_7_U ("simcore_ama_7_U") {
        simcore_ama_7_U.din0(din0);
        simcore_ama_7_U.din1(din1);
        simcore_ama_7_U.din2(din2);
        simcore_ama_7_U.din3(din3);
        simcore_ama_7_U.dout(dout);

    }

};

#endif //
