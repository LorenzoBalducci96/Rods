############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axiStream2AxiVideoStream
set_top axis_to_axiVideoStream
add_files axiStream2AxiVideoStream/axiStream2AxiVideoStream.cpp
add_files axiStream2AxiVideoStream/axiStream2AxiVideoStream.h
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 20 -name default
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
config_export -display_name axis2axiVideoStream -format ip_catalog -rtl verilog -vendor lorenzo_balducci -version 1.0
#source "./axiStream2AxiVideoStream/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -vendor "lorenzo_balducci" -version "1.2" -display_name "axis2axiVideoStream_2"
