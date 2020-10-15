############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project otsu_evaluator_1
set_top otsu
add_files otsu_evaluator_1/otsu.cpp
add_files otsu_evaluator_1/otsu.h
add_files -tb otsu_evaluator_1/rods.bmp -cflags "-Wno-unknown-pragmas"
add_files -tb otsu_evaluator_1/rods_dark.bmp -cflags "-Wno-unknown-pragmas"
add_files -tb otsu_evaluator_1/test_bench.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -description inter_group_variance_calculator_3 -display_name inter_group_variance_calculator_3 -format ip_catalog -rtl verilog -vendor balducci_lorenzo -version 2.0
source "./otsu_evaluator_1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "inter_group_variance_calculator_4" -vendor "balducci_lorenzo" -version "2.0" -display_name "inter_group_variance_calculator_4"
