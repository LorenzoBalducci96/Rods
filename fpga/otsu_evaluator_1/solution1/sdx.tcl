# ==============================================================
# File generated on Thu Aug 06 22:13:42 +0200 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../test_bench.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../rods_dark.bmp -cflags { -Wno-unknown-pragmas}
add_files -tb ../rods.bmp -cflags { -Wno-unknown-pragmas}
add_files otsu_evaluator_1/otsu.h
add_files otsu_evaluator_1/otsu.cpp
set_part xc7z010clg400-1
create_clock -name default -period 10
config_export -description=inter_group_variance_calculator_3
config_export -display_name=inter_group_variance_calculator_3
config_export -format=ip_catalog
config_export -rtl=verilog
config_export -vendor=balducci_lorenzo
config_export -version=2.0
set_directive_interface otsu 
set_directive_interface otsu 
