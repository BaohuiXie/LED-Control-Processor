######################################################
#                                                    #
#  Cadence Design Systems                            #
#  FirstEncounter Floor Plan Information             #
#                                                    #
######################################################
# Created by First Encounter v08.10-s338_1 on Thu Apr 14 16:00:17 2022

Version: 8

Head Box: 0.0000 0.0000 125.9000 60.1600
IO Box: 0.0000 0.0000 125.9000 60.1600
Core Box: 10.5600 10.5600 115.9000 50.1600
UseStdUtil: false

######################################################
#  DesignRoutingHalo: <space> <bottomLayerName> <topLayerName>
######################################################

######################################################
#  Core Rows Parameters:                             #
######################################################
Row Spacing = 0.000000
Row SpacingType = 2
Row Flip = 2
Core Row Site: CORE 

##############################################################################
#  DefRow: <name> <site> <x> <y> <orient> <num_x> <num_y> <step_x> <step_y>  #
##############################################################################
DefRow: ROW_0 CORE 10.5600 10.5600 FS 159 1 0.6600 0.0000
DefRow: ROW_1 CORE 10.5600 18.4800 N 159 1 0.6600 0.0000
DefRow: ROW_2 CORE 10.5600 26.4000 FS 159 1 0.6600 0.0000
DefRow: ROW_3 CORE 10.5600 34.3200 N 159 1 0.6600 0.0000
DefRow: ROW_4 CORE 10.5600 42.2400 FS 159 1 0.6600 0.0000

######################################################
#  Track: dir start number space layer_num layer1 ...#
######################################################
Track: Y 0.3300 91 0.6600 1 6
Track: X 0.3300 191 0.6600 1 6
Track: X 0.3300 191 0.6600 1 5
Track: Y 0.3300 91 0.6600 1 5
Track: Y 0.3300 91 0.6600 1 4
Track: X 0.3300 191 0.6600 1 4
Track: X 0.3300 191 0.6600 1 3
Track: Y 0.3300 91 0.6600 1 3
Track: Y 0.3300 91 0.6600 1 2
Track: X 0.3300 191 0.6600 1 2
Track: X 0.3300 191 0.6600 1 1
Track: Y 0.3300 91 0.6600 1 1

######################################################
#  GCellGrid: dir start number space                 #
######################################################
GCellGrid: X 125.7300 2 0.1700
GCellGrid: X 0.3300 20 6.6000
GCellGrid: X 0.0000 2 0.3300
GCellGrid: Y 59.7300 2 0.4300
GCellGrid: Y 0.3300 10 6.6000
GCellGrid: Y 0.0000 2 0.3300

######################################################
#  SpareCell: cellName                               #
#  SpareInst: instName                               #
######################################################

######################################################
#  ScanGroup: groupName startPin stopPin             #
######################################################

######################################################
#  JtagCell:  leafCellName                           #
#  JtagInst:  <instName | HInstName>                 #
######################################################

######################################################################################
#  BlackBox: -cell <cell_name> { -size <x> <y> |  -area <um^2> | \                  #
#            -gatecount <count> <areapergate> <utilization> | \                     #
#            {-gateArea <gateAreaValue> [-macroArea <macroAreaValue>]} } \          #
#            [-minwidth <w> | -minheight <h> | -fixedwidh <w> | -fixedheight <h>] \ #
#            [-aspectratio <ratio>]                                                  #
#            [-boxList <nrConstraintBox>                                             #
#              ConstraintBox: <llx> <lly> <urx> <ury>                                #
#              ... ]                                                                 #
######################################################################################

#########################################################
#  PhysicalNet: <name> [-pwr|-gnd|-tiehi|-tielo]        #
#########################################################
PhysicalNet: POWR -pwr
PhysicalNet: GRND -gnd

