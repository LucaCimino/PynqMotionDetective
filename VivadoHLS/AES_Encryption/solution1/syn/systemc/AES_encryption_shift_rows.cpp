// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "AES_encryption_shift_rows.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic AES_encryption_shift_rows::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic AES_encryption_shift_rows::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> AES_encryption_shift_rows::ap_ST_st1_fsm_0 = "1";
const sc_lv<6> AES_encryption_shift_rows::ap_ST_st2_fsm_1 = "10";
const sc_lv<6> AES_encryption_shift_rows::ap_ST_st3_fsm_2 = "100";
const sc_lv<6> AES_encryption_shift_rows::ap_ST_st4_fsm_3 = "1000";
const sc_lv<6> AES_encryption_shift_rows::ap_ST_st5_fsm_4 = "10000";
const sc_lv<6> AES_encryption_shift_rows::ap_ST_st6_fsm_5 = "100000";
const sc_lv<32> AES_encryption_shift_rows::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> AES_encryption_shift_rows::ap_const_lv1_1 = "1";
const sc_lv<32> AES_encryption_shift_rows::ap_const_lv32_1 = "1";
const sc_lv<1> AES_encryption_shift_rows::ap_const_lv1_0 = "0";
const sc_lv<32> AES_encryption_shift_rows::ap_const_lv32_2 = "10";
const sc_lv<32> AES_encryption_shift_rows::ap_const_lv32_3 = "11";
const sc_lv<32> AES_encryption_shift_rows::ap_const_lv32_4 = "100";
const sc_lv<3> AES_encryption_shift_rows::ap_const_lv3_1 = "1";
const sc_lv<2> AES_encryption_shift_rows::ap_const_lv2_0 = "00";
const sc_lv<32> AES_encryption_shift_rows::ap_const_lv32_5 = "101";
const sc_lv<3> AES_encryption_shift_rows::ap_const_lv3_4 = "100";
const sc_lv<4> AES_encryption_shift_rows::ap_const_lv4_3 = "11";
const sc_lv<2> AES_encryption_shift_rows::ap_const_lv2_1 = "1";
const sc_lv<2> AES_encryption_shift_rows::ap_const_lv2_3 = "11";

