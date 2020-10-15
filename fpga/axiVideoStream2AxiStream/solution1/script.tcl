############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axiVideoStream2AxiStream
set_top axiVideoStream2AxiStream
add_files axiVideoStream2AxiStream/axiVideoStream2AxiStream.h
add_files axiVideoStream2AxiStream/axiVideoStream2AxiStream.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 20 -name default
config_export -description axiVideoStream2AxiStream -display_name axiVideoStream2AxiStream -format ip_catalog -rtl verilog -vendor lorenzo_balducci -version 1.0
#source "./axiVideoStream2AxiStream/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -description "axiVideoStream2AxiStream" -vendor "lorenzo_balducci" -display_name "axiVideoStream2AxiStream"
