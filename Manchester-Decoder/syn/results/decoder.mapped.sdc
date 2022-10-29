###################################################################

# Created by write_sdc on Fri May 6 13:28:28 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_load -pin_load 1 [get_ports recoveredData]
set_load -pin_load 1 [get_ports recoveredCLK]
set_load -pin_load 1 [get_ports balancedCLK]
create_clock [get_ports osc]  -period 100  -waveform {0 50}
group_path -name FEEDTHROUGH  -from [list [get_ports ManchesterCode] [get_ports {REF[3]}] [get_ports {REF[2]}] [get_ports {REF[1]}] [get_ports {REF[0]}] [get_ports globalReset]]  -to [list [get_ports recoveredData] [get_ports recoveredCLK] [get_ports balancedCLK]]
group_path -name REGIN  -from [list [get_ports ManchesterCode] [get_ports {REF[3]}] [get_ports {REF[2]}] [get_ports {REF[1]}] [get_ports {REF[0]}] [get_ports globalReset]]
group_path -name REGOUT  -to [list [get_ports recoveredData] [get_ports recoveredCLK] [get_ports balancedCLK]]
set_input_delay -clock osc  0  [get_ports ManchesterCode]
set_input_delay -clock osc  0  [get_ports {REF[3]}]
set_input_delay -clock osc  0  [get_ports {REF[2]}]
set_input_delay -clock osc  0  [get_ports {REF[1]}]
set_input_delay -clock osc  0  [get_ports {REF[0]}]
set_input_delay -clock osc  0  [get_ports globalReset]
set_output_delay -clock osc  -max 50  [get_ports recoveredData]
set_output_delay -clock osc  -min 1  [get_ports recoveredData]
set_output_delay -clock osc  -max 50  [get_ports recoveredCLK]
set_output_delay -clock osc  -min 1  [get_ports recoveredCLK]
set_output_delay -clock osc  -max 50  [get_ports balancedCLK]
set_output_delay -clock osc  -min 1  [get_ports balancedCLK]
set_input_transition -max 0.1  [get_ports ManchesterCode]
set_input_transition -min 0.1  [get_ports ManchesterCode]
set_input_transition -max 0.1  [get_ports {REF[3]}]
set_input_transition -min 0.1  [get_ports {REF[3]}]
set_input_transition -max 0.1  [get_ports {REF[2]}]
set_input_transition -min 0.1  [get_ports {REF[2]}]
set_input_transition -max 0.1  [get_ports {REF[1]}]
set_input_transition -min 0.1  [get_ports {REF[1]}]
set_input_transition -max 0.1  [get_ports {REF[0]}]
set_input_transition -min 0.1  [get_ports {REF[0]}]
set_input_transition -max 0.1  [get_ports globalReset]
set_input_transition -min 0.1  [get_ports globalReset]