AES_encryption_shift_rows::AES_encryption_shift_rows(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond2_fu_97_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond2_fu_97_p2 );

    SC_METHOD(thread_ap_sig_114);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_23);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_43);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_64);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_78);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_87);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_23 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_43 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_64 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_78 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_87 );

    SC_METHOD(thread_ap_sig_cseq_ST_st6_fsm_5);
    sensitive << ( ap_sig_114 );

    SC_METHOD(thread_exitcond1_fu_135_p2);
    sensitive << ( indvars_iv_cast_reg_199 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( s_cast_fu_131_p1 );

    SC_METHOD(thread_exitcond2_fu_97_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( indvars_iv_reg_59 );

    SC_METHOD(thread_exitcond_fu_152_p2);
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( k_reg_82 );

    SC_METHOD(thread_i_fu_146_p2);
    sensitive << ( indvars_iv_reg_59 );

    SC_METHOD(thread_indvars_iv_cast_fu_93_p1);
    sensitive << ( indvars_iv_reg_59 );

    SC_METHOD(thread_k_1_fu_176_p2);
    sensitive << ( k_reg_82 );

    SC_METHOD(thread_s_1_fu_140_p2);
    sensitive << ( s_reg_71 );

    SC_METHOD(thread_s_cast_fu_131_p1);
    sensitive << ( s_reg_71 );

    SC_METHOD(thread_state_address0);
    sensitive << ( state_addr_reg_217 );
    sensitive << ( state_addr_1_reg_222 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( exitcond_fu_152_p2 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( tmp_7_fu_171_p1 );
    sensitive << ( tmp_5_fu_194_p1 );

    SC_METHOD(thread_state_ce0);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( exitcond_fu_152_p2 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_state_d0);
    sensitive << ( state_q0 );
    sensitive << ( tmp_reg_240 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( exitcond_fu_152_p2 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_state_we0);
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( exitcond_fu_152_p2 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_tmp1_fu_182_p2);
    sensitive << ( tmp_8_reg_248 );

    SC_METHOD(thread_tmp_1_fu_115_p1);
    sensitive << ( tmp_s_fu_107_p3 );

    SC_METHOD(thread_tmp_2_fu_120_p2);
    sensitive << ( tmp_s_fu_107_p3 );

    SC_METHOD(thread_tmp_3_fu_126_p1);
    sensitive << ( tmp_2_fu_120_p2 );

    SC_METHOD(thread_tmp_4_fu_103_p1);
    sensitive << ( indvars_iv_reg_59 );

    SC_METHOD(thread_tmp_5_cast_fu_162_p1);
    sensitive << ( k_reg_82 );

    SC_METHOD(thread_tmp_5_fu_194_p1);
    sensitive << ( tmp_9_fu_187_p3 );

    SC_METHOD(thread_tmp_6_fu_166_p2);
    sensitive << ( tmp_s_reg_212 );
    sensitive << ( tmp_5_cast_fu_162_p1 );

    SC_METHOD(thread_tmp_7_fu_171_p1);
    sensitive << ( tmp_6_fu_166_p2 );

    SC_METHOD(thread_tmp_8_fu_158_p1);
    sensitive << ( k_reg_82 );

    SC_METHOD(thread_tmp_9_fu_187_p3);
    sensitive << ( tmp_4_reg_207 );
    sensitive << ( tmp1_fu_182_p2 );

    SC_METHOD(thread_tmp_s_fu_107_p3);
    sensitive << ( tmp_4_fu_103_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_fu_97_p2 );
    sensitive << ( exitcond1_fu_135_p2 );
    sensitive << ( exitcond_fu_152_p2 );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "AES_encryption_shift_rows_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, state_address0, "(port)state_address0");
    sc_trace(mVcdFile, state_ce0, "(port)state_ce0");
    sc_trace(mVcdFile, state_we0, "(port)state_we0");
    sc_trace(mVcdFile, state_d0, "(port)state_d0");
    sc_trace(mVcdFile, state_q0, "(port)state_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_23, "ap_sig_23");
    sc_trace(mVcdFile, indvars_iv_cast_fu_93_p1, "indvars_iv_cast_fu_93_p1");
    sc_trace(mVcdFile, indvars_iv_cast_reg_199, "indvars_iv_cast_reg_199");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_43, "ap_sig_43");
    sc_trace(mVcdFile, tmp_4_fu_103_p1, "tmp_4_fu_103_p1");
    sc_trace(mVcdFile, tmp_4_reg_207, "tmp_4_reg_207");
    sc_trace(mVcdFile, exitcond2_fu_97_p2, "exitcond2_fu_97_p2");
    sc_trace(mVcdFile, tmp_s_fu_107_p3, "tmp_s_fu_107_p3");
    sc_trace(mVcdFile, tmp_s_reg_212, "tmp_s_reg_212");
    sc_trace(mVcdFile, state_addr_reg_217, "state_addr_reg_217");
    sc_trace(mVcdFile, state_addr_1_reg_222, "state_addr_1_reg_222");
    sc_trace(mVcdFile, s_1_fu_140_p2, "s_1_fu_140_p2");
    sc_trace(mVcdFile, s_1_reg_230, "s_1_reg_230");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_64, "ap_sig_64");
    sc_trace(mVcdFile, i_fu_146_p2, "i_fu_146_p2");
    sc_trace(mVcdFile, exitcond1_fu_135_p2, "exitcond1_fu_135_p2");
    sc_trace(mVcdFile, tmp_reg_240, "tmp_reg_240");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_78, "ap_sig_78");
    sc_trace(mVcdFile, tmp_8_fu_158_p1, "tmp_8_fu_158_p1");
    sc_trace(mVcdFile, tmp_8_reg_248, "tmp_8_reg_248");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_87, "ap_sig_87");
    sc_trace(mVcdFile, exitcond_fu_152_p2, "exitcond_fu_152_p2");
    sc_trace(mVcdFile, k_1_fu_176_p2, "k_1_fu_176_p2");
    sc_trace(mVcdFile, k_1_reg_258, "k_1_reg_258");
    sc_trace(mVcdFile, indvars_iv_reg_59, "indvars_iv_reg_59");
    sc_trace(mVcdFile, s_reg_71, "s_reg_71");
    sc_trace(mVcdFile, k_reg_82, "k_reg_82");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st6_fsm_5, "ap_sig_cseq_ST_st6_fsm_5");
    sc_trace(mVcdFile, ap_sig_114, "ap_sig_114");
    sc_trace(mVcdFile, tmp_1_fu_115_p1, "tmp_1_fu_115_p1");
    sc_trace(mVcdFile, tmp_3_fu_126_p1, "tmp_3_fu_126_p1");
    sc_trace(mVcdFile, tmp_7_fu_171_p1, "tmp_7_fu_171_p1");
    sc_trace(mVcdFile, tmp_5_fu_194_p1, "tmp_5_fu_194_p1");
    sc_trace(mVcdFile, tmp_2_fu_120_p2, "tmp_2_fu_120_p2");
    sc_trace(mVcdFile, s_cast_fu_131_p1, "s_cast_fu_131_p1");
    sc_trace(mVcdFile, tmp_5_cast_fu_162_p1, "tmp_5_cast_fu_162_p1");
    sc_trace(mVcdFile, tmp_6_fu_166_p2, "tmp_6_fu_166_p2");
    sc_trace(mVcdFile, tmp1_fu_182_p2, "tmp1_fu_182_p2");
    sc_trace(mVcdFile, tmp_9_fu_187_p3, "tmp_9_fu_187_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

AES_encryption_shift_rows::~AES_encryption_shift_rows() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void AES_encryption_shift_rows::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        indvars_iv_reg_59 = ap_const_lv3_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_135_p2.read()))) {
        indvars_iv_reg_59 = i_fu_146_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        k_reg_82 = k_1_reg_258.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        k_reg_82 = ap_const_lv3_1;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_97_p2.read(), ap_const_lv1_0))) {
        s_reg_71 = ap_const_lv2_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read()))) {
        s_reg_71 = s_1_reg_230.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        indvars_iv_cast_reg_199 = indvars_iv_cast_fu_93_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read()))) {
        k_1_reg_258 = k_1_fu_176_p2.read();
        tmp_8_reg_248 = tmp_8_fu_158_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        s_1_reg_230 = s_1_fu_140_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && esl_seteq<1,1,1>(exitcond2_fu_97_p2.read(), ap_const_lv1_0))) {
        state_addr_1_reg_222 =  (sc_lv<4>) (tmp_3_fu_126_p1.read());
        state_addr_reg_217 =  (sc_lv<4>) (tmp_1_fu_115_p1.read());
        tmp_4_reg_207 = tmp_4_fu_103_p1.read();
        tmp_s_reg_212 = tmp_s_fu_107_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        tmp_reg_240 = state_q0.read();
    }
}

