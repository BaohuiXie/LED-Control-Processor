################################################################################
# Filename: manchester_dec.constraints.tcl
# Author: Ren Jiachen
# Email: jrenal@connect.ust.hk
# Affiliation: Hong Kong University of Science and Technology
# -------------------------------------------------------------------------------

################################################################################
# Timing constraint
################################################################################
# Critical path constraint: set the desired clock frequency
create_clock -period 5 -name VCLK

# Input delay and output delay
set_input_delay -max 1.0 -clock VCLK \
  [remove_from_collection [all_inputs] [get_ports VCLK]]
set_output_delay -max 1.0 -clock VCLK [all_outputs]
set_input_delay -min 1.0 -clock VCLK \
  [remove_from_collection [all_inputs] [get_ports VCLK]]
set_output_delay -min 1.0 -clock VCLK [all_outputs]

################################################################################
# Enviornement attribute constraint
################################################################################
# Load on the output ports
set_load 1 [all_outputs]

# Input transition time on all inputs except clock
set_input_transition 0.1 \
  [remove_from_collection [all_inputs] VCLK]
