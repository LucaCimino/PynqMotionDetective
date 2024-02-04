// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _single_block_CTR_encrypt_aes_cipher_HH_
#define _single_block_CTR_encrypt_aes_cipher_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "single_block_CTR_encrypt_mix_columns.h"
#include "single_block_CTR_encrypt_add_round_key.h"
#include "single_block_CTR_encrypt_shift_rows.h"
#include "single_block_CTR_encrypt_sub_bytes.h"
#include "single_block_CTR_encrypt_aes_cipher_state.h"

namespace ap_rtl {

struct single_block_CTR_encrypt_aes_cipher : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > in_r_address0;
    sc_out< sc_logic > in_r_ce0;
    sc_in< sc_lv<8> > in_r_q0;
    sc_out< sc_lv<4> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<8> > out_r_d0;
    sc_out< sc_lv<8> > w_address0;
    sc_out< sc_logic > w_ce0;
    sc_in< sc_lv<8> > w_q0;
    sc_out< sc_lv<8> > w_address1;
    sc_out< sc_logic > w_ce1;
    sc_in< sc_lv<8> > w_q1;


    // Module declarations
    single_block_CTR_encrypt_aes_cipher(sc_module_name name);
    SC_HAS_PROCESS(single_block_CTR_encrypt_aes_cipher);

    ~single_block_CTR_encrypt_aes_cipher();

    sc_trace_file* mVcdFile;

