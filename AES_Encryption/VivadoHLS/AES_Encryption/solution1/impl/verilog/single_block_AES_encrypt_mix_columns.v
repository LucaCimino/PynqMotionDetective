// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module single_block_AES_encrypt_mix_columns (
        state_0_read,
        state_1_read,
        state_2_read,
        state_3_read,
        state_4_read,
        state_5_read,
        state_6_read,
        state_7_read,
        state_8_read,
        state_9_read,
        state_10_read,
        state_11_read,
        state_12_read,
        state_13_read,
        state_14_read,
        state_15_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15
);


input  [7:0] state_0_read;
input  [7:0] state_1_read;
input  [7:0] state_2_read;
input  [7:0] state_3_read;
input  [7:0] state_4_read;
input  [7:0] state_5_read;
input  [7:0] state_6_read;
input  [7:0] state_7_read;
input  [7:0] state_8_read;
input  [7:0] state_9_read;
input  [7:0] state_10_read;
input  [7:0] state_11_read;
input  [7:0] state_12_read;
input  [7:0] state_13_read;
input  [7:0] state_14_read;
input  [7:0] state_15_read;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;
output  [7:0] ap_return_4;
output  [7:0] ap_return_5;
output  [7:0] ap_return_6;
output  [7:0] ap_return_7;
output  [7:0] ap_return_8;
output  [7:0] ap_return_9;
output  [7:0] ap_return_10;
output  [7:0] ap_return_11;
output  [7:0] ap_return_12;
output  [7:0] ap_return_13;
output  [7:0] ap_return_14;
output  [7:0] ap_return_15;

wire   [7:0] call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0;
wire   [7:0] call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1;
wire   [7:0] call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2;
wire   [7:0] call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3;
wire   [7:0] call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0;
wire   [7:0] call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1;
wire   [7:0] call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2;
wire   [7:0] call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3;
wire   [7:0] call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0;
wire   [7:0] call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1;
wire   [7:0] call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2;
wire   [7:0] call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3;
wire   [7:0] call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0;
wire   [7:0] call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1;
wire   [7:0] call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2;
wire   [7:0] call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3;

single_block_AES_encrypt_coef_mult call_ret_single_block_AES_encrypt_coef_mult_fu_134(
    .b_0_read(state_0_read),
    .b_1_read(state_4_read),
    .b_2_read(state_8_read),
    .b_3_read(state_12_read),
    .ap_return_0(call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0),
    .ap_return_1(call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1),
    .ap_return_2(call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2),
    .ap_return_3(call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3)
);

single_block_AES_encrypt_coef_mult call_ret1_single_block_AES_encrypt_coef_mult_fu_146(
    .b_0_read(state_1_read),
    .b_1_read(state_5_read),
    .b_2_read(state_9_read),
    .b_3_read(state_13_read),
    .ap_return_0(call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0),
    .ap_return_1(call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1),
    .ap_return_2(call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2),
    .ap_return_3(call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3)
);

single_block_AES_encrypt_coef_mult call_ret2_single_block_AES_encrypt_coef_mult_fu_158(
    .b_0_read(state_2_read),
    .b_1_read(state_6_read),
    .b_2_read(state_10_read),
    .b_3_read(state_14_read),
    .ap_return_0(call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0),
    .ap_return_1(call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1),
    .ap_return_2(call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2),
    .ap_return_3(call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3)
);

single_block_AES_encrypt_coef_mult call_ret3_single_block_AES_encrypt_coef_mult_fu_170(
    .b_0_read(state_3_read),
    .b_1_read(state_7_read),
    .b_2_read(state_11_read),
    .b_3_read(state_15_read),
    .ap_return_0(call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0),
    .ap_return_1(call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1),
    .ap_return_2(call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2),
    .ap_return_3(call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3)
);

assign ap_return_0 = call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0;

assign ap_return_1 = call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0;

assign ap_return_10 = call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2;

assign ap_return_11 = call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2;

assign ap_return_12 = call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3;

assign ap_return_13 = call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3;

assign ap_return_14 = call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3;

assign ap_return_15 = call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3;

assign ap_return_2 = call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0;

assign ap_return_3 = call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0;

assign ap_return_4 = call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1;

assign ap_return_5 = call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1;

assign ap_return_6 = call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1;

assign ap_return_7 = call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1;

assign ap_return_8 = call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2;

assign ap_return_9 = call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2;

endmodule //single_block_AES_encrypt_mix_columns
