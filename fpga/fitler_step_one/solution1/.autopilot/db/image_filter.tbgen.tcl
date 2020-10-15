set moduleName image_filter
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {image_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V_data_V int 8 regular {fifo 0 volatile }  }
	{ input_V_keep_V int 1 regular {fifo 0 volatile }  }
	{ input_V_strb_V int 1 regular {fifo 0 volatile }  }
	{ input_V_user_V int 1 regular {fifo 0 volatile }  }
	{ input_V_last_V int 1 regular {fifo 0 volatile }  }
	{ input_V_id_V int 1 regular {fifo 0 volatile }  }
	{ input_V_dest_V int 1 regular {fifo 0 volatile }  }
	{ output_V_data_V int 8 regular {fifo 1 volatile }  }
	{ output_V_keep_V int 1 regular {fifo 1 volatile }  }
	{ output_V_strb_V int 1 regular {fifo 1 volatile }  }
	{ output_V_user_V int 1 regular {fifo 1 volatile }  }
	{ output_V_last_V int 1 regular {fifo 1 volatile }  }
	{ output_V_id_V int 1 regular {fifo 1 volatile }  }
	{ output_V_dest_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_keep_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_strb_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_keep_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_strb_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ input_V_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ input_V_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_V_data_V_read sc_out sc_logic 1 signal 0 } 
	{ input_V_keep_V_dout sc_in sc_lv 1 signal 1 } 
	{ input_V_keep_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ input_V_keep_V_read sc_out sc_logic 1 signal 1 } 
	{ input_V_strb_V_dout sc_in sc_lv 1 signal 2 } 
	{ input_V_strb_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ input_V_strb_V_read sc_out sc_logic 1 signal 2 } 
	{ input_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ input_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ input_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ input_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ input_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ input_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ input_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ input_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ input_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ input_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ input_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ input_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ output_V_data_V_din sc_out sc_lv 8 signal 7 } 
	{ output_V_data_V_full_n sc_in sc_logic 1 signal 7 } 
	{ output_V_data_V_write sc_out sc_logic 1 signal 7 } 
	{ output_V_keep_V_din sc_out sc_lv 1 signal 8 } 
	{ output_V_keep_V_full_n sc_in sc_logic 1 signal 8 } 
	{ output_V_keep_V_write sc_out sc_logic 1 signal 8 } 
	{ output_V_strb_V_din sc_out sc_lv 1 signal 9 } 
	{ output_V_strb_V_full_n sc_in sc_logic 1 signal 9 } 
	{ output_V_strb_V_write sc_out sc_logic 1 signal 9 } 
	{ output_V_user_V_din sc_out sc_lv 1 signal 10 } 
	{ output_V_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ output_V_user_V_write sc_out sc_logic 1 signal 10 } 
	{ output_V_last_V_din sc_out sc_lv 1 signal 11 } 
	{ output_V_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ output_V_last_V_write sc_out sc_logic 1 signal 11 } 
	{ output_V_id_V_din sc_out sc_lv 1 signal 12 } 
	{ output_V_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ output_V_id_V_write sc_out sc_logic 1 signal 12 } 
	{ output_V_dest_V_din sc_out sc_lv 1 signal 13 } 
	{ output_V_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ output_V_dest_V_write sc_out sc_logic 1 signal 13 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V_data_V", "role": "dout" }} , 
 	{ "name": "input_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_data_V", "role": "empty_n" }} , 
 	{ "name": "input_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_data_V", "role": "read" }} , 
 	{ "name": "input_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_keep_V", "role": "dout" }} , 
 	{ "name": "input_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "input_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_keep_V", "role": "read" }} , 
 	{ "name": "input_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_strb_V", "role": "dout" }} , 
 	{ "name": "input_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "input_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_strb_V", "role": "read" }} , 
 	{ "name": "input_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_user_V", "role": "dout" }} , 
 	{ "name": "input_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_user_V", "role": "empty_n" }} , 
 	{ "name": "input_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_user_V", "role": "read" }} , 
 	{ "name": "input_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_last_V", "role": "dout" }} , 
 	{ "name": "input_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_last_V", "role": "empty_n" }} , 
 	{ "name": "input_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_last_V", "role": "read" }} , 
 	{ "name": "input_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_id_V", "role": "dout" }} , 
 	{ "name": "input_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_id_V", "role": "empty_n" }} , 
 	{ "name": "input_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_id_V", "role": "read" }} , 
 	{ "name": "input_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_dest_V", "role": "dout" }} , 
 	{ "name": "input_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "input_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_dest_V", "role": "read" }} , 
 	{ "name": "output_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V_data_V", "role": "din" }} , 
 	{ "name": "output_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_data_V", "role": "full_n" }} , 
 	{ "name": "output_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_data_V", "role": "write" }} , 
 	{ "name": "output_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_keep_V", "role": "din" }} , 
 	{ "name": "output_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_keep_V", "role": "full_n" }} , 
 	{ "name": "output_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_keep_V", "role": "write" }} , 
 	{ "name": "output_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_strb_V", "role": "din" }} , 
 	{ "name": "output_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_strb_V", "role": "full_n" }} , 
 	{ "name": "output_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_strb_V", "role": "write" }} , 
 	{ "name": "output_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_user_V", "role": "din" }} , 
 	{ "name": "output_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_user_V", "role": "full_n" }} , 
 	{ "name": "output_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_user_V", "role": "write" }} , 
 	{ "name": "output_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_last_V", "role": "din" }} , 
 	{ "name": "output_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_last_V", "role": "full_n" }} , 
 	{ "name": "output_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_last_V", "role": "write" }} , 
 	{ "name": "output_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_id_V", "role": "din" }} , 
 	{ "name": "output_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_id_V", "role": "full_n" }} , 
 	{ "name": "output_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_id_V", "role": "write" }} , 
 	{ "name": "output_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_dest_V", "role": "din" }} , 
 	{ "name": "output_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_dest_V", "role": "full_n" }} , 
 	{ "name": "output_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_dest_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "49", "50", "51", "52", "53", "54", "55", "56", "57"],
		"CDFG" : "image_filter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "263689", "EstimateLatencyMax" : "271962",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "AXIvideo2Mat_U0", "ReadyCount" : "AXIvideo2Mat_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "49", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "input_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "input_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "input_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "input_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "input_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "input_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "input_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "output_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "output_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "output_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "output_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "output_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "output_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "output_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_input_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "img_input_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_input_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "img_input_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "265219",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "img_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "img_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "img_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "img_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "img_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "GaussianBlur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182", "EstimateLatencyMax" : "271958",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_Gaussiazec_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_fu_38"}],
		"Port" : [
			{"Name" : "p_src_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "p_src_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "p_src_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "52",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Filter2D_fu_38", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "55",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Filter2D_fu_38", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38", "Parent" : "3", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "Filter2D",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "181", "EstimateLatencyMax" : "271957",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_259", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_320", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_7_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_354", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_354", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_7_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_259", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_320", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_7_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_375", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_375", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_7_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_262", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_323", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_8_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_352", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_352", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_8_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_262", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_323", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_8_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_373", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_373", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_8_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_264", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_326", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_9_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_350", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_350", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_9_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_264", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_326", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_9_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_372", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_372", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_9_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_266", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_329", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_10_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_348", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_348", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_10_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_266", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_329", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_10_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_371", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_371", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_10_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_268", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_332", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_11_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_346", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_346", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_11_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_268", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_332", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_11_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_370", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_370", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_11_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_270", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_12_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_344", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_344", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_12_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_270", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_12_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_369", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_369", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_12_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_272", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_338", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_13_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_342", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_342", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_13_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_272", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_338", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_13_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_368", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_368", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_13_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_342", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_342", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_13_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_272", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_338", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_13_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_342", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_342", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_13_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_368", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_368", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_13_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_344", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_344", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_12_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_270", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_12_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_344", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_344", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_12_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_369", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_369", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_12_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_346", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_346", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_11_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_268", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_332", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_11_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_346", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_346", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_11_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_370", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_370", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_11_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_348", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_348", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_10_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_266", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_329", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_10_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_348", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_348", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_10_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_371", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_371", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_10_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_350", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_350", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_9_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_264", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_326", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_9_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_350", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_350", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_9_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_372", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_372", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_9_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_352", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_352", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_8_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_262", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_323", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_8_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_352", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_352", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_8_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_373", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_373", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_8_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_354", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_354", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_7_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_259", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_320", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_7_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_354", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_354", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_7_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_375", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_375", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_7_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_368", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_368", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_13_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_272", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_338", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_13_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_368", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_368", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_13_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_342", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_342", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_13_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_369", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_369", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_12_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_270", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_12_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_369", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_369", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_12_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_344", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_344", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_12_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_370", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_370", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_11_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_268", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_332", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_11_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_370", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_370", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_11_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_346", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_346", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_11_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_371", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_371", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_10_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_266", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_329", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_10_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_371", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_371", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_10_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_348", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_348", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_10_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_372", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_372", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_9_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_264", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_326", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_9_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_372", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_372", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_9_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_350", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_350", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_9_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_373", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_373", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_8_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_262", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_323", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_8_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_373", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_373", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_8_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_352", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_352", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_8_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_375", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_375", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_7_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_259", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_320", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_7_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_375", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_375", "FromFinalSV" : "3", "FromAddress" : "k_buf_0_val_7_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_354", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_354", "ToFinalSV" : "3", "ToAddress" : "k_buf_0_val_7_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(C:/Xilinx/Vivado/2018.3/common/technology/autopilot/hls/hls_video_imgproc.h:446:1)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "p_src_rows_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_cols_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.k_buf_0_val_7_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.k_buf_0_val_8_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.k_buf_0_val_9_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.k_buf_0_val_10_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.k_buf_0_val_11_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.k_buf_0_val_12_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.k_buf_0_val_13_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U15", "Parent" : "4"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U16", "Parent" : "4"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U17", "Parent" : "4"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U18", "Parent" : "4"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U19", "Parent" : "4"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U20", "Parent" : "4"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U21", "Parent" : "4"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U22", "Parent" : "4"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U23", "Parent" : "4"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U24", "Parent" : "4"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U25", "Parent" : "4"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U26", "Parent" : "4"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U27", "Parent" : "4"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mux_ibs_U28", "Parent" : "4"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_jbC_U29", "Parent" : "4"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_kbM_U30", "Parent" : "4"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_lbW_U31", "Parent" : "4"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_mb6_U32", "Parent" : "4"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_lbW_U33", "Parent" : "4"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_mb6_U34", "Parent" : "4"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_ncg_U35", "Parent" : "4"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_ocq_U36", "Parent" : "4"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mul_pcA_U37", "Parent" : "4"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_ncg_U38", "Parent" : "4"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mul_pcA_U39", "Parent" : "4"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_mb6_U40", "Parent" : "4"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_qcK_U41", "Parent" : "4"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_mac_jbC_U42", "Parent" : "4"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_rcU_U43", "Parent" : "4"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_sc4_U44", "Parent" : "4"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_tde_U45", "Parent" : "4"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_udo_U46", "Parent" : "4"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_vdy_U47", "Parent" : "4"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_wdI_U48", "Parent" : "4"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_xdS_U49", "Parent" : "4"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_xdS_U50", "Parent" : "4"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_fu_38.image_filter_ama_yd2_U51", "Parent" : "4"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "263681", "EstimateLatencyMax" : "263681",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_Mat2AXIAem_U",
		"Port" : [
			{"Name" : "img_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "img_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_dest_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_input_rows_V_c_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_input_cols_V_c_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_input_data_strea_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_input_rows_V_c6_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_input_cols_V_c7_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtered_data_stream_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Gaussiazec_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Mat2AXIAem_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	image_filter {
		input_V_data_V {Type I LastRead 7 FirstWrite -1}
		input_V_keep_V {Type I LastRead 7 FirstWrite -1}
		input_V_strb_V {Type I LastRead 7 FirstWrite -1}
		input_V_user_V {Type I LastRead 7 FirstWrite -1}
		input_V_last_V {Type I LastRead 7 FirstWrite -1}
		input_V_id_V {Type I LastRead 7 FirstWrite -1}
		input_V_dest_V {Type I LastRead 7 FirstWrite -1}
		output_V_data_V {Type O LastRead -1 FirstWrite 3}
		output_V_keep_V {Type O LastRead -1 FirstWrite 3}
		output_V_strb_V {Type O LastRead -1 FirstWrite 3}
		output_V_user_V {Type O LastRead -1 FirstWrite 3}
		output_V_last_V {Type O LastRead -1 FirstWrite 3}
		output_V_id_V {Type O LastRead -1 FirstWrite 3}
		output_V_dest_V {Type O LastRead -1 FirstWrite 3}}
	Block_proc {
		img_input_rows_V_out {Type O LastRead -1 FirstWrite 0}
		img_input_cols_V_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2Mat {
		AXI_video_strm_V_data_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 7 FirstWrite -1}
		img_rows_V {Type I LastRead 0 FirstWrite -1}
		img_cols_V {Type I LastRead 0 FirstWrite -1}
		img_data_stream_V {Type O LastRead -1 FirstWrite 5}
		img_rows_V_out {Type O LastRead -1 FirstWrite 0}
		img_cols_V_out {Type O LastRead -1 FirstWrite 0}}
	GaussianBlur {
		p_src_rows_V {Type I LastRead 0 FirstWrite -1}
		p_src_cols_V {Type I LastRead 0 FirstWrite -1}
		p_src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 6}}
	Filter2D {
		p_src_rows_V_read {Type I LastRead 0 FirstWrite -1}
		p_src_cols_V_read {Type I LastRead 0 FirstWrite -1}
		p_src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 6}}
	Mat2AXIvideo {
		img_data_stream_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "263689", "Max" : "271962"}
	, {"Name" : "Interval", "Min" : "263682", "Max" : "271959"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_V_data_V { ap_fifo {  { input_V_data_V_dout fifo_data 0 8 }  { input_V_data_V_empty_n fifo_status 0 1 }  { input_V_data_V_read fifo_update 1 1 } } }
	input_V_keep_V { ap_fifo {  { input_V_keep_V_dout fifo_data 0 1 }  { input_V_keep_V_empty_n fifo_status 0 1 }  { input_V_keep_V_read fifo_update 1 1 } } }
	input_V_strb_V { ap_fifo {  { input_V_strb_V_dout fifo_data 0 1 }  { input_V_strb_V_empty_n fifo_status 0 1 }  { input_V_strb_V_read fifo_update 1 1 } } }
	input_V_user_V { ap_fifo {  { input_V_user_V_dout fifo_data 0 1 }  { input_V_user_V_empty_n fifo_status 0 1 }  { input_V_user_V_read fifo_update 1 1 } } }
	input_V_last_V { ap_fifo {  { input_V_last_V_dout fifo_data 0 1 }  { input_V_last_V_empty_n fifo_status 0 1 }  { input_V_last_V_read fifo_update 1 1 } } }
	input_V_id_V { ap_fifo {  { input_V_id_V_dout fifo_data 0 1 }  { input_V_id_V_empty_n fifo_status 0 1 }  { input_V_id_V_read fifo_update 1 1 } } }
	input_V_dest_V { ap_fifo {  { input_V_dest_V_dout fifo_data 0 1 }  { input_V_dest_V_empty_n fifo_status 0 1 }  { input_V_dest_V_read fifo_update 1 1 } } }
	output_V_data_V { ap_fifo {  { output_V_data_V_din fifo_data 1 8 }  { output_V_data_V_full_n fifo_status 0 1 }  { output_V_data_V_write fifo_update 1 1 } } }
	output_V_keep_V { ap_fifo {  { output_V_keep_V_din fifo_data 1 1 }  { output_V_keep_V_full_n fifo_status 0 1 }  { output_V_keep_V_write fifo_update 1 1 } } }
	output_V_strb_V { ap_fifo {  { output_V_strb_V_din fifo_data 1 1 }  { output_V_strb_V_full_n fifo_status 0 1 }  { output_V_strb_V_write fifo_update 1 1 } } }
	output_V_user_V { ap_fifo {  { output_V_user_V_din fifo_data 1 1 }  { output_V_user_V_full_n fifo_status 0 1 }  { output_V_user_V_write fifo_update 1 1 } } }
	output_V_last_V { ap_fifo {  { output_V_last_V_din fifo_data 1 1 }  { output_V_last_V_full_n fifo_status 0 1 }  { output_V_last_V_write fifo_update 1 1 } } }
	output_V_id_V { ap_fifo {  { output_V_id_V_din fifo_data 1 1 }  { output_V_id_V_full_n fifo_status 0 1 }  { output_V_id_V_write fifo_update 1 1 } } }
	output_V_dest_V { ap_fifo {  { output_V_dest_V_din fifo_data 1 1 }  { output_V_dest_V_full_n fifo_status 0 1 }  { output_V_dest_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	input_V_data_V { fifo_read 1 no_conditional }
	input_V_keep_V { fifo_read 1 no_conditional }
	input_V_strb_V { fifo_read 1 no_conditional }
	input_V_user_V { fifo_read 1 no_conditional }
	input_V_last_V { fifo_read 1 no_conditional }
	input_V_id_V { fifo_read 1 no_conditional }
	input_V_dest_V { fifo_read 1 no_conditional }
	output_V_data_V { fifo_write 1 no_conditional }
	output_V_keep_V { fifo_write 1 no_conditional }
	output_V_strb_V { fifo_write 1 no_conditional }
	output_V_user_V { fifo_write 1 no_conditional }
	output_V_last_V { fifo_write 1 no_conditional }
	output_V_id_V { fifo_write 1 no_conditional }
	output_V_dest_V { fifo_write 1 no_conditional }
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
