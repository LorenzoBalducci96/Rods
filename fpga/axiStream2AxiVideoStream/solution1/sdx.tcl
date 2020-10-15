# ==============================================================
# File generated on Thu Sep 17 23:11:54 +0200 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files axiStream2AxiVideoStream/axiStream2AxiVideoStream.h
add_files axiStream2AxiVideoStream/axiStream2AxiVideoStream.cpp
set_part xc7z010clg400-1
create_clock -name default -period 20
set_clock_uncertainty 12.5% default
config_sdx -optimization_level=none
config_sdx -target=none
config_schedule -effort=medium
config_schedule -relax_ii_for_timing=0
config_bind -effort=medium
config_export -display_name=axis2axiVideoStream
config_export -format=ip_catalog
config_export -rtl=verilog
config_export -vendor=lorenzo_balducci
config_export -version=1.0
