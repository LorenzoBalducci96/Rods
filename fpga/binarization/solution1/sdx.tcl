# ==============================================================
# File generated on Wed Aug 05 17:58:33 +0200 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../test_bench.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../rods_grayscale.bmp -cflags { -Wno-unknown-pragmas}
add_files binarization/binarization.h
add_files binarization/binarization.cpp
set_part xc7z010clg400-1
create_clock -name default -period 10
set_directive_interface binarization 
set_directive_interface binarization 
set_directive_interface binarization 