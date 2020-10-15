set moduleName Mat2AXIvideo
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
set C_modelName {Mat2AXIvideo}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_data_stream_V int 8 regular {fifo 0 volatile }  }
	{ AXI_video_strm_V_data_V int 8 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_keep_V int 1 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_strb_V int 1 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_user_V int 1 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_last_V int 1 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_id_V int 1 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_dest_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_keep_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_strb_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_data_stream_V_dout sc_in sc_lv 8 signal 0 } 
	{ img_data_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_data_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ AXI_video_strm_V_data_V_din sc_out sc_lv 8 signal 1 } 
	{ AXI_video_strm_V_data_V_full_n sc_in sc_logic 1 signal 1 } 
	{ AXI_video_strm_V_data_V_write sc_out sc_logic 1 signal 1 } 
	{ AXI_video_strm_V_keep_V_din sc_out sc_lv 1 signal 2 } 
	{ AXI_video_strm_V_keep_V_full_n sc_in sc_logic 1 signal 2 } 
	{ AXI_video_strm_V_keep_V_write sc_out sc_logic 1 signal 2 } 
	{ AXI_video_strm_V_strb_V_din sc_out sc_lv 1 signal 3 } 
	{ AXI_video_strm_V_strb_V_full_n sc_in sc_logic 1 signal 3 } 
	{ AXI_video_strm_V_strb_V_write sc_out sc_logic 1 signal 3 } 
	{ AXI_video_strm_V_user_V_din sc_out sc_lv 1 signal 4 } 
	{ AXI_video_strm_V_user_V_full_n sc_in sc_logic 1 signal 4 } 
	{ AXI_video_strm_V_user_V_write sc_out sc_logic 1 signal 4 } 
	{ AXI_video_strm_V_last_V_din sc_out sc_lv 1 signal 5 } 
	{ AXI_video_strm_V_last_V_full_n sc_in sc_logic 1 signal 5 } 
	{ AXI_video_strm_V_last_V_write sc_out sc_logic 1 signal 5 } 
	{ AXI_video_strm_V_id_V_din sc_out sc_lv 1 signal 6 } 
	{ AXI_video_strm_V_id_V_full_n sc_in sc_logic 1 signal 6 } 
	{ AXI_video_strm_V_id_V_write sc_out sc_logic 1 signal 6 } 
	{ AXI_video_strm_V_dest_V_din sc_out sc_lv 1 signal 7 } 
	{ AXI_video_strm_V_dest_V_full_n sc_in sc_logic 1 signal 7 } 
	{ AXI_video_strm_V_dest_V_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "dout" }} , 
 	{ "name": "img_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "img_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "read" }} , 
 	{ "name": "AXI_video_strm_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "img_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
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
					{"Name" : "AXI_video_strm_V_dest_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "263681", "Max" : "263681"}
	, {"Name" : "Interval", "Min" : "263681", "Max" : "263681"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_data_stream_V { ap_fifo {  { img_data_stream_V_dout fifo_data 0 8 }  { img_data_stream_V_empty_n fifo_status 0 1 }  { img_data_stream_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_data_V { ap_fifo {  { AXI_video_strm_V_data_V_din fifo_data 1 8 }  { AXI_video_strm_V_data_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_data_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_keep_V { ap_fifo {  { AXI_video_strm_V_keep_V_din fifo_data 1 1 }  { AXI_video_strm_V_keep_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_keep_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_strb_V { ap_fifo {  { AXI_video_strm_V_strb_V_din fifo_data 1 1 }  { AXI_video_strm_V_strb_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_strb_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_user_V { ap_fifo {  { AXI_video_strm_V_user_V_din fifo_data 1 1 }  { AXI_video_strm_V_user_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_user_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_last_V { ap_fifo {  { AXI_video_strm_V_last_V_din fifo_data 1 1 }  { AXI_video_strm_V_last_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_last_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_id_V { ap_fifo {  { AXI_video_strm_V_id_V_din fifo_data 1 1 }  { AXI_video_strm_V_id_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_id_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_dest_V { ap_fifo {  { AXI_video_strm_V_dest_V_din fifo_data 1 1 }  { AXI_video_strm_V_dest_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_dest_V_write fifo_update 1 1 } } }
}
