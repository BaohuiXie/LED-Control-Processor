#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed May  4 03:23:06 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.10-p004_1 (64bit) 05/07/2020 20:02 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.10-p004_1 NR200413-0234/20_10-UB (database version 18.20.505) {superthreading v1.69}
#@(#)CDS: AAE 20.10-p005 (64bit) 05/07/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.10-p005_1 () Apr 14 2020 09:14:28 ( )
#@(#)CDS: SYNTECH 20.10-b004_1 () Mar 12 2020 22:18:21 ( )
#@(#)CDS: CPE v20.10-p006
#@(#)CDS: IQuantus/TQuantus 19.1.3-s155 (64bit) Sun Nov 3 18:26:52 PST 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
save_global Default.globals
set init_gnd_net GRND
set init_lef_file ../lib/GSCLib_3.0.lef
set init_verilog ../syn/results/decoder.mapped.v
set init_io_file scripts/decoder.ioc
set init_top_cell decoder
set init_pwr_net POWER
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CORE -r 0.831787152109 0.700002 6 6 6 6
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect POWR -type pgpin -pin POWR -instanceBasename *
globalNetConnect POWR -type tiehi -pin POWR -instanceBasename *
globalNetConnect GRND -type pgpin -pin GRND -instanceBasename *
globalNetConnect GRND -type tielo -pin GRND -instanceBasename *
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {POWR GRND} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 1.2 bottom 1.2 left 1.2 right 1.2} -spacing {top 1.2 bottom 1.2 left 1.2 right 1.2} -offset {top 1.2 bottom 1.2 left 1.2 right 1.2} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set init_pwr_net POWR
init_design
clearGlobalNets
globalNetConnect GRND -type pgpin -pin GRND -instanceBasename *
globalNetConnect GRND -type tielo -pin GRND -instanceBasename *
globalNetConnect POWR -type pgpin -pin POWR -instanceBasename *
globalNetConnect POWR -type tiehi -pin POWR -instanceBasename *
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CORE -r 0.65306122449 0.695578 8 8 8 8
uiSetTool select
getIoFlowFlag
fit
save_global Default.globals
set init_pwr_net POWR
init_design
