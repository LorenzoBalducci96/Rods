# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Adapter definition:
set corename INPUT_STREAM
set opts {
    {
        id 3
        name AXI_video_strm_V_data_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 8
    }
    {
        id 4
        name AXI_video_strm_V_keep_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 1
    }
    {
        id 5
        name AXI_video_strm_V_strb_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 1
    }
    {
        id 6
        name AXI_video_strm_V_user_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 1
    }
    {
        id 7
        name AXI_video_strm_V_last_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 1
    }
    {
        id 8
        name AXI_video_strm_V_id_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 1
    }
    {
        id 9
        name AXI_video_strm_V_dest_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 1
    }
}
set portmap { }
set metadata { -bus_bundle INPUT_STREAM}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axis_gen] == "::AESL_LIB_XILADAPTER::axis_gen"} {
eval "::AESL_LIB_XILADAPTER::axis_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axis_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name img_rows_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_rows_V \
    op interface \
    ports { img_rows_V_dout { I 11 vector } img_rows_V_empty_n { I 1 bit } img_rows_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name img_cols_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_cols_V \
    op interface \
    ports { img_cols_V_dout { I 11 vector } img_cols_V_empty_n { I 1 bit } img_cols_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name img_data_stream_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_data_stream_V \
    op interface \
    ports { img_data_stream_V_din { O 8 vector } img_data_stream_V_full_n { I 1 bit } img_data_stream_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name img_rows_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_rows_V_out \
    op interface \
    ports { img_rows_V_out_din { O 11 vector } img_rows_V_out_full_n { I 1 bit } img_rows_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name img_cols_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_cols_V_out \
    op interface \
    ports { img_cols_V_out_din { O 11 vector } img_cols_V_out_full_n { I 1 bit } img_cols_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


