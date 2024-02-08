-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity single_block_AES_encrypt_mix_columns is
port (
    state_0_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_1_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_2_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_3_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_4_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_5_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_6_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_7_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_8_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_9_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_10_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_11_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_12_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_13_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_14_read : IN STD_LOGIC_VECTOR (7 downto 0);
    state_15_read : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_5 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_6 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_7 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_8 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_9 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_10 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_11 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_12 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_13 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_14 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_15 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of single_block_AES_encrypt_mix_columns is 
    constant ap_true : BOOLEAN := true;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3 : STD_LOGIC_VECTOR (7 downto 0);

    component single_block_AES_encrypt_coef_mult IS
    port (
        b_0_read : IN STD_LOGIC_VECTOR (7 downto 0);
        b_1_read : IN STD_LOGIC_VECTOR (7 downto 0);
        b_2_read : IN STD_LOGIC_VECTOR (7 downto 0);
        b_3_read : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    call_ret_single_block_AES_encrypt_coef_mult_fu_134 : component single_block_AES_encrypt_coef_mult
    port map (
        b_0_read => state_0_read,
        b_1_read => state_4_read,
        b_2_read => state_8_read,
        b_3_read => state_12_read,
        ap_return_0 => call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0,
        ap_return_1 => call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1,
        ap_return_2 => call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2,
        ap_return_3 => call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3);

    call_ret1_single_block_AES_encrypt_coef_mult_fu_146 : component single_block_AES_encrypt_coef_mult
    port map (
        b_0_read => state_1_read,
        b_1_read => state_5_read,
        b_2_read => state_9_read,
        b_3_read => state_13_read,
        ap_return_0 => call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0,
        ap_return_1 => call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1,
        ap_return_2 => call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2,
        ap_return_3 => call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3);

    call_ret2_single_block_AES_encrypt_coef_mult_fu_158 : component single_block_AES_encrypt_coef_mult
    port map (
        b_0_read => state_2_read,
        b_1_read => state_6_read,
        b_2_read => state_10_read,
        b_3_read => state_14_read,
        ap_return_0 => call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0,
        ap_return_1 => call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1,
        ap_return_2 => call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2,
        ap_return_3 => call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3);

    call_ret3_single_block_AES_encrypt_coef_mult_fu_170 : component single_block_AES_encrypt_coef_mult
    port map (
        b_0_read => state_3_read,
        b_1_read => state_7_read,
        b_2_read => state_11_read,
        b_3_read => state_15_read,
        ap_return_0 => call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0,
        ap_return_1 => call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1,
        ap_return_2 => call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2,
        ap_return_3 => call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3);




    ap_return_0 <= call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_0;
    ap_return_1 <= call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_0;
    ap_return_10 <= call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_2;
    ap_return_11 <= call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_2;
    ap_return_12 <= call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_3;
    ap_return_13 <= call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_3;
    ap_return_14 <= call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_3;
    ap_return_15 <= call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_3;
    ap_return_2 <= call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_0;
    ap_return_3 <= call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_0;
    ap_return_4 <= call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_1;
    ap_return_5 <= call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_1;
    ap_return_6 <= call_ret2_single_block_AES_encrypt_coef_mult_fu_158_ap_return_1;
    ap_return_7 <= call_ret3_single_block_AES_encrypt_coef_mult_fu_170_ap_return_1;
    ap_return_8 <= call_ret_single_block_AES_encrypt_coef_mult_fu_134_ap_return_2;
    ap_return_9 <= call_ret1_single_block_AES_encrypt_coef_mult_fu_146_ap_return_2;
end behav;
