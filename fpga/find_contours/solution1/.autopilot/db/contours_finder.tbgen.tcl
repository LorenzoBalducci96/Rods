set moduleName contours_finder
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {contours_finder}
set C_modelType { void 0 }
set C_modelArgList {
	{ INPUT_STREAM_V_data_V int 8 regular {axi_s 0 volatile  { INPUT_STREAM Data } }  }
	{ INPUT_STREAM_V_keep_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Keep } }  }
	{ INPUT_STREAM_V_strb_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Strb } }  }
	{ INPUT_STREAM_V_user_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM User } }  }
	{ INPUT_STREAM_V_last_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Last } }  }
	{ INPUT_STREAM_V_id_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM ID } }  }
	{ INPUT_STREAM_V_dest_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Dest } }  }
	{ OUTPUT_STREAM_V_data_V int 8 regular {axi_s 1 volatile  { OUTPUT_STREAM Data } }  }
	{ OUTPUT_STREAM_V_keep_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Keep } }  }
	{ OUTPUT_STREAM_V_strb_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Strb } }  }
	{ OUTPUT_STREAM_V_user_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM User } }  }
	{ OUTPUT_STREAM_V_last_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Last } }  }
	{ OUTPUT_STREAM_V_id_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM ID } }  }
	{ OUTPUT_STREAM_V_dest_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Dest } }  }
	{ male_match_V_data_V int 8 regular {fifo 1 volatile }  }
	{ male_match_V_keep_V int 1 regular {fifo 1 volatile }  }
	{ male_match_V_strb_V int 1 regular {fifo 1 volatile }  }
	{ male_match_V_user_V int 1 regular {fifo 1 volatile }  }
	{ male_match_V_last_V int 1 regular {fifo 1 volatile }  }
	{ male_match_V_id_V int 1 regular {fifo 1 volatile }  }
	{ male_match_V_dest_V int 1 regular {fifo 1 volatile }  }
	{ female_match_V_data_V int 8 regular {fifo 1 volatile }  }
	{ female_match_V_keep_V int 1 regular {fifo 1 volatile }  }
	{ female_match_V_strb_V int 1 regular {fifo 1 volatile }  }
	{ female_match_V_user_V int 1 regular {fifo 1 volatile }  }
	{ female_match_V_last_V int 1 regular {fifo 1 volatile }  }
	{ female_match_V_id_V int 1 regular {fifo 1 volatile }  }
	{ female_match_V_dest_V int 1 regular {fifo 1 volatile }  }
	{ counter_area_out int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ mean_x_position int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ mean_y_position int 32 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "INPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "INPUT_STREAM.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "OUTPUT_STREAM.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "male_match_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "male_match.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "male_match_V_keep_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "male_match.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "male_match_V_strb_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "male_match.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "male_match_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "male_match.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "male_match_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "male_match.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "male_match_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "male_match.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "male_match_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "male_match.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "female_match_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "female_match.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "female_match_V_keep_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "female_match.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "female_match_V_strb_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "female_match.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "female_match_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "female_match.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "female_match_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "female_match.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "female_match_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "female_match.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "female_match_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "female_match.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "counter_area_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "counter_area_out","cData": "long unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "mean_x_position", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mean_x_position","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "mean_y_position", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mean_y_position","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ INPUT_STREAM_TDATA sc_in sc_lv 8 signal 0 } 
	{ INPUT_STREAM_TVALID sc_in sc_logic 1 invld 6 } 
	{ INPUT_STREAM_TREADY sc_out sc_logic 1 inacc 6 } 
	{ INPUT_STREAM_TKEEP sc_in sc_lv 1 signal 1 } 
	{ INPUT_STREAM_TSTRB sc_in sc_lv 1 signal 2 } 
	{ INPUT_STREAM_TUSER sc_in sc_lv 1 signal 3 } 
	{ INPUT_STREAM_TLAST sc_in sc_lv 1 signal 4 } 
	{ INPUT_STREAM_TID sc_in sc_lv 1 signal 5 } 
	{ INPUT_STREAM_TDEST sc_in sc_lv 1 signal 6 } 
	{ OUTPUT_STREAM_TDATA sc_out sc_lv 8 signal 7 } 
	{ OUTPUT_STREAM_TVALID sc_out sc_logic 1 outvld 13 } 
	{ OUTPUT_STREAM_TREADY sc_in sc_logic 1 outacc 7 } 
	{ OUTPUT_STREAM_TKEEP sc_out sc_lv 1 signal 8 } 
	{ OUTPUT_STREAM_TSTRB sc_out sc_lv 1 signal 9 } 
	{ OUTPUT_STREAM_TUSER sc_out sc_lv 1 signal 10 } 
	{ OUTPUT_STREAM_TLAST sc_out sc_lv 1 signal 11 } 
	{ OUTPUT_STREAM_TID sc_out sc_lv 1 signal 12 } 
	{ OUTPUT_STREAM_TDEST sc_out sc_lv 1 signal 13 } 
	{ male_match_V_data_V_din sc_out sc_lv 8 signal 14 } 
	{ male_match_V_data_V_full_n sc_in sc_logic 1 signal 14 } 
	{ male_match_V_data_V_write sc_out sc_logic 1 signal 14 } 
	{ male_match_V_keep_V_din sc_out sc_lv 1 signal 15 } 
	{ male_match_V_keep_V_full_n sc_in sc_logic 1 signal 15 } 
	{ male_match_V_keep_V_write sc_out sc_logic 1 signal 15 } 
	{ male_match_V_strb_V_din sc_out sc_lv 1 signal 16 } 
	{ male_match_V_strb_V_full_n sc_in sc_logic 1 signal 16 } 
	{ male_match_V_strb_V_write sc_out sc_logic 1 signal 16 } 
	{ male_match_V_user_V_din sc_out sc_lv 1 signal 17 } 
	{ male_match_V_user_V_full_n sc_in sc_logic 1 signal 17 } 
	{ male_match_V_user_V_write sc_out sc_logic 1 signal 17 } 
	{ male_match_V_last_V_din sc_out sc_lv 1 signal 18 } 
	{ male_match_V_last_V_full_n sc_in sc_logic 1 signal 18 } 
	{ male_match_V_last_V_write sc_out sc_logic 1 signal 18 } 
	{ male_match_V_id_V_din sc_out sc_lv 1 signal 19 } 
	{ male_match_V_id_V_full_n sc_in sc_logic 1 signal 19 } 
	{ male_match_V_id_V_write sc_out sc_logic 1 signal 19 } 
	{ male_match_V_dest_V_din sc_out sc_lv 1 signal 20 } 
	{ male_match_V_dest_V_full_n sc_in sc_logic 1 signal 20 } 
	{ male_match_V_dest_V_write sc_out sc_logic 1 signal 20 } 
	{ female_match_V_data_V_din sc_out sc_lv 8 signal 21 } 
	{ female_match_V_data_V_full_n sc_in sc_logic 1 signal 21 } 
	{ female_match_V_data_V_write sc_out sc_logic 1 signal 21 } 
	{ female_match_V_keep_V_din sc_out sc_lv 1 signal 22 } 
	{ female_match_V_keep_V_full_n sc_in sc_logic 1 signal 22 } 
	{ female_match_V_keep_V_write sc_out sc_logic 1 signal 22 } 
	{ female_match_V_strb_V_din sc_out sc_lv 1 signal 23 } 
	{ female_match_V_strb_V_full_n sc_in sc_logic 1 signal 23 } 
	{ female_match_V_strb_V_write sc_out sc_logic 1 signal 23 } 
	{ female_match_V_user_V_din sc_out sc_lv 1 signal 24 } 
	{ female_match_V_user_V_full_n sc_in sc_logic 1 signal 24 } 
	{ female_match_V_user_V_write sc_out sc_logic 1 signal 24 } 
	{ female_match_V_last_V_din sc_out sc_lv 1 signal 25 } 
	{ female_match_V_last_V_full_n sc_in sc_logic 1 signal 25 } 
	{ female_match_V_last_V_write sc_out sc_logic 1 signal 25 } 
	{ female_match_V_id_V_din sc_out sc_lv 1 signal 26 } 
	{ female_match_V_id_V_full_n sc_in sc_logic 1 signal 26 } 
	{ female_match_V_id_V_write sc_out sc_logic 1 signal 26 } 
	{ female_match_V_dest_V_din sc_out sc_lv 1 signal 27 } 
	{ female_match_V_dest_V_full_n sc_in sc_logic 1 signal 27 } 
	{ female_match_V_dest_V_write sc_out sc_logic 1 signal 27 } 
	{ counter_area_out_address0 sc_out sc_lv 8 signal 28 } 
	{ counter_area_out_ce0 sc_out sc_logic 1 signal 28 } 
	{ counter_area_out_we0 sc_out sc_logic 1 signal 28 } 
	{ counter_area_out_d0 sc_out sc_lv 32 signal 28 } 
	{ mean_x_position_address0 sc_out sc_lv 8 signal 29 } 
	{ mean_x_position_ce0 sc_out sc_logic 1 signal 29 } 
	{ mean_x_position_we0 sc_out sc_logic 1 signal 29 } 
	{ mean_x_position_d0 sc_out sc_lv 32 signal 29 } 
	{ mean_y_position_address0 sc_out sc_lv 8 signal 30 } 
	{ mean_y_position_ce0 sc_out sc_logic 1 signal 30 } 
	{ mean_y_position_we0 sc_out sc_logic 1 signal 30 } 
	{ mean_y_position_d0 sc_out sc_lv 32 signal 30 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "OUTPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "male_match_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "male_match_V_data_V", "role": "din" }} , 
 	{ "name": "male_match_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_data_V", "role": "full_n" }} , 
 	{ "name": "male_match_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_data_V", "role": "write" }} , 
 	{ "name": "male_match_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_keep_V", "role": "din" }} , 
 	{ "name": "male_match_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_keep_V", "role": "full_n" }} , 
 	{ "name": "male_match_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_keep_V", "role": "write" }} , 
 	{ "name": "male_match_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_strb_V", "role": "din" }} , 
 	{ "name": "male_match_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_strb_V", "role": "full_n" }} , 
 	{ "name": "male_match_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_strb_V", "role": "write" }} , 
 	{ "name": "male_match_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_user_V", "role": "din" }} , 
 	{ "name": "male_match_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_user_V", "role": "full_n" }} , 
 	{ "name": "male_match_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_user_V", "role": "write" }} , 
 	{ "name": "male_match_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_last_V", "role": "din" }} , 
 	{ "name": "male_match_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_last_V", "role": "full_n" }} , 
 	{ "name": "male_match_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_last_V", "role": "write" }} , 
 	{ "name": "male_match_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_id_V", "role": "din" }} , 
 	{ "name": "male_match_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_id_V", "role": "full_n" }} , 
 	{ "name": "male_match_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_id_V", "role": "write" }} , 
 	{ "name": "male_match_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_dest_V", "role": "din" }} , 
 	{ "name": "male_match_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_dest_V", "role": "full_n" }} , 
 	{ "name": "male_match_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "male_match_V_dest_V", "role": "write" }} , 
 	{ "name": "female_match_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "female_match_V_data_V", "role": "din" }} , 
 	{ "name": "female_match_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_data_V", "role": "full_n" }} , 
 	{ "name": "female_match_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_data_V", "role": "write" }} , 
 	{ "name": "female_match_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_keep_V", "role": "din" }} , 
 	{ "name": "female_match_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_keep_V", "role": "full_n" }} , 
 	{ "name": "female_match_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_keep_V", "role": "write" }} , 
 	{ "name": "female_match_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_strb_V", "role": "din" }} , 
 	{ "name": "female_match_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_strb_V", "role": "full_n" }} , 
 	{ "name": "female_match_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_strb_V", "role": "write" }} , 
 	{ "name": "female_match_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_user_V", "role": "din" }} , 
 	{ "name": "female_match_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_user_V", "role": "full_n" }} , 
 	{ "name": "female_match_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_user_V", "role": "write" }} , 
 	{ "name": "female_match_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_last_V", "role": "din" }} , 
 	{ "name": "female_match_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_last_V", "role": "full_n" }} , 
 	{ "name": "female_match_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_last_V", "role": "write" }} , 
 	{ "name": "female_match_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_id_V", "role": "din" }} , 
 	{ "name": "female_match_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_id_V", "role": "full_n" }} , 
 	{ "name": "female_match_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_id_V", "role": "write" }} , 
 	{ "name": "female_match_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_dest_V", "role": "din" }} , 
 	{ "name": "female_match_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_dest_V", "role": "full_n" }} , 
 	{ "name": "female_match_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "female_match_V_dest_V", "role": "write" }} , 
 	{ "name": "counter_area_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "counter_area_out", "role": "address0" }} , 
 	{ "name": "counter_area_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "counter_area_out", "role": "ce0" }} , 
 	{ "name": "counter_area_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "counter_area_out", "role": "we0" }} , 
 	{ "name": "counter_area_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "counter_area_out", "role": "d0" }} , 
 	{ "name": "mean_x_position_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mean_x_position", "role": "address0" }} , 
 	{ "name": "mean_x_position_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_x_position", "role": "ce0" }} , 
 	{ "name": "mean_x_position_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_x_position", "role": "we0" }} , 
 	{ "name": "mean_x_position_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mean_x_position", "role": "d0" }} , 
 	{ "name": "mean_y_position_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mean_y_position", "role": "address0" }} , 
 	{ "name": "mean_y_position_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_y_position", "role": "ce0" }} , 
 	{ "name": "mean_y_position_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_y_position", "role": "we0" }} , 
 	{ "name": "mean_y_position_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mean_y_position", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "contours_finder",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "INPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "INPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "INPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "OUTPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUTPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OUTPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "male_match_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "male_match_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "male_match_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "male_match_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "male_match_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "male_match_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "male_match_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "male_match_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "male_match_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "male_match_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "male_match_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "male_match_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "male_match_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "male_match_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "female_match_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "female_match_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "female_match_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "female_match_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "female_match_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "female_match_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "female_match_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "female_match_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "female_match_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "female_match_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "female_match_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "female_match_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "female_match_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "female_match_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "counter_area_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mean_x_position", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mean_y_position", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "width_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "height_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_area", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_x_values", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_y_values", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "first_hole_center_x", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "previous_row", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "probable_new_holes_t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "holes_max_left", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "holes_max_right", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "holes_start_height", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "id", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "marked_on_line", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "diagonal_pixel", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "holes_buffer", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.counter_area_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_x_values_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_y_values_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.first_hole_center_x_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.previous_row_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.probable_new_holes_t_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.holes_max_left_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.holes_max_right_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.holes_start_height_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.holes_buffer_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contours_finder_ulbW_U1", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contours_finder_ulbW_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	contours_finder {
		INPUT_STREAM_V_data_V {Type I LastRead 0 FirstWrite -1}
		INPUT_STREAM_V_keep_V {Type I LastRead 0 FirstWrite -1}
		INPUT_STREAM_V_strb_V {Type I LastRead 0 FirstWrite -1}
		INPUT_STREAM_V_user_V {Type I LastRead 0 FirstWrite -1}
		INPUT_STREAM_V_last_V {Type I LastRead 0 FirstWrite -1}
		INPUT_STREAM_V_id_V {Type I LastRead 0 FirstWrite -1}
		INPUT_STREAM_V_dest_V {Type I LastRead 0 FirstWrite -1}
		OUTPUT_STREAM_V_data_V {Type O LastRead -1 FirstWrite 4}
		OUTPUT_STREAM_V_keep_V {Type O LastRead -1 FirstWrite 4}
		OUTPUT_STREAM_V_strb_V {Type O LastRead -1 FirstWrite 4}
		OUTPUT_STREAM_V_user_V {Type O LastRead -1 FirstWrite 4}
		OUTPUT_STREAM_V_last_V {Type O LastRead -1 FirstWrite 4}
		OUTPUT_STREAM_V_id_V {Type O LastRead -1 FirstWrite 4}
		OUTPUT_STREAM_V_dest_V {Type O LastRead -1 FirstWrite 4}
		male_match_V_data_V {Type O LastRead -1 FirstWrite 4}
		male_match_V_keep_V {Type O LastRead -1 FirstWrite 4}
		male_match_V_strb_V {Type O LastRead -1 FirstWrite 4}
		male_match_V_user_V {Type O LastRead -1 FirstWrite 4}
		male_match_V_last_V {Type O LastRead -1 FirstWrite 4}
		male_match_V_id_V {Type O LastRead -1 FirstWrite 4}
		male_match_V_dest_V {Type O LastRead -1 FirstWrite 4}
		female_match_V_data_V {Type O LastRead -1 FirstWrite 4}
		female_match_V_keep_V {Type O LastRead -1 FirstWrite 4}
		female_match_V_strb_V {Type O LastRead -1 FirstWrite 4}
		female_match_V_user_V {Type O LastRead -1 FirstWrite 4}
		female_match_V_last_V {Type O LastRead -1 FirstWrite 4}
		female_match_V_id_V {Type O LastRead -1 FirstWrite 4}
		female_match_V_dest_V {Type O LastRead -1 FirstWrite 4}
		counter_area_out {Type O LastRead -1 FirstWrite 18}
		mean_x_position {Type O LastRead -1 FirstWrite 18}
		mean_y_position {Type O LastRead -1 FirstWrite 18}
		width_count {Type IO LastRead -1 FirstWrite -1}
		height_count {Type IO LastRead -1 FirstWrite -1}
		counter_area {Type IO LastRead -1 FirstWrite -1}
		sum_x_values {Type IO LastRead -1 FirstWrite -1}
		sum_y_values {Type IO LastRead -1 FirstWrite -1}
		first_hole_center_x {Type IO LastRead -1 FirstWrite -1}
		previous_row {Type IO LastRead -1 FirstWrite -1}
		probable_new_holes_t {Type IO LastRead -1 FirstWrite -1}
		holes_max_left {Type IO LastRead -1 FirstWrite -1}
		holes_max_right {Type IO LastRead -1 FirstWrite -1}
		holes_start_height {Type IO LastRead -1 FirstWrite -1}
		id {Type IO LastRead -1 FirstWrite -1}
		marked_on_line {Type IO LastRead -1 FirstWrite -1}
		diagonal_pixel {Type IO LastRead -1 FirstWrite -1}
		holes_buffer {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	INPUT_STREAM_V_data_V { axis {  { INPUT_STREAM_TDATA in_data 0 8 } } }
	INPUT_STREAM_V_keep_V { axis {  { INPUT_STREAM_TKEEP in_data 0 1 } } }
	INPUT_STREAM_V_strb_V { axis {  { INPUT_STREAM_TSTRB in_data 0 1 } } }
	INPUT_STREAM_V_user_V { axis {  { INPUT_STREAM_TUSER in_data 0 1 } } }
	INPUT_STREAM_V_last_V { axis {  { INPUT_STREAM_TLAST in_data 0 1 } } }
	INPUT_STREAM_V_id_V { axis {  { INPUT_STREAM_TID in_data 0 1 } } }
	INPUT_STREAM_V_dest_V { axis {  { INPUT_STREAM_TVALID in_vld 0 1 }  { INPUT_STREAM_TREADY in_acc 1 1 }  { INPUT_STREAM_TDEST in_data 0 1 } } }
	OUTPUT_STREAM_V_data_V { axis {  { OUTPUT_STREAM_TDATA out_data 1 8 }  { OUTPUT_STREAM_TREADY out_acc 0 1 } } }
	OUTPUT_STREAM_V_keep_V { axis {  { OUTPUT_STREAM_TKEEP out_data 1 1 } } }
	OUTPUT_STREAM_V_strb_V { axis {  { OUTPUT_STREAM_TSTRB out_data 1 1 } } }
	OUTPUT_STREAM_V_user_V { axis {  { OUTPUT_STREAM_TUSER out_data 1 1 } } }
	OUTPUT_STREAM_V_last_V { axis {  { OUTPUT_STREAM_TLAST out_data 1 1 } } }
	OUTPUT_STREAM_V_id_V { axis {  { OUTPUT_STREAM_TID out_data 1 1 } } }
	OUTPUT_STREAM_V_dest_V { axis {  { OUTPUT_STREAM_TVALID out_vld 1 1 }  { OUTPUT_STREAM_TDEST out_data 1 1 } } }
	male_match_V_data_V { ap_fifo {  { male_match_V_data_V_din fifo_data 1 8 }  { male_match_V_data_V_full_n fifo_status 0 1 }  { male_match_V_data_V_write fifo_update 1 1 } } }
	male_match_V_keep_V { ap_fifo {  { male_match_V_keep_V_din fifo_data 1 1 }  { male_match_V_keep_V_full_n fifo_status 0 1 }  { male_match_V_keep_V_write fifo_update 1 1 } } }
	male_match_V_strb_V { ap_fifo {  { male_match_V_strb_V_din fifo_data 1 1 }  { male_match_V_strb_V_full_n fifo_status 0 1 }  { male_match_V_strb_V_write fifo_update 1 1 } } }
	male_match_V_user_V { ap_fifo {  { male_match_V_user_V_din fifo_data 1 1 }  { male_match_V_user_V_full_n fifo_status 0 1 }  { male_match_V_user_V_write fifo_update 1 1 } } }
	male_match_V_last_V { ap_fifo {  { male_match_V_last_V_din fifo_data 1 1 }  { male_match_V_last_V_full_n fifo_status 0 1 }  { male_match_V_last_V_write fifo_update 1 1 } } }
	male_match_V_id_V { ap_fifo {  { male_match_V_id_V_din fifo_data 1 1 }  { male_match_V_id_V_full_n fifo_status 0 1 }  { male_match_V_id_V_write fifo_update 1 1 } } }
	male_match_V_dest_V { ap_fifo {  { male_match_V_dest_V_din fifo_data 1 1 }  { male_match_V_dest_V_full_n fifo_status 0 1 }  { male_match_V_dest_V_write fifo_update 1 1 } } }
	female_match_V_data_V { ap_fifo {  { female_match_V_data_V_din fifo_data 1 8 }  { female_match_V_data_V_full_n fifo_status 0 1 }  { female_match_V_data_V_write fifo_update 1 1 } } }
	female_match_V_keep_V { ap_fifo {  { female_match_V_keep_V_din fifo_data 1 1 }  { female_match_V_keep_V_full_n fifo_status 0 1 }  { female_match_V_keep_V_write fifo_update 1 1 } } }
	female_match_V_strb_V { ap_fifo {  { female_match_V_strb_V_din fifo_data 1 1 }  { female_match_V_strb_V_full_n fifo_status 0 1 }  { female_match_V_strb_V_write fifo_update 1 1 } } }
	female_match_V_user_V { ap_fifo {  { female_match_V_user_V_din fifo_data 1 1 }  { female_match_V_user_V_full_n fifo_status 0 1 }  { female_match_V_user_V_write fifo_update 1 1 } } }
	female_match_V_last_V { ap_fifo {  { female_match_V_last_V_din fifo_data 1 1 }  { female_match_V_last_V_full_n fifo_status 0 1 }  { female_match_V_last_V_write fifo_update 1 1 } } }
	female_match_V_id_V { ap_fifo {  { female_match_V_id_V_din fifo_data 1 1 }  { female_match_V_id_V_full_n fifo_status 0 1 }  { female_match_V_id_V_write fifo_update 1 1 } } }
	female_match_V_dest_V { ap_fifo {  { female_match_V_dest_V_din fifo_data 1 1 }  { female_match_V_dest_V_full_n fifo_status 0 1 }  { female_match_V_dest_V_write fifo_update 1 1 } } }
	counter_area_out { ap_memory {  { counter_area_out_address0 mem_address 1 8 }  { counter_area_out_ce0 mem_ce 1 1 }  { counter_area_out_we0 mem_we 1 1 }  { counter_area_out_d0 mem_din 1 32 } } }
	mean_x_position { ap_memory {  { mean_x_position_address0 mem_address 1 8 }  { mean_x_position_ce0 mem_ce 1 1 }  { mean_x_position_we0 mem_we 1 1 }  { mean_x_position_d0 mem_din 1 32 } } }
	mean_y_position { ap_memory {  { mean_y_position_address0 mem_address 1 8 }  { mean_y_position_ce0 mem_ce 1 1 }  { mean_y_position_we0 mem_we 1 1 }  { mean_y_position_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	male_match_V_data_V { fifo_write 3 has_conditional }
	male_match_V_keep_V { fifo_write 3 has_conditional }
	male_match_V_strb_V { fifo_write 3 has_conditional }
	male_match_V_user_V { fifo_write 3 has_conditional }
	male_match_V_last_V { fifo_write 3 has_conditional }
	male_match_V_id_V { fifo_write 3 has_conditional }
	male_match_V_dest_V { fifo_write 3 has_conditional }
	female_match_V_data_V { fifo_write 3 has_conditional }
	female_match_V_keep_V { fifo_write 3 has_conditional }
	female_match_V_strb_V { fifo_write 3 has_conditional }
	female_match_V_user_V { fifo_write 3 has_conditional }
	female_match_V_last_V { fifo_write 3 has_conditional }
	female_match_V_id_V { fifo_write 3 has_conditional }
	female_match_V_dest_V { fifo_write 3 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
