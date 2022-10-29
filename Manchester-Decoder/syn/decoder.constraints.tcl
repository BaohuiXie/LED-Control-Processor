################################################################################
# Filename: decoder.constraints.tcl
# Author: XIE BAOHUI
# Email: bxieaf@connect.ust.hk
# Affiliation: Hong Kong University of Science and Technology
# -------------------------------------------------------------------------------
# This is the template constraint script for ELEC5160/EESM5020.
################################################################################

################################################################################
# Timing constraint
################################################################################
# Critical path constraint: set the desired clock frequency
create_clock -period 100.0 [get_ports osc]

# Input delay and output delay
set_input_delay -max 0.0 -clock osc \
  [remove_from_collection [all_inputs] [get_ports osc]]
set_output_delay -max 50.0 -clock osc [all_outputs]
set_input_delay -min 0.0 -clock osc \
  [remove_from_collection [all_inputs] [get_ports osc]]
set_output_delay -min 1.0 -clock osc [all_outputs]
################################################################################
# Enviornement attribute constraint
################################################################################
# Load on the output ports
set_load 1 [all_outputs]

# Input transition time on all inputs except clock
set_input_transition 0.1 \
  [remove_from_collection [all_inputs] [get_ports osc]]