void AES_encryption_shift_rows::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(exitcond2_fu_97_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond2_fu_97_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_ap_sig_114() {
    ap_sig_114 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void AES_encryption_shift_rows::thread_ap_sig_23() {
    ap_sig_23 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void AES_encryption_shift_rows::thread_ap_sig_43() {
    ap_sig_43 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void AES_encryption_shift_rows::thread_ap_sig_64() {
    ap_sig_64 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void AES_encryption_shift_rows::thread_ap_sig_78() {
    ap_sig_78 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void AES_encryption_shift_rows::thread_ap_sig_87() {
    ap_sig_87 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void AES_encryption_shift_rows::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_23.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_43.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_64.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_78.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_87.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_114.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_exitcond1_fu_135_p2() {
    exitcond1_fu_135_p2 = (!s_cast_fu_131_p1.read().is_01() || !indvars_iv_cast_reg_199.read().is_01())? sc_lv<1>(): sc_lv<1>(s_cast_fu_131_p1.read() == indvars_iv_cast_reg_199.read());
}

void AES_encryption_shift_rows::thread_exitcond2_fu_97_p2() {
    exitcond2_fu_97_p2 = (!indvars_iv_reg_59.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(indvars_iv_reg_59.read() == ap_const_lv3_4);
}

void AES_encryption_shift_rows::thread_exitcond_fu_152_p2() {
    exitcond_fu_152_p2 = (!k_reg_82.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(k_reg_82.read() == ap_const_lv3_4);
}

void AES_encryption_shift_rows::thread_i_fu_146_p2() {
    i_fu_146_p2 = (!indvars_iv_reg_59.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(indvars_iv_reg_59.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void AES_encryption_shift_rows::thread_indvars_iv_cast_fu_93_p1() {
    indvars_iv_cast_fu_93_p1 = esl_zext<4,3>(indvars_iv_reg_59.read());
}

void AES_encryption_shift_rows::thread_k_1_fu_176_p2() {
    k_1_fu_176_p2 = (!ap_const_lv3_1.is_01() || !k_reg_82.read().is_01())? sc_lv<3>(): (sc_biguint<3>(ap_const_lv3_1) + sc_biguint<3>(k_reg_82.read()));
}

void AES_encryption_shift_rows::thread_s_1_fu_140_p2() {
    s_1_fu_140_p2 = (!s_reg_71.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(s_reg_71.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void AES_encryption_shift_rows::thread_s_cast_fu_131_p1() {
    s_cast_fu_131_p1 = esl_zext<4,2>(s_reg_71.read());
}

void AES_encryption_shift_rows::thread_state_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        state_address0 =  (sc_lv<4>) (tmp_5_fu_194_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read()))) {
        state_address0 = state_addr_1_reg_222.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read()))) {
        state_address0 =  (sc_lv<4>) (tmp_7_fu_171_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        state_address0 = state_addr_reg_217.read();
    } else {
        state_address0 = "XXXX";
    }
}

void AES_encryption_shift_rows::thread_state_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()))) {
        state_ce0 = ap_const_logic_1;
    } else {
        state_ce0 = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_state_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        state_d0 = state_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read()))) {
        state_d0 = tmp_reg_240.read();
    } else {
        state_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void AES_encryption_shift_rows::thread_state_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()))) {
        state_we0 = ap_const_logic_1;
    } else {
        state_we0 = ap_const_logic_0;
    }
}

void AES_encryption_shift_rows::thread_tmp1_fu_182_p2() {
    tmp1_fu_182_p2 = (!ap_const_lv2_3.is_01() || !tmp_8_reg_248.read().is_01())? sc_lv<2>(): (sc_bigint<2>(ap_const_lv2_3) + sc_biguint<2>(tmp_8_reg_248.read()));
}

void AES_encryption_shift_rows::thread_tmp_1_fu_115_p1() {
    tmp_1_fu_115_p1 = esl_zext<64,4>(tmp_s_fu_107_p3.read());
}

void AES_encryption_shift_rows::thread_tmp_2_fu_120_p2() {
    tmp_2_fu_120_p2 = (tmp_s_fu_107_p3.read() | ap_const_lv4_3);
}

void AES_encryption_shift_rows::thread_tmp_3_fu_126_p1() {
    tmp_3_fu_126_p1 = esl_zext<64,4>(tmp_2_fu_120_p2.read());
}

void AES_encryption_shift_rows::thread_tmp_4_fu_103_p1() {
    tmp_4_fu_103_p1 = indvars_iv_reg_59.read().range(2-1, 0);
}

void AES_encryption_shift_rows::thread_tmp_5_cast_fu_162_p1() {
    tmp_5_cast_fu_162_p1 = esl_zext<4,3>(k_reg_82.read());
}

void AES_encryption_shift_rows::thread_tmp_5_fu_194_p1() {
    tmp_5_fu_194_p1 = esl_zext<64,4>(tmp_9_fu_187_p3.read());
}

void AES_encryption_shift_rows::thread_tmp_6_fu_166_p2() {
    tmp_6_fu_166_p2 = (!tmp_5_cast_fu_162_p1.read().is_01() || !tmp_s_reg_212.read().is_01())? sc_lv<4>(): (sc_biguint<4>(tmp_5_cast_fu_162_p1.read()) + sc_biguint<4>(tmp_s_reg_212.read()));
}

void AES_encryption_shift_rows::thread_tmp_7_fu_171_p1() {
    tmp_7_fu_171_p1 = esl_zext<64,4>(tmp_6_fu_166_p2.read());
}

void AES_encryption_shift_rows::thread_tmp_8_fu_158_p1() {
    tmp_8_fu_158_p1 = k_reg_82.read().range(2-1, 0);
}

void AES_encryption_shift_rows::thread_tmp_9_fu_187_p3() {
    tmp_9_fu_187_p3 = esl_concat<2,2>(tmp_4_reg_207.read(), tmp1_fu_182_p2.read());
}

void AES_encryption_shift_rows::thread_tmp_s_fu_107_p3() {
    tmp_s_fu_107_p3 = esl_concat<2,2>(tmp_4_fu_103_p1.read(), ap_const_lv2_0);
}

void AES_encryption_shift_rows::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond2_fu_97_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_135_p2.read())) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 16 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_152_p2.read())) {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st6_fsm_5;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}