#########################################################
#  PhysicalInstance: <name> <cell> <orient> <llx> <lly> #
#########################################################
PhysicalInstance: FILLER_1 FILL4 MX 10.5600 10.5600
PhysicalInstance: FILLER_2 FILL2 MX 13.2000 10.5600
PhysicalInstance: FILLER_3 FILL8 MX 58.0800 10.5600
PhysicalInstance: FILLER_4 FILL2 MX 63.3600 10.5600
PhysicalInstance: FILLER_5 FILL1 MX 64.6800 10.5600
PhysicalInstance: FILLER_6 FILL8 MX 85.8000 10.5600
PhysicalInstance: FILLER_7 FILL1 MX 91.0800 10.5600
PhysicalInstance: FILLER_8 FILL8 MX 99.0000 10.5600
PhysicalInstance: FILLER_9 FILL2 MX 104.2800 10.5600
PhysicalInstance: FILLER_10 FILL1 MX 105.6000 10.5600
PhysicalInstance: FILLER_11 FILL4 MX 110.8800 10.5600
PhysicalInstance: FILLER_12 FILL2 MX 113.5200 10.5600
PhysicalInstance: FILLER_13 FILL1 MX 114.8400 10.5600
PhysicalInstance: FILLER_14 FILL4 R0 10.5600 18.4800
PhysicalInstance: FILLER_15 FILL2 R0 13.2000 18.4800
PhysicalInstance: FILLER_16 FILL1 R0 14.5200 18.4800
PhysicalInstance: FILLER_17 FILL4 R0 19.1400 18.4800
PhysicalInstance: FILLER_18 FILL1 R0 21.7800 18.4800
PhysicalInstance: FILLER_19 FILL8 R0 61.3800 18.4800
PhysicalInstance: FILLER_20 FILL1 R0 66.6600 18.4800
PhysicalInstance: FILLER_21 FILL2 R0 87.1200 18.4800
PhysicalInstance: FILLER_22 FILL1 R0 88.4400 18.4800
PhysicalInstance: FILLER_23 FILL8 R0 91.7400 18.4800
PhysicalInstance: FILLER_24 FILL8 R0 97.0200 18.4800
PhysicalInstance: FILLER_25 FILL8 R0 102.3000 18.4800
PhysicalInstance: FILLER_26 FILL8 R0 107.5800 18.4800
PhysicalInstance: FILLER_27 FILL4 R0 112.8600 18.4800
PhysicalInstance: FILLER_28 FILL4 MX 10.5600 26.4000
PhysicalInstance: FILLER_29 FILL2 MX 13.2000 26.4000
PhysicalInstance: FILLER_30 FILL8 MX 45.5400 26.4000
PhysicalInstance: FILLER_31 FILL8 MX 50.8200 26.4000
PhysicalInstance: FILLER_32 FILL8 MX 56.1000 26.4000
PhysicalInstance: FILLER_33 FILL4 MX 61.3800 26.4000
PhysicalInstance: FILLER_34 FILL2 MX 64.0200 26.4000
PhysicalInstance: FILLER_35 FILL1 MX 86.4600 26.4000
PhysicalInstance: FILLER_36 FILL4 MX 112.2000 26.4000
PhysicalInstance: FILLER_37 FILL1 MX 114.8400 26.4000
PhysicalInstance: FILLER_38 FILL8 R0 10.5600 34.3200
PhysicalInstance: FILLER_39 FILL4 R0 15.8400 34.3200
PhysicalInstance: FILLER_40 FILL2 R0 18.4800 34.3200
PhysicalInstance: FILLER_41 FILL1 R0 19.8000 34.3200
PhysicalInstance: FILLER_42 FILL4 R0 61.3800 34.3200
PhysicalInstance: FILLER_43 FILL2 R0 64.0200 34.3200
PhysicalInstance: FILLER_44 FILL1 R0 85.8000 34.3200
PhysicalInstance: FILLER_45 FILL4 R0 112.2000 34.3200
PhysicalInstance: FILLER_46 FILL1 R0 114.8400 34.3200
PhysicalInstance: FILLER_47 FILL4 MX 10.5600 42.2400
PhysicalInstance: FILLER_48 FILL2 MX 13.2000 42.2400
PhysicalInstance: FILLER_49 FILL4 MX 48.8400 42.2400
PhysicalInstance: FILLER_50 FILL8 MX 58.7400 42.2400
PhysicalInstance: FILLER_51 FILL2 MX 64.0200 42.2400
PhysicalInstance: FILLER_52 FILL2 MX 67.9800 42.2400
PhysicalInstance: FILLER_53 FILL4 MX 73.9200 42.2400
PhysicalInstance: FILLER_54 FILL1 MX 76.5600 42.2400
PhysicalInstance: FILLER_55 FILL4 MX 81.1800 42.2400
PhysicalInstance: FILLER_56 FILL4 MX 86.4600 42.2400
PhysicalInstance: FILLER_57 FILL2 MX 89.1000 42.2400
PhysicalInstance: FILLER_58 FILL4 MX 95.7000 42.2400
PhysicalInstance: FILLER_59 FILL2 MX 98.3400 42.2400
PhysicalInstance: FILLER_60 FILL1 MX 99.6600 42.2400
PhysicalInstance: FILLER_61 FILL4 MX 104.2800 42.2400
PhysicalInstance: FILLER_62 FILL2 MX 106.9200 42.2400
PhysicalInstance: FILLER_63 FILL1 MX 108.2400 42.2400
PhysicalInstance: FILLER_64 FILL4 MX 111.5400 42.2400
PhysicalInstance: FILLER_65 FILL2 MX 114.1800 42.2400

