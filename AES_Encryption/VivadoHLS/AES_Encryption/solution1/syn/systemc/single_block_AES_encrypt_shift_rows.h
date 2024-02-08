// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _single_block_AES_encrypt_shift_rows_HH_
#define _single_block_AES_encrypt_shift_rows_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct single_block_AES_encrypt_shift_rows : public sc_module {
    // Port declarations 24
    sc_in< sc_lv<8> > state_4_read;
    sc_in< sc_lv<8> > state_5_read;
    sc_in< sc_lv<8> > state_6_read;
    sc_in< sc_lv<8> > state_7_read;
    sc_in< sc_lv<8> > state_8_read;
    sc_in< sc_lv<8> > state_9_read;
    sc_in< sc_lv<8> > state_10_read;
    sc_in< sc_lv<8> > state_11_read;
    sc_in< sc_lv<8> > state_12_read;
    sc_in< sc_lv<8> > state_13_read;
    sc_in< sc_lv<8> > state_14_read;
    sc_in< sc_lv<8> > state_15_read;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_out< sc_lv<8> > ap_return_3;
    sc_out< sc_lv<8> > ap_return_4;
    sc_out< sc_lv<8> > ap_return_5;
    sc_out< sc_lv<8> > ap_return_6;
    sc_out< sc_lv<8> > ap_return_7;
    sc_out< sc_lv<8> > ap_return_8;
    sc_out< sc_lv<8> > ap_return_9;
    sc_out< sc_lv<8> > ap_return_10;
    sc_out< sc_lv<8> > ap_return_11;


    // Module declarations
    single_block_AES_encrypt_shift_rows(sc_module_name name);
    SC_HAS_PROCESS(single_block_AES_encrypt_shift_rows);

    ~single_block_AES_encrypt_shift_rows();

    sc_trace_file* mVcdFile;

    static const bool ap_true;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_11();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
};

}

using namespace ap_rtl;

#endif
