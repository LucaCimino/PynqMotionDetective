############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_CTR
set_top single_block_CTR_encrypt
add_files AES_CTR/aes.cpp
add_files AES_CTR/aes.h
add_files AES_CTR/ctr_main.cpp
add_files AES_CTR/ctr_main.h
add_files -tb AES_CTR/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./AES_CTR/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog -description "with TLAST and USER signal" -version "9.0"
