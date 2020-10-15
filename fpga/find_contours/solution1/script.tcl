############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project find_contours
set_top contours_finder
add_files find_contours/contour_finder.cpp
add_files find_contours/contour_finder.h
add_files -tb find_contours/rods_a.bmp
add_files -tb find_contours/rods_b.bmp
add_files -tb find_contours/test_benc.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./find_contours/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