#####################################################################
#  Group: <group_name> <nrHinst> [-isPhyHier]                       #
#    <inst_name>                                                    #
#    ...                                                            #
#####################################################################

#####################################################################
#  Fence:  <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  Region: <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  Guide:  <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  SoftGuide: <name>                                                #
#    ...                                                            #
#####################################################################

###########################################################################
#  <Constraints>                                                          #
#     <Constraint  type="fence|guide|region|softguide"                    #
#                  readonly=1  name="blk_name">                           #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                               #
#     </Constraint>                                                       #
#  </Constraints>                                                         #
###########################################################################
###########################################################################
#  <HierarchicalPartitions>                                               #
#     <NetGroup name="group_name" nets=val spacing=val isOptOrder=val isAltLayer=val isPffGroup=val > #
#         <Net name="net_name" /> ...                                     #
#     </NetGroup>                                                         #
#     <Partition name="ptn_name"  hinst="name"                            #
#         coreToLeft=fval coreToRight=fval coreToTop=fval coreToBottom=fval   #
#         pinSpacingNorth=val pinSpacingWest=val pinSpacingSouth=val      #
#         pinSpacingEast=val  blockedLayers=xval >       #
#         <TrackHalfPitch Horizontal=val Vertical=val />                  #
#         <SpacingHalo left=10.0 right=11.0 top=11.0 bottom=11.0 />       #
#         <Clone hinst="hinst_name" orient=R0|R90|... />                  #
#         <PinLayer side="N|W|S|E" Metal1=yes Metal2=yes ... />           #
#         <RowSize cellHeight=1.0 railWidth=1.0 />                        #
#         <RoutingHalo sideSize=11.0 bottomLayer=M1 topLayer=M2  />       #
#         <SpacingHalo left=11.0 right=11.0 top=11.0 bottom=11.0 />       #
#     </Partition>                                                        #
#     <CellPinGroup name="group_name" cell="cell_name"                    #
#                       pins=nr spacing=val isOptOrder=1 isAltLayer=1 >   #
#         <GroupFTerm name="term_name" /> ...                             #
#     </CellPinGroup>                                                     #
#     <PartitionPinBlockage layerMap=x llx=1 lly=2 urx=3 ury=4 name="n" />#
#     <PinGuide name="name" boxes=num cell="name" >                       #
#        <Box llx=11.0 lly=22.0 urx=33.0 ury=44.0 layer=id /> ...         #
#     </PinGuide>                                                         #
#     <CellPtnCut name="name" cuts=Num >                                  #
#        <Box llx=11.0 lly=22.0 urx=33.0 ury=44.0 /> ...                  #
#     </CellPtnCut>                                                       #
#  </HierarchicalPartitions>                                              #
###########################################################################
<HierarchicalPartitions>
    <Partition name="manchester_dec" hinst="" coreToLeft=0.0000 coreToRight=0.0000 coreToTop=0.0000 coreToBottom=0.0000 pinSpacingNorth=2 pinSpacingWest=2 pinSpacingSouth=2 pinSpacingEast=2 blockedLayers=0x3f >
	<PinLayer side="N" Metal2=yes Metal4=yes Metal6=yes />
	<PinLayer side="W" Metal3=yes Metal5=yes />
	<PinLayer side="S" Metal2=yes Metal4=yes Metal6=yes />
	<PinLayer side="E" Metal3=yes Metal5=yes />
    </Partition>
