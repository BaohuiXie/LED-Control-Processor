create_library_set -name default_libset_max\
   -timing\
    [list ../../../../dept/public/eesm6980/digital/GSCLib3/timing/GSCLib_3.0.lib]
create_library_set -name default_libset_min\
   -timing\
    [list ../../../../dept/public/eesm6980/digital/GSCLib3/timing/GSCLib_3.0.lib]
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_rc_corner -name default_rc_corner_worst\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name default_delay_corner_max\
   -library_set default_libset_max\
   -rc_corner default_rc_corner_worst
create_delay_corner -name default_delay_corner_ocv\
   -rc_corner default_rc_corner_worst\
   -early_library_set default_libset_min\
   -late_library_set default_libset_max
create_delay_corner -name default_delay_corner_min\
   -library_set default_libset_min\
   -rc_corner default_rc_corner_worst
create_constraint_mode -name default_constraint_mode\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name default_analysis_view_setup -constraint_mode default_constraint_mode -delay_corner default_delay_corner_max
create_analysis_view -name default_analysis_view_hold -constraint_mode default_constraint_mode -delay_corner default_delay_corner_min
set_analysis_view -setup [list default_analysis_view_setup] -hold [list default_analysis_view_setup]
catch {set_interactive_constraint_mode [list default_constraint_mode] } 
