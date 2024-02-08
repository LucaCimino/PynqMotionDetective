// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _single_block_AES_encrypt_gmult_HH_
#define _single_block_AES_encrypt_gmult_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct single_block_AES_encrypt_gmult : public sc_module {
    // Port declarations 3
    sc_in< sc_lv<4> > a;
    sc_in< sc_lv<8> > b;
    sc_out< sc_lv<8> > ap_return;


    // Module declarations
    single_block_AES_encrypt_gmult(sc_module_name name);
    SC_HAS_PROCESS(single_block_AES_encrypt_gmult);

    ~single_block_AES_encrypt_gmult();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > tmp_fu_70_p1;
    sc_signal< sc_lv<2> > tmp_1_fu_74_p1;
    sc_signal< sc_lv<2> > tmp_7_fu_78_p3;
    sc_signal< sc_lv<1> > tmp_2_fu_98_p3;
    sc_signal< sc_lv<3> > a_assign_fu_90_p3;
    sc_signal< sc_lv<1> > tmp_4_fu_120_p3;
    sc_signal< sc_lv<4> > tmp_3_fu_114_p2;
    sc_signal< sc_lv<4> > tmp_24_2_fu_128_p3;
    sc_signal< sc_lv<1> > tmp_5_fu_148_p3;
    sc_signal< sc_lv<5> > a_assign_7_fu_140_p3;
    sc_signal< sc_lv<1> > tmp_6_fu_172_p3;
    sc_signal< sc_lv<6> > a_assign_3_fu_164_p3;
    sc_signal< sc_lv<6> > tmp_24_4_fu_180_p3;
    sc_signal< sc_lv<1> > tmp_8_fu_200_p3;
    sc_signal< sc_lv<7> > a_assign_4_fu_192_p3;
    sc_signal< sc_lv<1> > tmp_9_fu_224_p3;
    sc_signal< sc_lv<8> > a_assign_5_fu_216_p3;
    sc_signal< sc_lv<1> > tmp_10_fu_240_p1;
    sc_signal< sc_lv<8> > a_assign_6_fu_244_p3;
    sc_signal< sc_lv<1> > tmp_11_fu_252_p3;
    sc_signal< sc_lv<8> > a_assign_1_s_fu_260_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_274_p3;
    sc_signal< sc_lv<8> > a_assign_2_6_fu_266_p3;
    sc_signal< sc_lv<3> > tmp_24_1_fu_106_p3;
    sc_signal< sc_lv<3> > tmp_7_cast_fu_86_p1;
    sc_signal< sc_lv<3> > tmp3_fu_290_p2;
    sc_signal< sc_lv<5> > tmp_24_2_cast_fu_136_p1;
    sc_signal< sc_lv<5> > tmp_24_3_fu_156_p3;
    sc_signal< sc_lv<5> > tmp4_fu_300_p2;
    sc_signal< sc_lv<5> > tmp3_cast_fu_296_p1;
    sc_signal< sc_lv<5> > tmp2_fu_306_p2;
    sc_signal< sc_lv<7> > tmp_24_4_cast_fu_188_p1;
    sc_signal< sc_lv<7> > tmp_24_5_fu_208_p3;
    sc_signal< sc_lv<7> > tmp6_fu_316_p2;
    sc_signal< sc_lv<8> > tmp_24_6_fu_232_p3;
    sc_signal< sc_lv<8> > tmp_24_7_fu_282_p3;
    sc_signal< sc_lv<8> > tmp7_fu_326_p2;
    sc_signal< sc_lv<8> > tmp6_cast_fu_322_p1;
    sc_signal< sc_lv<8> > tmp5_fu_332_p2;
    sc_signal< sc_lv<8> > tmp2_cast_fu_312_p1;
    static const bool ap_true;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<8> ap_const_lv8_1B;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_a_assign_1_s_fu_260_p2();
    void thread_a_assign_2_6_fu_266_p3();
    void thread_a_assign_3_fu_164_p3();
    void thread_a_assign_4_fu_192_p3();
    void thread_a_assign_5_fu_216_p3();
    void thread_a_assign_6_fu_244_p3();
    void thread_a_assign_7_fu_140_p3();
    void thread_a_assign_fu_90_p3();
    void thread_ap_return();
    void thread_tmp2_cast_fu_312_p1();
    void thread_tmp2_fu_306_p2();
    void thread_tmp3_cast_fu_296_p1();
    void thread_tmp3_fu_290_p2();
    void thread_tmp4_fu_300_p2();
    void thread_tmp5_fu_332_p2();
    void thread_tmp6_cast_fu_322_p1();
    void thread_tmp6_fu_316_p2();
    void thread_tmp7_fu_326_p2();
    void thread_tmp_10_fu_240_p1();
    void thread_tmp_11_fu_252_p3();
    void thread_tmp_12_fu_274_p3();
    void thread_tmp_1_fu_74_p1();
    void thread_tmp_24_1_fu_106_p3();
    void thread_tmp_24_2_cast_fu_136_p1();
    void thread_tmp_24_2_fu_128_p3();
    void thread_tmp_24_3_fu_156_p3();
    void thread_tmp_24_4_cast_fu_188_p1();
    void thread_tmp_24_4_fu_180_p3();
    void thread_tmp_24_5_fu_208_p3();
    void thread_tmp_24_6_fu_232_p3();
    void thread_tmp_24_7_fu_282_p3();
    void thread_tmp_2_fu_98_p3();
    void thread_tmp_3_fu_114_p2();
    void thread_tmp_4_fu_120_p3();
    void thread_tmp_5_fu_148_p3();
    void thread_tmp_6_fu_172_p3();
    void thread_tmp_7_cast_fu_86_p1();
    void thread_tmp_7_fu_78_p3();
    void thread_tmp_8_fu_200_p3();
    void thread_tmp_9_fu_224_p3();
    void thread_tmp_fu_70_p1();
};

}

using namespace ap_rtl;

#endif
