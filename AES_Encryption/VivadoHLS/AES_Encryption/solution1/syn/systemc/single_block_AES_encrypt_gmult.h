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
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<4> > a;
    sc_in< sc_lv<8> > b;
    sc_out< sc_lv<8> > ap_return;


    // Module declarations
    single_block_AES_encrypt_gmult(sc_module_name name);
    SC_HAS_PROCESS(single_block_AES_encrypt_gmult);

    ~single_block_AES_encrypt_gmult();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_19;
    sc_signal< sc_lv<8> > a_cast_fu_84_p1;
    sc_signal< sc_lv<4> > i_4_fu_94_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_41;
    sc_signal< sc_lv<8> > p_0_s_fu_112_p2;
    sc_signal< sc_lv<1> > exitcond_fu_88_p2;
    sc_signal< sc_lv<8> > a_assign_2_fu_138_p3;
    sc_signal< sc_lv<8> > tmp_17_fu_156_p1;
    sc_signal< sc_lv<4> > i_reg_44;
    sc_signal< sc_lv<8> > p_reg_55;
    sc_signal< sc_lv<8> > p_s_reg_66;
    sc_signal< sc_lv<8> > p_0_reg_75;
    sc_signal< sc_lv<1> > tmp_fu_100_p1;
    sc_signal< sc_lv<8> > tmp_10_fu_104_p3;
    sc_signal< sc_lv<8> > tmp_18_fu_118_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_124_p3;
    sc_signal< sc_lv<8> > a_assign_1_fu_132_p2;
    sc_signal< sc_lv<7> > b_assign_fu_146_p4;
    sc_signal< sc_lv<8> > ap_return_preg;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_st1_fsm_0;
    static const sc_lv<2> ap_ST_st2_fsm_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_1B;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_assign_1_fu_132_p2();
    void thread_a_assign_2_fu_138_p3();
    void thread_a_cast_fu_84_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_19();
    void thread_ap_sig_41();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_b_assign_fu_146_p4();
    void thread_exitcond_fu_88_p2();
    void thread_i_4_fu_94_p2();
    void thread_p_0_s_fu_112_p2();
    void thread_tmp_10_fu_104_p3();
    void thread_tmp_17_fu_156_p1();
    void thread_tmp_18_fu_118_p2();
    void thread_tmp_19_fu_124_p3();
    void thread_tmp_fu_100_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
