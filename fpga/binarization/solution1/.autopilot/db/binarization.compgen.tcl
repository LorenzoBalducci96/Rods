# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 1 \
    name INPUT_STREAM_V_data_V \
    reset_level 0 \
    sync_rst true \
    corename {INPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { INPUT_STREAM_TDATA { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'INPUT_STREAM_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 2 \
    name INPUT_STREAM_V_keep_V \
    reset_level 0 \
    sync_rst true \
    corename {INPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { INPUT_STREAM_TKEEP { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'INPUT_STREAM_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 3 \
    name INPUT_STREAM_V_strb_V \
    reset_level 0 \
    sync_rst true \
    corename {INPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { INPUT_STREAM_TSTRB { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'INPUT_STREAM_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 4 \
    name INPUT_STREAM_V_user_V \
    reset_level 0 \
    sync_rst true \
    corename {INPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { INPUT_STREAM_TUSER { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'INPUT_STREAM_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 5 \
    name INPUT_STREAM_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {INPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { INPUT_STREAM_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'INPUT_STREAM_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 6 \
    name INPUT_STREAM_V_id_V \
    reset_level 0 \
    sync_rst true \
    corename {INPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { INPUT_STREAM_TID { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'INPUT_STREAM_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 7 \
    name INPUT_STREAM_V_dest_V \
    reset_level 0 \
    sync_rst true \
    corename {INPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { INPUT_STREAM_TVALID { I 1 bit } INPUT_STREAM_TREADY { O 1 bit } INPUT_STREAM_TDEST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'INPUT_STREAM_V_dest_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 11 \
    name OUTPUT_STREAM_V_data_V \
    reset_level 0 \
    sync_rst true \
    corename {OUTPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { OUTPUT_STREAM_TDATA { O 8 vector } OUTPUT_STREAM_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUTPUT_STREAM_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 12 \
    name OUTPUT_STREAM_V_keep_V \
    reset_level 0 \
    sync_rst true \
    corename {OUTPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { OUTPUT_STREAM_TKEEP { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUTPUT_STREAM_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 13 \
    name OUTPUT_STREAM_V_strb_V \
    reset_level 0 \
    sync_rst true \
    corename {OUTPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { OUTPUT_STREAM_TSTRB { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUTPUT_STREAM_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 14 \
    name OUTPUT_STREAM_V_user_V \
    reset_level 0 \
    sync_rst true \
    corename {OUTPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { OUTPUT_STREAM_TUSER { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUTPUT_STREAM_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 15 \
    name OUTPUT_STREAM_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {OUTPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { OUTPUT_STREAM_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUTPUT_STREAM_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 16 \
    name OUTPUT_STREAM_V_id_V \
    reset_level 0 \
    sync_rst true \
    corename {OUTPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { OUTPUT_STREAM_TID { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUTPUT_STREAM_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 17 \
    name OUTPUT_STREAM_V_dest_V \
    reset_level 0 \
    sync_rst true \
    corename {OUTPUT_STREAM} \
    metadata {  } \
    op interface \
    ports { OUTPUT_STREAM_TVALID { O 1 bit } OUTPUT_STREAM_TDEST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUTPUT_STREAM_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name threshold \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_threshold \
    op interface \
    ports { threshold { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name update_threshold_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_update_threshold_V \
    op interface \
    ports { update_threshold_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name inverted_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_inverted_V \
    op interface \
    ports { inverted_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 0 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


