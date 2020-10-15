# ==============================================================
# File generated on Tue Aug 04 18:25:25 +0200 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../test_bench.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../geeks.bmp -cflags { -Wno-unknown-pragmas}
add_files fitler_step_one/filter.h
add_files fitler_step_one/filter.cpp
set_part xc7z010clg400-1
create_clock -name default -period 13.5
config_export -description=Gaussian_blur_1
config_export -display_name=Gaussian_blur_1
config_export -format=ip_catalog
config_export -rtl=verilog
config_export -vendor=Balducci_Lorenzo
config_export -version=1.0
