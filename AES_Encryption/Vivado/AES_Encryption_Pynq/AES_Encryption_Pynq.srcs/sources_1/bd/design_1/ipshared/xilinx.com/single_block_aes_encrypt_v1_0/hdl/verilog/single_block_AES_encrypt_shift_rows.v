// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module single_block_AES_encrypt_shift_rows (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0
);

parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_st2_fsm_1 = 6'b10;
parameter    ap_ST_st3_fsm_2 = 6'b100;
parameter    ap_ST_st4_fsm_3 = 6'b1000;
parameter    ap_ST_st5_fsm_4 = 6'b10000;
parameter    ap_ST_st6_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv4_3 = 4'b11;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_3 = 2'b11;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
input  [7:0] state_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;
reg[7:0] state_d0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_23;
wire   [3:0] indvars_iv_cast_fu_93_p1;
reg   [3:0] indvars_iv_cast_reg_199;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_43;
wire   [1:0] tmp_6_fu_103_p1;
reg   [1:0] tmp_6_reg_207;
wire   [0:0] exitcond2_fu_97_p2;
wire   [3:0] tmp_s_fu_107_p3;
reg   [3:0] tmp_s_reg_212;
reg   [3:0] state_addr_reg_217;
reg   [3:0] state_addr_1_reg_222;
wire   [1:0] s_1_fu_140_p2;
reg   [1:0] s_1_reg_230;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_64;
wire   [2:0] i_fu_146_p2;
wire   [0:0] exitcond1_fu_135_p2;
reg   [7:0] tmp_reg_240;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_78;
wire   [1:0] tmp_9_fu_158_p1;
reg   [1:0] tmp_9_reg_248;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_87;
wire   [0:0] exitcond_fu_152_p2;
wire   [2:0] k_1_fu_176_p2;
reg   [2:0] k_1_reg_258;
reg   [2:0] indvars_iv_reg_59;
reg   [1:0] s_reg_71;
reg   [2:0] k_reg_82;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_114;
wire   [63:0] tmp_3_fu_115_p1;
wire   [63:0] tmp_5_fu_126_p1;
wire   [63:0] tmp_8_fu_171_p1;
wire   [63:0] tmp_2_fu_194_p1;
wire   [3:0] tmp_4_fu_120_p2;
wire   [3:0] s_cast_fu_131_p1;
wire   [3:0] tmp_6_cast_fu_162_p1;
wire   [3:0] tmp_7_fu_166_p2;
wire   [1:0] tmp1_fu_182_p2;
wire   [3:0] tmp_1_fu_187_p3;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        indvars_iv_reg_59 <= ap_const_lv3_1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_135_p2))) begin
        indvars_iv_reg_59 <= i_fu_146_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        k_reg_82 <= k_1_reg_258;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        k_reg_82 <= ap_const_lv3_1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_97_p2 == 1'b0))) begin
        s_reg_71 <= ap_const_lv2_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_fu_152_p2))) begin
        s_reg_71 <= s_1_reg_230;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        indvars_iv_cast_reg_199[2 : 0] <= indvars_iv_cast_fu_93_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == exitcond_fu_152_p2))) begin
        k_1_reg_258 <= k_1_fu_176_p2;
        tmp_9_reg_248 <= tmp_9_fu_158_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        s_1_reg_230 <= s_1_fu_140_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_97_p2 == 1'b0))) begin
        state_addr_1_reg_222[3 : 2] <= tmp_5_fu_126_p1[3 : 2];
        state_addr_reg_217[3 : 2] <= tmp_3_fu_115_p1[3 : 2];
        tmp_6_reg_207 <= tmp_6_fu_103_p1;
        tmp_s_reg_212[3 : 2] <= tmp_s_fu_107_p3[3 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        tmp_reg_240 <= state_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_97_p2 == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_97_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_43) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_64) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_78) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_87) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_114) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        state_address0 = tmp_2_fu_194_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_fu_152_p2))) begin
        state_address0 = state_addr_1_reg_222;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == exitcond_fu_152_p2))) begin
        state_address0 = tmp_8_fu_171_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        state_address0 = state_addr_reg_217;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == exitcond_fu_152_p2)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_fu_152_p2)) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        state_d0 = state_q0;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_fu_152_p2))) begin
        state_d0 = tmp_reg_240;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_fu_152_p2)) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(exitcond2_fu_97_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == exitcond1_fu_135_p2)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == exitcond_fu_152_p2)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_114 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_23 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_43 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_64 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_78 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_87 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

assign exitcond1_fu_135_p2 = ((s_cast_fu_131_p1 == indvars_iv_cast_reg_199) ? 1'b1 : 1'b0);

assign exitcond2_fu_97_p2 = ((indvars_iv_reg_59 == ap_const_lv3_4) ? 1'b1 : 1'b0);

assign exitcond_fu_152_p2 = ((k_reg_82 == ap_const_lv3_4) ? 1'b1 : 1'b0);

assign i_fu_146_p2 = (indvars_iv_reg_59 + ap_const_lv3_1);

assign indvars_iv_cast_fu_93_p1 = indvars_iv_reg_59;

assign k_1_fu_176_p2 = (ap_const_lv3_1 + k_reg_82);

assign s_1_fu_140_p2 = (s_reg_71 + ap_const_lv2_1);

assign s_cast_fu_131_p1 = s_reg_71;

assign tmp1_fu_182_p2 = ($signed(ap_const_lv2_3) + $signed(tmp_9_reg_248));

assign tmp_1_fu_187_p3 = {{tmp_6_reg_207}, {tmp1_fu_182_p2}};

assign tmp_2_fu_194_p1 = tmp_1_fu_187_p3;

assign tmp_3_fu_115_p1 = tmp_s_fu_107_p3;

assign tmp_4_fu_120_p2 = (tmp_s_fu_107_p3 | ap_const_lv4_3);

assign tmp_5_fu_126_p1 = tmp_4_fu_120_p2;

assign tmp_6_cast_fu_162_p1 = k_reg_82;

assign tmp_6_fu_103_p1 = indvars_iv_reg_59[1:0];

assign tmp_7_fu_166_p2 = (tmp_6_cast_fu_162_p1 + tmp_s_reg_212);

assign tmp_8_fu_171_p1 = tmp_7_fu_166_p2;

assign tmp_9_fu_158_p1 = k_reg_82[1:0];

assign tmp_s_fu_107_p3 = {{tmp_6_fu_103_p1}, {ap_const_lv2_0}};

always @ (posedge ap_clk) begin
    indvars_iv_cast_reg_199[3] <= 1'b0;
    tmp_s_reg_212[1:0] <= 2'b00;
    state_addr_reg_217[1:0] <= 2'b00;
    state_addr_1_reg_222[1:0] <= 2'b11;
end

endmodule //single_block_AES_encrypt_shift_rows
