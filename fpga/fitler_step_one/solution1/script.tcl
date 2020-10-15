############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fitler_step_one
set_top image_filter
add_files fitler_step_one/filter.cpp
add_files fitler_step_one/filter.h
add_files -tb fitler_step_one/geeks.bmp
add_files -tb fitler_step_one/rods.png
add_files -tb fitler_step_one/rods_grayscale.bmp
add_files -tb fitler_step_one/test_bench.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 13.5 -name default
config_export -description Gaussian_blur_2 -display_name Gaussian_blur_2 -format ip_catalog -rtl verilog -vendor balducci_lorenzo -version 1.0
#source "./fitler_step_one/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "Gaussian_blur_2" -vendor "balducci_lorenzo" -display_name "Gaussian_blur_2"
