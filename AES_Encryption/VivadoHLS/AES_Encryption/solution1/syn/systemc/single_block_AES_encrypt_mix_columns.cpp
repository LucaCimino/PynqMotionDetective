// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "single_block_AES_encrypt_mix_columns.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const bool single_block_AES_encrypt_mix_columns::ap_true = true;
const sc_logic single_block_AES_encrypt_mix_columns::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic single_block_AES_encrypt_mix_columns::ap_const_logic_0 = sc_dt::Log_0;

single_block_AES_encrypt_mix_columns::single_block_AES_encrypt_mix_columns(sc_module_name name) : sc_module(name), mVcdFile(0) {
    call_ret_single_block_AES_encrypt_coef_mult_fu_134 = new single_block_AES_encrypt_coef_mult("call_ret_single_block_AES_encrypt_coef_mult_fu_134");
    call_ret_single_block_AES_encrypt_coef_mult_fu_134->b_0_read(state_0_read);
    call_ret_single_block_AES_encrypt_coef_mult_fu_134->b_1_read(state_4_read);
    call_ret_single_block_AES_encrypt_coef_mult_fu_134->b_2_read(state_8_read);
    call_ret_single_block_AES_encrypt_coef_mult_fu_134->b_3_read(state_12_read);
    call_ret_single_block_AES_encrypt_coef_mult_fu_134->ap_return_0(call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0);
    call_ret_single_block_AES_encrypt_coef_mult_fu_134->ap_return_1(call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1);
    call_ret_single_block_AES_encrypt_coef_mult_fu_134->ap_return_2(call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2);
    call_ret_single_block_AES_encrypt_coef_mult_fu_134->ap_return_3(call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3);
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146 = new single_block_AES_encrypt_coef_mult("call_ret1_single_block_AES_encrypt_coef_mult_fu_146");
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146->b_0_read(state_1_read);
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146->b_1_read(state_5_read);
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146->b_2_read(state_9_read);
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146->b_3_read(state_13_read);
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146->ap_return_0(call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0);
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146->ap_return_1(call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1);
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146->ap_return_2(call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2);
    call_ret1_single_block_AES_encrypt_coef_mult_fu_146->ap_return_3(call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3);
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158 = new single_block_AES_encrypt_coef_mult("call_ret2_single_block_AES_encrypt_coef_mult_fu_158");
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158->b_0_read(state_2_read);
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158->b_1_read(state_6_read);
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158->b_2_read(state_10_read);
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158->b_3_read(state_14_read);
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158->ap_return_0(call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0);
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158->ap_return_1(call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1);
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158->ap_return_2(call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2);
    call_ret2_single_block_AES_encrypt_coef_mult_fu_158->ap_return_3(call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3);
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170 = new single_block_AES_encrypt_coef_mult("call_ret3_single_block_AES_encrypt_coef_mult_fu_170");
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170->b_0_read(state_3_read);
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170->b_1_read(state_7_read);
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170->b_2_read(state_11_read);
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170->b_3_read(state_15_read);
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170->ap_return_0(call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0);
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170->ap_return_1(call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1);
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170->ap_return_2(call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2);
    call_ret3_single_block_AES_encrypt_coef_mult_fu_170->ap_return_3(call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3);

    SC_METHOD(thread_ap_return_0);
    sensitive << ( call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0 );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0 );

    SC_METHOD(thread_ap_return_10);
    sensitive << ( call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2 );

    SC_METHOD(thread_ap_return_11);
    sensitive << ( call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2 );

    SC_METHOD(thread_ap_return_12);
    sensitive << ( call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3 );

    SC_METHOD(thread_ap_return_13);
    sensitive << ( call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3 );

    SC_METHOD(thread_ap_return_14);
    sensitive << ( call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3 );

    SC_METHOD(thread_ap_return_15);
    sensitive << ( call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3 );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0 );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0 );

    SC_METHOD(thread_ap_return_4);
    sensitive << ( call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1 );

    SC_METHOD(thread_ap_return_5);
    sensitive << ( call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1 );

    SC_METHOD(thread_ap_return_6);
    sensitive << ( call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1 );

    SC_METHOD(thread_ap_return_7);
    sensitive << ( call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1 );

    SC_METHOD(thread_ap_return_8);
    sensitive << ( call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2 );

    SC_METHOD(thread_ap_return_9);
    sensitive << ( call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2 );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "single_block_AES_encrypt_mix_columns_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, state_0_read, "(port)state_0_read");
    sc_trace(mVcdFile, state_1_read, "(port)state_1_read");
    sc_trace(mVcdFile, state_2_read, "(port)state_2_read");
    sc_trace(mVcdFile, state_3_read, "(port)state_3_read");
    sc_trace(mVcdFile, state_4_read, "(port)state_4_read");
    sc_trace(mVcdFile, state_5_read, "(port)state_5_read");
    sc_trace(mVcdFile, state_6_read, "(port)state_6_read");
    sc_trace(mVcdFile, state_7_read, "(port)state_7_read");
    sc_trace(mVcdFile, state_8_read, "(port)state_8_read");
    sc_trace(mVcdFile, state_9_read, "(port)state_9_read");
    sc_trace(mVcdFile, state_10_read, "(port)state_10_read");
    sc_trace(mVcdFile, state_11_read, "(port)state_11_read");
    sc_trace(mVcdFile, state_12_read, "(port)state_12_read");
    sc_trace(mVcdFile, state_13_read, "(port)state_13_read");
    sc_trace(mVcdFile, state_14_read, "(port)state_14_read");
    sc_trace(mVcdFile, state_15_read, "(port)state_15_read");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
    sc_trace(mVcdFile, ap_return_4, "(port)ap_return_4");
    sc_trace(mVcdFile, ap_return_5, "(port)ap_return_5");
    sc_trace(mVcdFile, ap_return_6, "(port)ap_return_6");
    sc_trace(mVcdFile, ap_return_7, "(port)ap_return_7");
    sc_trace(mVcdFile, ap_return_8, "(port)ap_return_8");
    sc_trace(mVcdFile, ap_return_9, "(port)ap_return_9");
    sc_trace(mVcdFile, ap_return_10, "(port)ap_return_10");
    sc_trace(mVcdFile, ap_return_11, "(port)ap_return_11");
    sc_trace(mVcdFile, ap_return_12, "(port)ap_return_12");
    sc_trace(mVcdFile, ap_return_13, "(port)ap_return_13");
    sc_trace(mVcdFile, ap_return_14, "(port)ap_return_14");
    sc_trace(mVcdFile, ap_return_15, "(port)ap_return_15");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0, "call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0");
    sc_trace(mVcdFile, call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1, "call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1");
    sc_trace(mVcdFile, call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2, "call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2");
    sc_trace(mVcdFile, call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3, "call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3");
    sc_trace(mVcdFile, call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0, "call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0");
    sc_trace(mVcdFile, call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1, "call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1");
    sc_trace(mVcdFile, call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2, "call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2");
    sc_trace(mVcdFile, call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3, "call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3");
    sc_trace(mVcdFile, call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0, "call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0");
    sc_trace(mVcdFile, call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1, "call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1");
    sc_trace(mVcdFile, call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2, "call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2");
    sc_trace(mVcdFile, call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3, "call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3");
    sc_trace(mVcdFile, call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0, "call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0");
    sc_trace(mVcdFile, call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1, "call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1");
    sc_trace(mVcdFile, call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2, "call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2");
    sc_trace(mVcdFile, call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3, "call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3");
#endif

    }
}

single_block_AES_encrypt_mix_columns::~single_block_AES_encrypt_mix_columns() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete call_ret_single_block_AES_encrypt_coef_mult_fu_134;
    delete call_ret1_single_block_AES_encrypt_coef_mult_fu_146;
    delete call_ret2_single_block_AES_encrypt_coef_mult_fu_158;
    delete call_ret3_single_block_AES_encrypt_coef_mult_fu_170;
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_0() {
    ap_return_0 = call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_1() {
    ap_return_1 = call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_10() {
    ap_return_10 = call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_11() {
    ap_return_11 = call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_12() {
    ap_return_12 = call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_13() {
    ap_return_13 = call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_14() {
    ap_return_14 = call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_15() {
    ap_return_15 = call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_2() {
    ap_return_2 = call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_3() {
    ap_return_3 = call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_4() {
    ap_return_4 = call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_5() {
    ap_return_5 = call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_6() {
    ap_return_6 = call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_7() {
    ap_return_7 = call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_8() {
    ap_return_8 = call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2.read();
}

void single_block_AES_encrypt_mix_columns::thread_ap_return_9() {
    ap_return_9 = call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2.read();
}

}

