###################################################################

# Created by write_sdc on Wed Apr 13 10:20:42 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_load -pin_load 1 [get_ports recovered_data]
set_load -pin_load 1 [get_ports balanced_clk]
create_clock -name VCLK  -period 5  -waveform {0 2.5}
group_path -name FEEDTHROUGH  -from [list [get_ports manchester_data] [get_ports osc] [get_ports rst_n]]  -to [list [get_ports recovered_data] [get_ports balanced_clk]]
group_path -name REGIN  -from [list [get_ports manchester_data] [get_ports osc] [get_ports rst_n]]
group_path -name REGOUT  -to [list [get_ports recovered_data] [get_ports balanced_clk]]
set_input_delay -clock VCLK  1  [get_ports manchester_data]
set_input_delay -clock VCLK  1  [get_ports osc]
set_input_delay -clock VCLK  1  [get_ports rst_n]
set_output_delay -clock VCLK  1  [get_ports recovered_data]
set_output_delay -clock VCLK  1  [get_ports balanced_clk]
set_input_transition -max 0.1  [get_ports manchester_data]
set_input_transition -min 0.1  [get_ports manchester_data]
set_input_transition -max 0.1  [get_ports osc]
set_input_transition -min 0.1  [get_ports osc]
set_input_transition -max 0.1  [get_ports rst_n]
set_input_transition -min 0.1  [get_ports rst_n]
