// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _single_block_AES_encrypt_coef_mult_HH_
#define _single_block_AES_encrypt_coef_mult_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "single_block_AES_encrypt_gmult.h"

namespace ap_rtl {

struct single_block_AES_encrypt_coef_mult : public sc_module {
    // Port declarations 8
    sc_in< sc_lv<8> > b_0_read;
    sc_in< sc_lv<8> > b_1_read;
    sc_in< sc_lv<8> > b_2_read;
    sc_in< sc_lv<8> > b_3_read;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_out< sc_lv<8> > ap_return_3;
    sc_signal< sc_lv<4> > ap_var_for_const0;
    sc_signal< sc_lv<4> > ap_var_for_const1;
    sc_signal< sc_lv<4> > ap_var_for_const2;


    // Module declarations
    single_block_AES_encrypt_coef_mult(sc_module_name name);
    SC_HAS_PROCESS(single_block_AES_encrypt_coef_mult);

    ~single_block_AES_encrypt_coef_mult();

    sc_trace_file* mVcdFile;

    single_block_AES_encrypt_gmult* tmp_single_block_AES_encrypt_gmult_fu_44;
    single_block_AES_encrypt_gmult* tmp_s_single_block_AES_encrypt_gmult_fu_52;
    single_block_AES_encrypt_gmult* tmp_1_single_block_AES_encrypt_gmult_fu_60;
    single_block_AES_encrypt_gmult* tmp_2_single_block_AES_encrypt_gmult_fu_68;
    single_block_AES_encrypt_gmult* tmp_5_single_block_AES_encrypt_gmult_fu_76;
    single_block_AES_encrypt_gmult* tmp_6_single_block_AES_encrypt_gmult_fu_84;
    single_block_AES_encrypt_gmult* tmp_7_single_block_AES_encrypt_gmult_fu_92;
    single_block_AES_encrypt_gmult* tmp_3_single_block_AES_encrypt_gmult_fu_100;
    single_block_AES_encrypt_gmult* tmp_4_single_block_AES_encrypt_gmult_fu_108;
    single_block_AES_encrypt_gmult* tmp_8_single_block_AES_encrypt_gmult_fu_116;
    single_block_AES_encrypt_gmult* tmp_9_single_block_AES_encrypt_gmult_fu_124;
    single_block_AES_encrypt_gmult* tmp_10_single_block_AES_encrypt_gmult_fu_132;
    sc_signal< sc_lv<8> > tmp_single_block_AES_encrypt_gmult_fu_44_ap_return;
    sc_signal< sc_lv<8> > tmp_s_single_block_AES_encrypt_gmult_fu_52_ap_return;
    sc_signal< sc_lv<8> > tmp_1_single_block_AES_encrypt_gmult_fu_60_ap_return;
    sc_signal< sc_lv<8> > tmp_2_single_block_AES_encrypt_gmult_fu_68_ap_return;
    sc_signal< sc_lv<8> > tmp_5_single_block_AES_encrypt_gmult_fu_76_ap_return;
    sc_signal< sc_lv<8> > tmp_6_single_block_AES_encrypt_gmult_fu_84_ap_return;
    sc_signal< sc_lv<8> > tmp_7_single_block_AES_encrypt_gmult_fu_92_ap_return;
    sc_signal< sc_lv<8> > tmp_3_single_block_AES_encrypt_gmult_fu_100_ap_return;
    sc_signal< sc_lv<8> > tmp_4_single_block_AES_encrypt_gmult_fu_108_ap_return;
    sc_signal< sc_lv<8> > tmp_8_single_block_AES_encrypt_gmult_fu_116_ap_return;
    sc_signal< sc_lv<8> > tmp_9_single_block_AES_encrypt_gmult_fu_124_ap_return;
    sc_signal< sc_lv<8> > tmp_10_single_block_AES_encrypt_gmult_fu_132_ap_return;
    sc_signal< sc_lv<8> > tmp2_fu_146_p2;
    sc_signal< sc_lv<8> > tmp1_fu_140_p2;
    sc_signal< sc_lv<8> > tmp4_fu_164_p2;
    sc_signal< sc_lv<8> > tmp3_fu_158_p2;
    sc_signal< sc_lv<8> > tmp6_fu_182_p2;
    sc_signal< sc_lv<8> > tmp5_fu_176_p2;
    sc_signal< sc_lv<8> > tmp8_fu_200_p2;
    sc_signal< sc_lv<8> > tmp7_fu_194_p2;
    sc_signal< sc_lv<8> > d_0_write_assign_fu_152_p2;
    sc_signal< sc_lv<8> > d_1_write_assign_fu_170_p2;
    sc_signal< sc_lv<8> > d_2_write_assign_fu_188_p2;
    sc_signal< sc_lv<8> > d_3_write_assign_fu_206_p2;
    static const sc_lv<4> ap_const_lv4_2;
    static const bool ap_true;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_d_0_write_assign_fu_152_p2();
    void thread_d_1_write_assign_fu_170_p2();
    void thread_d_2_write_assign_fu_188_p2();
    void thread_d_3_write_assign_fu_206_p2();
    void thread_tmp1_fu_140_p2();
    void thread_tmp2_fu_146_p2();
    void thread_tmp3_fu_158_p2();
    void thread_tmp4_fu_164_p2();
    void thread_tmp5_fu_176_p2();
    void thread_tmp6_fu_182_p2();
    void thread_tmp7_fu_194_p2();
    void thread_tmp8_fu_200_p2();
};

}

using namespace ap_rtl;

#endif