    single_block_CTR_encrypt_aes_cipher_state* state_U;
    single_block_CTR_encrypt_mix_columns* grp_single_block_CTR_encrypt_mix_columns_fu_148;
    single_block_CTR_encrypt_add_round_key* grp_single_block_CTR_encrypt_add_round_key_fu_153;
    single_block_CTR_encrypt_shift_rows* grp_single_block_CTR_encrypt_shift_rows_fu_163;
    single_block_CTR_encrypt_sub_bytes* grp_single_block_CTR_encrypt_sub_bytes_fu_168;
    sc_signal< sc_lv<21> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_38;
    sc_signal< sc_lv<3> > i_16_fu_181_p2;
    sc_signal< sc_lv<3> > i_16_reg_345;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_72;
    sc_signal< sc_lv<4> > tmp_cast_fu_187_p1;
    sc_signal< sc_lv<4> > tmp_cast_reg_350;
    sc_signal< sc_lv<1> > exitcond4_fu_175_p2;
    sc_signal< sc_lv<4> > tmp_s_fu_195_p3;
    sc_signal< sc_lv<4> > tmp_s_reg_355;
    sc_signal< sc_lv<3> > j_3_fu_209_p2;
    sc_signal< sc_lv<3> > j_3_reg_363;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_89;
    sc_signal< sc_lv<1> > exitcond3_fu_203_p2;
    sc_signal< sc_lv<4> > tmp_42_fu_241_p2;
    sc_signal< sc_lv<4> > tmp_42_reg_373;
    sc_signal< sc_lv<6> > r_cast3_cast_fu_256_p1;
    sc_signal< sc_lv<6> > r_cast3_cast_reg_381;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_105;
    sc_signal< sc_lv<4> > r_1_fu_261_p2;
    sc_signal< sc_lv<4> > r_1_reg_386;
    sc_signal< sc_lv<3> > i_17_fu_273_p2;
    sc_signal< sc_lv<3> > i_17_reg_394;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_116;
    sc_signal< sc_lv<4> > tmp_69_cast_fu_279_p1;
    sc_signal< sc_lv<4> > tmp_69_cast_reg_399;
    sc_signal< sc_lv<1> > exitcond1_fu_267_p2;
    sc_signal< sc_lv<4> > tmp_44_fu_287_p3;
    sc_signal< sc_lv<4> > tmp_44_reg_404;
    sc_signal< sc_lv<3> > j_4_fu_301_p2;
    sc_signal< sc_lv<3> > j_4_reg_412;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_19;
    sc_signal< bool > ap_sig_132;
    sc_signal< sc_lv<1> > exitcond_fu_295_p2;
    sc_signal< sc_lv<4> > tmp_48_fu_333_p2;
    sc_signal< sc_lv<4> > tmp_48_reg_422;
    sc_signal< sc_lv<4> > state_address0;
    sc_signal< sc_logic > state_ce0;
    sc_signal< sc_logic > state_we0;
    sc_signal< sc_lv<8> > state_d0;
    sc_signal< sc_lv<8> > state_q0;
    sc_signal< sc_logic > state_ce1;
    sc_signal< sc_logic > state_we1;
    sc_signal< sc_lv<8> > state_q1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_mix_columns_fu_148_ap_start;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_mix_columns_fu_148_ap_done;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_mix_columns_fu_148_ap_idle;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_mix_columns_fu_148_ap_ready;
    sc_signal< sc_lv<4> > grp_single_block_CTR_encrypt_mix_columns_fu_148_state_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_mix_columns_fu_148_state_ce0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_mix_columns_fu_148_state_we0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_mix_columns_fu_148_state_d0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_ap_start;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_ap_done;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_ap_idle;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_ap_ready;
    sc_signal< sc_lv<4> > grp_single_block_CTR_encrypt_add_round_key_fu_153_state_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_state_ce0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_state_we0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_add_round_key_fu_153_state_d0;
    sc_signal< sc_lv<4> > grp_single_block_CTR_encrypt_add_round_key_fu_153_state_address1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_state_ce1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_state_we1;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_add_round_key_fu_153_state_d1;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_add_round_key_fu_153_w_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_w_ce0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_add_round_key_fu_153_w_address1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_add_round_key_fu_153_w_ce1;
    sc_signal< sc_lv<6> > grp_single_block_CTR_encrypt_add_round_key_fu_153_r;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_shift_rows_fu_163_ap_start;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_shift_rows_fu_163_ap_done;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_shift_rows_fu_163_ap_idle;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_shift_rows_fu_163_ap_ready;
    sc_signal< sc_lv<4> > grp_single_block_CTR_encrypt_shift_rows_fu_163_state_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_shift_rows_fu_163_state_ce0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_shift_rows_fu_163_state_we0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_shift_rows_fu_163_state_d0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_sub_bytes_fu_168_ap_start;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_sub_bytes_fu_168_ap_done;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_sub_bytes_fu_168_ap_idle;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_sub_bytes_fu_168_ap_ready;
    sc_signal< sc_lv<4> > grp_single_block_CTR_encrypt_sub_bytes_fu_168_state_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_sub_bytes_fu_168_state_ce0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_sub_bytes_fu_168_state_we0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_sub_bytes_fu_168_state_d0;
    sc_signal< sc_lv<3> > i_reg_92;
    sc_signal< sc_lv<3> > j_reg_103;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_227;
    sc_signal< sc_lv<4> > r_reg_114;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_237;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_247;
    sc_signal< sc_lv<3> > i_1_reg_126;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_257;
    sc_signal< sc_lv<3> > j_1_reg_137;
    sc_signal< sc_logic > ap_sig_cseq_ST_st21_fsm_20;
    sc_signal< bool > ap_sig_269;
    sc_signal< sc_logic > ap_reg_grp_single_block_CTR_encrypt_mix_columns_fu_148_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_278;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_285;
    sc_signal< sc_logic > ap_reg_grp_single_block_CTR_encrypt_add_round_key_fu_153_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_297;
    sc_signal< sc_logic > ap_reg_grp_single_block_CTR_encrypt_shift_rows_fu_163_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_311;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_318;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_326;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_333;
    sc_signal< sc_logic > ap_reg_grp_single_block_CTR_encrypt_sub_bytes_fu_168_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_343;
    sc_signal< sc_lv<1> > exitcond2_fu_250_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_356;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_363;
    sc_signal< sc_lv<64> > tmp_41_fu_236_p1;
    sc_signal< sc_lv<64> > tmp_43_fu_246_p1;
    sc_signal< sc_lv<64> > tmp_46_fu_316_p1;
    sc_signal< sc_lv<64> > tmp_49_fu_338_p1;
    sc_signal< sc_lv<2> > tmp_fu_191_p1;
    sc_signal< sc_lv<2> > tmp_51_fu_219_p1;
    sc_signal< sc_lv<4> > tmp_39_fu_223_p3;
    sc_signal< sc_lv<4> > tmp_40_fu_231_p2;
    sc_signal< sc_lv<4> > tmp_63_cast_fu_215_p1;
    sc_signal< sc_lv<2> > tmp_52_fu_283_p1;
    sc_signal< sc_lv<4> > tmp_71_cast_fu_307_p1;
    sc_signal< sc_lv<4> > tmp_45_fu_311_p2;
    sc_signal< sc_lv<2> > tmp_53_fu_321_p1;
    sc_signal< sc_lv<4> > tmp_47_fu_325_p3;
    sc_signal< sc_lv<21> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<21> ap_ST_st1_fsm_0;
    static const sc_lv<21> ap_ST_st2_fsm_1;
    static const sc_lv<21> ap_ST_st3_fsm_2;
    static const sc_lv<21> ap_ST_st4_fsm_3;
    static const sc_lv<21> ap_ST_st5_fsm_4;
    static const sc_lv<21> ap_ST_st6_fsm_5;
    static const sc_lv<21> ap_ST_st7_fsm_6;
    static const sc_lv<21> ap_ST_st8_fsm_7;
    static const sc_lv<21> ap_ST_st9_fsm_8;
    static const sc_lv<21> ap_ST_st10_fsm_9;
    static const sc_lv<21> ap_ST_st11_fsm_10;
    static const sc_lv<21> ap_ST_st12_fsm_11;
    static const sc_lv<21> ap_ST_st13_fsm_12;
    static const sc_lv<21> ap_ST_st14_fsm_13;
    static const sc_lv<21> ap_ST_st15_fsm_14;
    static const sc_lv<21> ap_ST_st16_fsm_15;
    static const sc_lv<21> ap_ST_st17_fsm_16;
    static const sc_lv<21> ap_ST_st18_fsm_17;
    static const sc_lv<21> ap_ST_st19_fsm_18;
    static const sc_lv<21> ap_ST_st20_fsm_19;
    static const sc_lv<21> ap_ST_st21_fsm_20;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_A;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_A;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_105();
    void thread_ap_sig_116();
    void thread_ap_sig_132();
    void thread_ap_sig_227();
    void thread_ap_sig_237();
    void thread_ap_sig_247();
    void thread_ap_sig_257();
    void thread_ap_sig_269();
    void thread_ap_sig_278();
    void thread_ap_sig_285();
    void thread_ap_sig_297();
    void thread_ap_sig_311();
    void thread_ap_sig_318();
    void thread_ap_sig_326();
    void thread_ap_sig_333();
    void thread_ap_sig_343();
    void thread_ap_sig_356();
    void thread_ap_sig_363();
    void thread_ap_sig_38();
    void thread_ap_sig_72();
    void thread_ap_sig_89();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_19();
    void thread_ap_sig_cseq_ST_st21_fsm_20();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_exitcond1_fu_267_p2();
    void thread_exitcond2_fu_250_p2();
    void thread_exitcond3_fu_203_p2();
    void thread_exitcond4_fu_175_p2();
    void thread_exitcond_fu_295_p2();
    void thread_grp_single_block_CTR_encrypt_add_round_key_fu_153_ap_start();
    void thread_grp_single_block_CTR_encrypt_add_round_key_fu_153_r();
    void thread_grp_single_block_CTR_encrypt_mix_columns_fu_148_ap_start();
    void thread_grp_single_block_CTR_encrypt_shift_rows_fu_163_ap_start();
    void thread_grp_single_block_CTR_encrypt_sub_bytes_fu_168_ap_start();
    void thread_i_16_fu_181_p2();
    void thread_i_17_fu_273_p2();
    void thread_in_r_address0();
    void thread_in_r_ce0();
    void thread_j_3_fu_209_p2();
    void thread_j_4_fu_301_p2();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_r_1_fu_261_p2();
    void thread_r_cast3_cast_fu_256_p1();
    void thread_state_address0();
    void thread_state_ce0();
    void thread_state_ce1();
    void thread_state_d0();
    void thread_state_we0();
    void thread_state_we1();
    void thread_tmp_39_fu_223_p3();
    void thread_tmp_40_fu_231_p2();
    void thread_tmp_41_fu_236_p1();
    void thread_tmp_42_fu_241_p2();
    void thread_tmp_43_fu_246_p1();
    void thread_tmp_44_fu_287_p3();
    void thread_tmp_45_fu_311_p2();
    void thread_tmp_46_fu_316_p1();
    void thread_tmp_47_fu_325_p3();
    void thread_tmp_48_fu_333_p2();
    void thread_tmp_49_fu_338_p1();
    void thread_tmp_51_fu_219_p1();
    void thread_tmp_52_fu_283_p1();
    void thread_tmp_53_fu_321_p1();
    void thread_tmp_63_cast_fu_215_p1();
    void thread_tmp_69_cast_fu_279_p1();
    void thread_tmp_71_cast_fu_307_p1();
    void thread_tmp_cast_fu_187_p1();
    void thread_tmp_fu_191_p1();
    void thread_tmp_s_fu_195_p3();
    void thread_w_address0();
    void thread_w_address1();
    void thread_w_ce0();
    void thread_w_ce1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif