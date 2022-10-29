###################################################################

# Created by write_sdc on Fri Apr 29 02:43:58 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_load -pin_load 1 [get_ports out]
create_clock [get_ports clk]  -period 5  -waveform {0 2.5}
group_path -name FEEDTHROUGH  -from [list [get_ports balanceCLK] [get_ports {REF4Bits[3]}] [get_ports {REF4Bits[2]}] [get_ports {REF4Bits[1]}] [get_ports {REF4Bits[0]}] [get_ports reData] [get_ports globalReset]]  -to [get_ports out]
group_path -name REGIN  -from [list [get_ports balanceCLK] [get_ports {REF4Bits[3]}] [get_ports {REF4Bits[2]}] [get_ports {REF4Bits[1]}] [get_ports {REF4Bits[0]}] [get_ports reData] [get_ports globalReset]]
group_path -name REGOUT  -to [get_ports out]
set_input_delay -clock clk  1  [get_ports balanceCLK]
set_input_delay -clock clk  1  [get_ports {REF4Bits[3]}]
set_input_delay -clock clk  1  [get_ports {REF4Bits[2]}]
set_input_delay -clock clk  1  [get_ports {REF4Bits[1]}]
set_input_delay -clock clk  1  [get_ports {REF4Bits[0]}]
set_input_delay -clock clk  1  [get_ports reData]
set_input_delay -clock clk  1  [get_ports globalReset]
set_output_delay -clock clk  1  [get_ports out]
set_input_transition -max 0.1  [get_ports balanceCLK]
set_input_transition -min 0.1  [get_ports balanceCLK]
set_input_transition -max 0.1  [get_ports {REF4Bits[3]}]
set_input_transition -min 0.1  [get_ports {REF4Bits[3]}]
set_input_transition -max 0.1  [get_ports {REF4Bits[2]}]
set_input_transition -min 0.1  [get_ports {REF4Bits[2]}]
set_input_transition -max 0.1  [get_ports {REF4Bits[1]}]
set_input_transition -min 0.1  [get_ports {REF4Bits[1]}]
set_input_transition -max 0.1  [get_ports {REF4Bits[0]}]
set_input_transition -min 0.1  [get_ports {REF4Bits[0]}]
set_input_transition -max 0.1  [get_ports reData]
set_input_transition -min 0.1  [get_ports reData]
set_input_transition -max 0.1  [get_ports globalReset]
set_input_transition -min 0.1  [get_ports globalReset]
