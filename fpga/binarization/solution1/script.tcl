############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project binarization
set_top binarization
add_files binarization/binarization.cpp
add_files binarization/binarization.h
add_files -tb binarization/rods_grayscale.bmp
add_files -tb binarization/test_bench.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
source "./binarization/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "image_binarization_1" -vendor "balducci_lorenzo" -display_name "image_binarization_1"