</HierarchicalPartitions>

######################################################
#  Instance: <name> <orient> <llx> <lly>             #
######################################################

#################################################################
#  Block: <name> <orient> [<llx> <lly>]                         #
#         [<haloLeftMargin>  <haloBottomMargin>                 #
#          <haloRightMargin> <haloTopMargin> <haloFromInstBox>] #
#         [<IsInstDefCovered> <IsInstPreplaced>]                #
#                                                               #
#  Block with INT_MAX loc is for recording the halo block with  #
#  non-prePlaced status                                         #
#################################################################

######################################################
#  BlockLayerObstruct: <name> <layerX> ...           #
######################################################

######################################################
#  FeedthroughBuffer: <instName>                     #
######################################################

#################################################################
#  <PlacementBlockages>                                         #
#     <Blockage name="blk_name" type="hard|soft|partial">       #
#       <Attr density=1.2 inst="inst_name" pushdown=yes />      #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                     #
#     </Blockage>                                               #
#  </PlacementBlockages>                                        #
#################################################################

###########################################################################
#  <RouteBlockages>                                                       #
#     <Blockage name="blk_name" type="User|RouteGuide|PtnCut|WideWire">   #
#       <Attr spacing=1.2 drw=1.2 inst="name" pushdown=yes fills=yes />   #
#       <Layer type="route|cut|masterslice" id=layerNo />                 #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                               #
#       <Poly points=nr x0=1 y0=1 x1=2 y2=2 ...  />                       #
#     </Blockage>                                                         #
#  </RouteBlockages>                                                      #
###########################################################################

######################################################
#  PrerouteAsObstruct: <layer_treated_as_obstruct>   #
######################################################
PrerouteAsObstruct: 0x3

######################################################
#  NetWeight: <net_name> <weight (in integer)>       #
######################################################

#################################################################
#  SprFile: <file_name>                                         #
#################################################################
SprFile: manchester_dec.fp.spr

#########################################################################################
#  IOPin: <pinName> <x> <y> <side> <layerId> <width> <depth> {placed|fixed|cover|-} <nrBox> \ #
#         [-special] [-clock] [[-spacing <value>] | [-drw <value>]]                     #
#    PinBox: <llx> <lly> <urx> <ury> [-lyr <layerId>] \                                 #
#            [[-spacing <value>] | [-drw <value>]]                                      #
#    PinPoly: <nrPt> <x1> <y1> <x2> <y2> ...<xn> <yn> [-lyr <layerId>] \                #
#             [[-spacing <value>] | [-drw <value>]]                                     #
#    PinAntenna: <pinName> <ANTENNAPIN*> <value> LAYER <layer>                          #
#########################################################################################
IOPin: manchester_data 69.6300 60.1600 N 2 0.3000 0.3000 placed 1
  PinBox: 69.4800 59.8600 69.7800 60.1600 -lyr 2
IOPin: osc 59.0700 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 58.9200 0.0000 59.2200 0.3000 -lyr 2
IOPin: rst_n 76.8900 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 76.7400 0.0000 77.0400 0.3000 -lyr 2
IOPin: recovered_data 44.5500 60.1600 N 2 0.3000 0.3000 placed 1
  PinBox: 44.4000 59.8600 44.7000 60.1600 -lyr 2
IOPin: balanced_clk 0.0000 30.0300 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 29.8800 0.3000 30.1800 -lyr 3

