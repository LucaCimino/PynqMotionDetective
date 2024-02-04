// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _single_block_CTR_encrypt_HH_
#define _single_block_CTR_encrypt_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "single_block_CTR_encrypt_aes_cipher.h"
#include "single_block_CTR_encrypt_aes_key_expansion.h"
#include "single_block_CTR_encrypt_nonce.h"
#include "single_block_CTR_encrypt_plaintext.h"
#include "single_block_CTR_encrypt_w.h"

namespace ap_rtl {

struct single_block_CTR_encrypt : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > i_plaintext_TDATA;
    sc_in< sc_logic > i_plaintext_TVALID;
    sc_out< sc_logic > i_plaintext_TREADY;
    sc_in< sc_lv<1> > i_plaintext_TUSER;
    sc_in< sc_lv<1> > i_plaintext_TLAST;
    sc_out< sc_lv<8> > cipher_TDATA;
    sc_out< sc_logic > cipher_TVALID;
    sc_in< sc_logic > cipher_TREADY;
    sc_out< sc_lv<1> > cipher_TUSER;
    sc_out< sc_lv<1> > cipher_TLAST;


    // Module declarations
    single_block_CTR_encrypt(sc_module_name name);
    SC_HAS_PROCESS(single_block_CTR_encrypt);

    ~single_block_CTR_encrypt();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    single_block_CTR_encrypt_nonce* nonce_U;
    single_block_CTR_encrypt_plaintext* plaintext_U;
    single_block_CTR_encrypt_plaintext* cipher_nonce_U;
    single_block_CTR_encrypt_plaintext* out_U;
    single_block_CTR_encrypt_w* w_U;
    single_block_CTR_encrypt_aes_cipher* grp_single_block_CTR_encrypt_aes_cipher_fu_220;
    single_block_CTR_encrypt_aes_key_expansion* grp_single_block_CTR_encrypt_aes_key_expansion_fu_230;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_28;
    sc_signal< sc_lv<4> > nonce_address0;
    sc_signal< sc_logic > nonce_ce0;
    sc_signal< sc_logic > nonce_we0;
    sc_signal< sc_lv<8> > nonce_d0;
    sc_signal< sc_lv<8> > nonce_q0;
    sc_signal< sc_logic > i_plaintext_TDATA_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_61;
    sc_signal< sc_lv<1> > exitcond1_fu_241_p2;
    sc_signal< sc_logic > cipher_TDATA_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_73;
    sc_signal< sc_lv<5> > i_4_fu_247_p2;
    sc_signal< bool > ap_sig_79;
    sc_signal< sc_lv<5> > i_5_fu_269_p2;
    sc_signal< sc_lv<5> > i_5_reg_358;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_89;
    sc_signal< sc_lv<64> > tmp_s_fu_275_p1;
    sc_signal< sc_lv<64> > tmp_s_reg_363;
    sc_signal< sc_lv<1> > exitcond2_fu_263_p2;
    sc_signal< sc_lv<5> > i_6_fu_294_p2;
    sc_signal< sc_lv<5> > i_6_reg_381;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_107;
    sc_signal< sc_lv<1> > exitcond_fu_288_p2;
    sc_signal< sc_lv<1> > tmp_last_V_fu_305_p2;
    sc_signal< sc_lv<1> > tmp_last_V_reg_391;
    sc_signal< sc_lv<1> > tmp_3_fu_315_p3;
    sc_signal< sc_lv<1> > tmp_3_reg_396;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_123;
    sc_signal< sc_lv<4> > nonce_addr_reg_400;
    sc_signal< sc_lv<5> > i_7_fu_334_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_136;
    sc_signal< sc_lv<1> > tmp_6_fu_328_p2;
    sc_signal< sc_lv<4> > plaintext_address0;
    sc_signal< sc_logic > plaintext_ce0;
    sc_signal< sc_logic > plaintext_we0;
    sc_signal< sc_lv<8> > plaintext_q0;
    sc_signal< sc_lv<4> > cipher_nonce_address0;
    sc_signal< sc_logic > cipher_nonce_ce0;
    sc_signal< sc_lv<8> > cipher_nonce_q0;
    sc_signal< sc_lv<4> > out_address0;
    sc_signal< sc_logic > out_ce0;
    sc_signal< sc_logic > out_we0;
    sc_signal< sc_lv<8> > out_d0;
    sc_signal< sc_lv<8> > out_q0;
    sc_signal< sc_lv<8> > w_address0;
    sc_signal< sc_logic > w_ce0;
    sc_signal< sc_lv<8> > w_q0;
    sc_signal< sc_lv<8> > w_address1;
    sc_signal< sc_logic > w_ce1;
    sc_signal< sc_lv<8> > w_q1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_ap_start;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_ap_done;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_ap_idle;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_ap_ready;
    sc_signal< sc_lv<4> > grp_single_block_CTR_encrypt_aes_cipher_fu_220_in_r_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_in_r_ce0;
    sc_signal< sc_lv<4> > grp_single_block_CTR_encrypt_aes_cipher_fu_220_out_r_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_out_r_ce0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_out_r_we0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_aes_cipher_fu_220_out_r_d0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_aes_cipher_fu_220_w_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_w_ce0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_aes_cipher_fu_220_w_address1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_cipher_fu_220_w_ce1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_ap_start;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_ap_done;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_ap_idle;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_ap_ready;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_w_address0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_w_ce0;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_w_we0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_w_d0;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_w_address1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_w_ce1;
    sc_signal< sc_logic > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_w_we1;
    sc_signal< sc_lv<8> > grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_w_d1;
    sc_signal< sc_lv<5> > i_reg_175;
    sc_signal< sc_lv<5> > i_1_reg_186;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_236;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_246;
    sc_signal< sc_lv<5> > i_2_reg_197;
    sc_signal< sc_logic > ap_sig_ioackin_cipher_TREADY;
    sc_signal< sc_lv<5> > i_3_reg_208;
    sc_signal< sc_logic > ap_reg_grp_single_block_CTR_encrypt_aes_cipher_fu_220_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_268;
    sc_signal< sc_logic > ap_reg_grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_287;
    sc_signal< sc_lv<64> > tmp_fu_258_p1;
    sc_signal< sc_lv<64> > tmp_2_fu_300_p1;
    sc_signal< sc_lv<64> > tmp_5_fu_323_p1;
    sc_signal< sc_logic > ap_reg_ioackin_cipher_TREADY;
    sc_signal< sc_lv<8> > tmp_7_fu_340_p2;
    sc_signal< sc_lv<32> > i_3_cast_fu_311_p1;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    sc_signal< bool > ap_sig_412;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_st1_fsm_0;
    static const sc_lv<11> ap_ST_st2_fsm_1;
    static const sc_lv<11> ap_ST_st3_fsm_2;
    static const sc_lv<11> ap_ST_st4_fsm_3;
    static const sc_lv<11> ap_ST_st5_fsm_4;
    static const sc_lv<11> ap_ST_st6_fsm_5;
    static const sc_lv<11> ap_ST_st7_fsm_6;
    static const sc_lv<11> ap_ST_st8_fsm_7;
    static const sc_lv<11> ap_ST_st9_fsm_8;
    static const sc_lv<11> ap_ST_st10_fsm_9;
    static const sc_lv<11> ap_ST_st11_fsm_10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<8> ap_const_lv8_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_107();
    void thread_ap_sig_123();
    void thread_ap_sig_136();
    void thread_ap_sig_236();
    void thread_ap_sig_246();
    void thread_ap_sig_268();
    void thread_ap_sig_28();
    void thread_ap_sig_287();
    void thread_ap_sig_412();
    void thread_ap_sig_61();
    void thread_ap_sig_73();
    void thread_ap_sig_79();
    void thread_ap_sig_89();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_ap_sig_ioackin_cipher_TREADY();
    void thread_cipher_TDATA();
    void thread_cipher_TDATA_blk_n();
    void thread_cipher_TLAST();
    void thread_cipher_TUSER();
    void thread_cipher_TVALID();
    void thread_cipher_nonce_address0();
    void thread_cipher_nonce_ce0();
    void thread_exitcond1_fu_241_p2();
    void thread_exitcond2_fu_263_p2();
    void thread_exitcond_fu_288_p2();
    void thread_grp_single_block_CTR_encrypt_aes_cipher_fu_220_ap_start();
    void thread_grp_single_block_CTR_encrypt_aes_key_expansion_fu_230_ap_start();
    void thread_i_3_cast_fu_311_p1();
    void thread_i_4_fu_247_p2();
    void thread_i_5_fu_269_p2();
    void thread_i_6_fu_294_p2();
    void thread_i_7_fu_334_p2();
    void thread_i_plaintext_TDATA_blk_n();
    void thread_i_plaintext_TREADY();
    void thread_nonce_address0();
    void thread_nonce_ce0();
    void thread_nonce_d0();
    void thread_nonce_we0();
    void thread_out_address0();
    void thread_out_ce0();
    void thread_out_d0();
    void thread_out_we0();
    void thread_plaintext_address0();
    void thread_plaintext_ce0();
    void thread_plaintext_we0();
    void thread_tmp_2_fu_300_p1();
    void thread_tmp_3_fu_315_p3();
    void thread_tmp_5_fu_323_p1();
    void thread_tmp_6_fu_328_p2();
    void thread_tmp_7_fu_340_p2();
    void thread_tmp_fu_258_p1();
    void thread_tmp_last_V_fu_305_p2();
    void thread_tmp_s_fu_275_p1();
    void thread_w_address0();
    void thread_w_address1();
    void thread_w_ce0();
    void thread_w_ce1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif