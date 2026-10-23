# This is an automatically generated file used by checkout.tcl
# to restore project-specific options.

proc set_project_properties_post_create_project {proj_name} {
    set project_obj [get_projects $proj_name]

    set_property "part" "xck26-sfvc784-2LV-c" $project_obj

    set board_part {xilinx.com:kv260_som:part0:2.0}
    if {$board_part ne ""} {
        set_property "board_part" $board_part $project_obj
    }

    set board_connections {som240_1_connector xilinx.com:kv260_carrier:som240_1_connector:2.0}
    if {$board_connections ne ""} {
        set_property "board_connections" $board_connections $project_obj
    }

    set_property "default_lib" "xil_defaultlib" $project_obj
    set_property "simulator_language" "Mixed" $project_obj
    set_property "target_language" "Verilog" $project_obj
}

proc set_project_properties_pre_add_repo {proj_name} {
    set project_obj [get_projects $proj_name]
    # default nothing
}

proc set_project_properties_post_create_runs {proj_name} {
    set project_obj [get_projects $proj_name]
    #Custom directives for synthesis and implementation
}