##########################################################################
#  <IOPins>                                                              #
#    <Pin name="pin_name" type="clock|power|ground|analog"               #
#         status="covered|fixed|placed" is_special=1 >                   #
#      <Port>                                                            #
#        <Pref x=1 y=2 side="N|S|W|E|U|D" width=w depth=d />             #
#        <Via name="via_name" x=1 y=2 /> ...                             #
#        <Layer id=id spacing=1.2 drw=1.2>                               #
#          <Box llx=1 lly=2 urx=3 ury=4 /> ...                           #
#          <Poly points=nr x0=1 y0=1 x1=2 y2=2 ...           />          #
#        </Layer> ...                                                    #
#      </Port>  ...                                                      #
#    </Pin> ...                                                          #
#  </IOPins>                                                             #
##########################################################################
<IOPins>
  <Pin name="manchester_data" status="placed" >
    <Port>
      <Pref x=69.6300 y=60.1600 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=69.4800 lly=59.8600 urx=69.7800 ury=60.1600 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="osc" status="placed" >
    <Port>
      <Pref x=59.0700 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=58.9200 lly=0.0000 urx=59.2200 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="rst_n" status="placed" >
    <Port>
      <Pref x=76.8900 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=76.7400 lly=0.0000 urx=77.0400 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="recovered_data" status="placed" >
    <Port>
      <Pref x=44.5500 y=60.1600 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=44.4000 lly=59.8600 urx=44.7000 ury=60.1600 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="balanced_clk" status="placed" >
    <Port>
      <Pref x=0.0000 y=30.0300 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=29.8800 urx=0.3000 ury=30.1800 />
      </Layer>
    </Port>
  </Pin>
</IOPins>

#####################################################################
#  <Property>                                                       #
#     <obj_type name="inst_name" >                                  #
#       <prop name="name" type=type_name value=val />               #
#       <Attr name="name" type=type_name value=val />               #
#     </obj_type>                                                   #
#  </Property>                                                      #
#  where:                                                           #
#       type is data type: Box, String, Int, PTR, Loc, double, Bits #
#       obj_type are: inst, Design, instTerm, Bump, cell, net       #
#####################################################################
<Properties>
  <Design name="manchester_dec">
	<prop name="CUT_ROWS" type=Int value=0 />
  </Design>
</Properties>

###########################################################$############################################################################################
#  GlobalNetConnection: <net_name> {-pin|-inst|-net} <base_name_pattern> -type {pgpin|net|tiehi|tielo} {-all|-module <name>|-region <box>} [-override] #
########################################################################################################################################################
GlobalNetConnection: POWR -pin POWR -inst * -type pgpin -all
GlobalNetConnection: POWR -pin POWR -inst * -type tiehi -all
GlobalNetConnection: GRND -pin GRND -inst * -type pgpin -all
GlobalNetConnection: GRND -pin GRND -inst * -type tielo -all
GlobalNetConnection: POWR -pin SN -singleInst cnt_reg_0_ -type tiehi
GlobalNetConnection: POWR -pin SN -singleInst counter_out_reg -type tiehi
GlobalNetConnection: POWR -pin RN -singleInst cnt_reg_3_ -type tiehi
GlobalNetConnection: POWR -pin RN -singleInst cnt_reg_2_ -type tiehi
GlobalNetConnection: POWR -pin SN -singleInst cnt_reg_1_ -type tiehi
GlobalNetConnection: POWR -pin SN -singleInst clk_cnt_reg_1_ -type tiehi
GlobalNetConnection: POWR -pin SN -singleInst clk_cnt_reg_0_ -type tiehi
GlobalNetConnection: POWR -pin SN -singleInst clk_cnt_reg_2_ -type tiehi
GlobalNetConnection: POWR -pin SN -singleInst clk_cnt_reg_3_ -type tiehi
GlobalNetConnection: POWR -pin SN -singleInst balanced_clk_reg -type tiehi
GlobalNetConnection: POWR -pin D -singleInst balanced_clk_reg -type tiehi
GlobalNetConnection: POWR -pin SN -singleInst recovered_data_reg -type tiehi

################################################################################
#  NetProperties: <net_name> [-special] [-def_prop {int|dbl|str} <value>]...   #
################################################################################
