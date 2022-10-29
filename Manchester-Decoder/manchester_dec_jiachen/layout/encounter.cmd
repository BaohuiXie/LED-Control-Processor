#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Mon Apr 18 12:40:00 2022                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-s338_1 (64bit) 10/01/2009 19:08 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-s225 NR090922-1020/USR61-UB (database version 2.30, 85.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.13-s302_1 (64bit) 09/16/2009 00:09:35 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-s251_1 (64bit) Sep 16 2009 13:51:57 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.13-s001

encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /afs/ee.ust.hk/staff/ee/jrenal/Implementation_8/manchester_dec/layout/manchester_dec.enc.dat manchester_dec
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
setDrawView place
verifyGeometry
verifyConnectivity -type all -error 1000 -warning 50
selectWire 5.8800 5.8800 7.0800 54.8400 2 POWR
streamOut results/manchester_dec.gds -mapFile streamOut.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.5
defOut -floorplan -netlist -routing results/manchester_dec.def
set dbgLefDefOutVersion 5.5
saveNetlist results/manchester_dec.v
