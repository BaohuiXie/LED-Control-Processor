######################################################
#                                                    #
#  Cadence Design Systems                            #
#  FirstEncounter Floor Plan Information             #
#                                                    #
######################################################
# Created by First Encounter v08.10-s338_1 on Thu Apr 28 16:37:15 2022

Version: 8

Head Box: 0.0000 0.0000 99.6300 91.8000
IO Box: 0.0000 0.0000 99.6300 91.8000
Core Box: 6.6000 6.6000 93.6300 85.8000
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
DefRow: ROW_0 CORE 6.6000 6.6000 FS 131 1 0.6600 0.0000
DefRow: ROW_1 CORE 6.6000 14.5200 N 131 1 0.6600 0.0000
DefRow: ROW_2 CORE 6.6000 22.4400 FS 131 1 0.6600 0.0000
DefRow: ROW_3 CORE 6.6000 30.3600 N 131 1 0.6600 0.0000
DefRow: ROW_4 CORE 6.6000 38.2800 FS 131 1 0.6600 0.0000
DefRow: ROW_5 CORE 6.6000 46.2000 N 131 1 0.6600 0.0000
DefRow: ROW_6 CORE 6.6000 54.1200 FS 131 1 0.6600 0.0000
DefRow: ROW_7 CORE 6.6000 62.0400 N 131 1 0.6600 0.0000
DefRow: ROW_8 CORE 6.6000 69.9600 FS 131 1 0.6600 0.0000
DefRow: ROW_9 CORE 6.6000 77.8800 N 131 1 0.6600 0.0000

######################################################
#  Track: dir start number space layer_num layer1 ...#
######################################################
Track: Y 0.3300 139 0.6600 1 6
Track: X 0.3300 151 0.6600 1 6
Track: X 0.3300 151 0.6600 1 5
Track: Y 0.3300 139 0.6600 1 5
Track: Y 0.3300 139 0.6600 1 4
Track: X 0.3300 151 0.6600 1 4
Track: X 0.3300 151 0.6600 1 3
Track: Y 0.3300 139 0.6600 1 3
Track: Y 0.3300 139 0.6600 1 2
Track: X 0.3300 151 0.6600 1 2
Track: X 0.3300 151 0.6600 1 1
Track: Y 0.3300 139 0.6600 1 1

######################################################
#  GCellGrid: dir start number space                 #
######################################################
GCellGrid: Y 91.8050 1 13.8000
GCellGrid: Y 19.5050 7 9.7500
GCellGrid: Y -0.0050 2 9.7600
GCellGrid: X 99.6350 1 11.8800
GCellGrid: X 19.5050 8 9.7500
GCellGrid: X -0.0050 2 9.7600

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
PhysicalNet: _NULL

#########################################################
#  PhysicalInstance: <name> <cell> <orient> <llx> <lly> #
#########################################################
PhysicalInstance: FILLER_1 FILL4 MX 6.6000 6.6000
PhysicalInstance: FILLER_2 FILL2 MX 9.2400 6.6000
PhysicalInstance: FILLER_3 FILL4 MX 33.6600 6.6000
PhysicalInstance: FILLER_4 FILL1 MX 36.3000 6.6000
PhysicalInstance: FILLER_5 FILL8 MX 48.1800 6.6000
PhysicalInstance: FILLER_6 FILL4 MX 53.4600 6.6000
PhysicalInstance: FILLER_7 FILL1 MX 56.1000 6.6000
PhysicalInstance: FILLER_8 FILL8 MX 59.4000 6.6000
PhysicalInstance: FILLER_9 FILL4 MX 64.6800 6.6000
PhysicalInstance: FILLER_10 FILL2 MX 67.3200 6.6000
PhysicalInstance: FILLER_11 FILL4 MX 89.1000 6.6000
PhysicalInstance: FILLER_12 FILL2 MX 91.7400 6.6000
PhysicalInstance: FILLER_13 FILL4 R0 6.6000 14.5200
PhysicalInstance: FILLER_14 FILL2 R0 9.2400 14.5200
PhysicalInstance: FILLER_15 FILL8 R0 31.0200 14.5200
PhysicalInstance: FILLER_16 FILL8 R0 36.3000 14.5200
PhysicalInstance: FILLER_17 FILL8 R0 41.5800 14.5200
PhysicalInstance: FILLER_18 FILL8 R0 46.8600 14.5200
PhysicalInstance: FILLER_19 FILL8 R0 84.4800 14.5200
PhysicalInstance: FILLER_20 FILL4 R0 89.7600 14.5200
PhysicalInstance: FILLER_21 FILL1 R0 92.4000 14.5200
PhysicalInstance: FILLER_22 FILL4 MX 6.6000 22.4400
PhysicalInstance: FILLER_23 FILL2 MX 9.2400 22.4400
PhysicalInstance: FILLER_24 FILL1 MX 34.9800 22.4400
PhysicalInstance: FILLER_25 FILL8 MX 39.6000 22.4400
PhysicalInstance: FILLER_26 FILL8 MX 44.8800 22.4400
PhysicalInstance: FILLER_27 FILL8 MX 50.1600 22.4400
PhysicalInstance: FILLER_28 FILL4 MX 89.1000 22.4400
PhysicalInstance: FILLER_29 FILL2 MX 91.7400 22.4400
PhysicalInstance: FILLER_30 FILL4 R0 6.6000 30.3600
PhysicalInstance: FILLER_31 FILL2 R0 9.2400 30.3600
PhysicalInstance: FILLER_32 FILL8 R0 46.2000 30.3600
PhysicalInstance: FILLER_33 FILL2 R0 51.4800 30.3600
PhysicalInstance: FILLER_34 FILL8 R0 68.6400 30.3600
PhysicalInstance: FILLER_35 FILL8 R0 76.5600 30.3600
PhysicalInstance: FILLER_36 FILL2 R0 81.8400 30.3600
PhysicalInstance: FILLER_37 FILL1 R0 83.1600 30.3600
PhysicalInstance: FILLER_38 FILL8 R0 87.7800 30.3600
PhysicalInstance: FILLER_39 FILL4 MX 6.6000 38.2800
PhysicalInstance: FILLER_40 FILL2 MX 9.2400 38.2800
PhysicalInstance: FILLER_41 FILL1 MX 14.5200 38.2800
PhysicalInstance: FILLER_42 FILL2 MX 18.4800 38.2800
PhysicalInstance: FILLER_43 FILL4 MX 48.1800 38.2800
PhysicalInstance: FILLER_44 FILL2 MX 50.8200 38.2800
PhysicalInstance: FILLER_45 FILL8 MX 86.4600 38.2800
PhysicalInstance: FILLER_46 FILL2 MX 91.7400 38.2800
PhysicalInstance: FILLER_47 FILL4 R0 6.6000 46.2000
PhysicalInstance: FILLER_48 FILL2 R0 9.2400 46.2000
PhysicalInstance: FILLER_49 FILL4 R0 34.3200 46.2000
PhysicalInstance: FILLER_50 FILL4 R0 48.1800 46.2000
PhysicalInstance: FILLER_51 FILL2 R0 50.8200 46.2000
PhysicalInstance: FILLER_52 FILL2 R0 72.6000 46.2000
PhysicalInstance: FILLER_53 FILL8 R0 77.8800 46.2000
PhysicalInstance: FILLER_54 FILL2 R0 83.1600 46.2000
PhysicalInstance: FILLER_55 FILL1 R0 84.4800 46.2000
PhysicalInstance: FILLER_56 FILL8 R0 87.7800 46.2000
PhysicalInstance: FILLER_57 FILL4 MX 6.6000 54.1200
PhysicalInstance: FILLER_58 FILL2 MX 9.2400 54.1200
PhysicalInstance: FILLER_59 FILL8 MX 31.0200 54.1200
PhysicalInstance: FILLER_60 FILL8 MX 36.3000 54.1200
PhysicalInstance: FILLER_61 FILL8 MX 41.5800 54.1200
PhysicalInstance: FILLER_62 FILL8 MX 46.8600 54.1200
PhysicalInstance: FILLER_63 FILL4 MX 80.5200 54.1200
PhysicalInstance: FILLER_64 FILL2 MX 83.1600 54.1200
PhysicalInstance: FILLER_65 FILL1 MX 84.4800 54.1200
PhysicalInstance: FILLER_66 FILL4 MX 89.1000 54.1200
PhysicalInstance: FILLER_67 FILL2 MX 91.7400 54.1200
PhysicalInstance: FILLER_68 FILL4 R0 6.6000 62.0400
PhysicalInstance: FILLER_69 FILL2 R0 9.2400 62.0400
PhysicalInstance: FILLER_70 FILL4 R0 17.8200 62.0400
PhysicalInstance: FILLER_71 FILL2 R0 20.4600 62.0400
PhysicalInstance: FILLER_72 FILL2 R0 25.0800 62.0400
PhysicalInstance: FILLER_73 FILL1 R0 26.4000 62.0400
PhysicalInstance: FILLER_74 FILL4 R0 47.5200 62.0400
PhysicalInstance: FILLER_75 FILL2 R0 50.1600 62.0400
PhysicalInstance: FILLER_76 FILL1 R0 51.4800 62.0400
PhysicalInstance: FILLER_77 FILL4 R0 80.5200 62.0400
PhysicalInstance: FILLER_78 FILL2 R0 83.1600 62.0400
PhysicalInstance: FILLER_79 FILL1 R0 84.4800 62.0400
PhysicalInstance: FILLER_80 FILL8 R0 87.7800 62.0400
PhysicalInstance: FILLER_81 FILL4 MX 6.6000 69.9600
PhysicalInstance: FILLER_82 FILL2 MX 9.2400 69.9600
PhysicalInstance: FILLER_83 FILL4 MX 37.6200 69.9600
PhysicalInstance: FILLER_84 FILL8 MX 44.8800 69.9600
PhysicalInstance: FILLER_85 FILL2 MX 50.1600 69.9600
PhysicalInstance: FILLER_86 FILL1 MX 51.4800 69.9600
PhysicalInstance: FILLER_87 FILL4 MX 81.1800 69.9600
PhysicalInstance: FILLER_88 FILL8 MX 87.7800 69.9600
PhysicalInstance: FILLER_89 FILL4 R0 6.6000 77.8800
PhysicalInstance: FILLER_90 FILL2 R0 9.2400 77.8800
PhysicalInstance: FILLER_91 FILL4 R0 48.1800 77.8800
PhysicalInstance: FILLER_92 FILL2 R0 50.8200 77.8800
PhysicalInstance: FILLER_93 FILL8 R0 79.2000 77.8800
PhysicalInstance: FILLER_94 FILL1 R0 84.4800 77.8800
PhysicalInstance: FILLER_95 FILL8 R0 87.7800 77.8800

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
    <Partition name="encoder" hinst="" coreToLeft=0.0000 coreToRight=0.0000 coreToTop=0.0000 coreToBottom=0.0000 pinSpacingNorth=2 pinSpacingWest=2 pinSpacingSouth=2 pinSpacingEast=2 blockedLayers=0x3f >
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
SprFile: encoder.fp.spr

#######################################################################################
#  IO: <instName> <cellName> <lx> <ly> <side> <orient> {-power|-ground|-} \           #
#      [isCovered isPrePlaced]                                                        #
#  IOPin: <pinName> <x> <y> <side> <layerId> <width> <depth> {placed|fixed|cover|-} <nrBox> #
#    PinBox: <llx> <lly> <urx> <ury>                                                  #
#    PinPoly: <nrPt> <x1> <y1> <x2> <y2> ...<xn> <yn>                                 #
#######################################################################################
IOPin: out 99.6300 40.5900 E 3 0.3000 0.3000 fixed 1
  PinBox: 99.3300 40.4400 99.6300 40.7400 -lyr 3
IOPin: globalReset 0.0000 26.7300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 26.5800 0.3000 26.8800 -lyr 5
IOPin: clk 0.0000 18.1500 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 18.0000 0.3000 18.3000 -lyr 5
IOPin: reData 0.0000 35.3100 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 35.1600 0.3000 35.4600 -lyr 5
IOPin: REF4Bits[3] 0.0000 69.6300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 69.4800 0.3000 69.7800 -lyr 5
IOPin: REF4Bits[2] 0.0000 61.0500 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 60.9000 0.3000 61.2000 -lyr 5
IOPin: REF4Bits[1] 0.0000 52.4700 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 52.3200 0.3000 52.6200 -lyr 5
IOPin: REF4Bits[0] 0.0000 43.8900 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 43.7400 0.3000 44.0400 -lyr 5
IOPin: balanceCLK 0.0000 10.2300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 10.0800 0.3000 10.3800 -lyr 5

#########################################################################################
#  IOPin: <pinName> <x> <y> <side> <layerId> <width> <depth> {placed|fixed|cover|-} <nrBox> \ #
#         [-special] [-clock] [[-spacing <value>] | [-drw <value>]]                     #
#    PinBox: <llx> <lly> <urx> <ury> [-lyr <layerId>] \                                 #
#            [[-spacing <value>] | [-drw <value>]]                                      #
#    PinPoly: <nrPt> <x1> <y1> <x2> <y2> ...<xn> <yn> [-lyr <layerId>] \                #
#             [[-spacing <value>] | [-drw <value>]]                                     #
#    PinAntenna: <pinName> <ANTENNAPIN*> <value> LAYER <layer>                          #
#########################################################################################

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
  <Pin name="out" status="fixed" >
    <Port>
      <Pref x=99.6300 y=40.5900 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=99.3300 lly=40.4400 urx=99.6300 ury=40.7400 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="balanceCLK" status="fixed" >
    <Port>
      <Pref x=0.0000 y=10.2300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=10.0800 urx=0.3000 ury=10.3800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF4Bits[3]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=69.6300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=69.4800 urx=0.3000 ury=69.7800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF4Bits[2]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=61.0500 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=60.9000 urx=0.3000 ury=61.2000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF4Bits[1]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=52.4700 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=52.3200 urx=0.3000 ury=52.6200 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF4Bits[0]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=43.8900 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=43.7400 urx=0.3000 ury=44.0400 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="reData" status="fixed" >
    <Port>
      <Pref x=0.0000 y=35.3100 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=35.1600 urx=0.3000 ury=35.4600 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="clk" status="fixed" >
    <Port>
      <Pref x=0.0000 y=18.1500 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=18.0000 urx=0.3000 ury=18.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="globalReset" status="fixed" >
    <Port>
      <Pref x=0.0000 y=26.7300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=26.5800 urx=0.3000 ury=26.8800 />
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
  <Design name="encoder">
	<prop name="CUT_ROWS" type=Int value=0 />
  </Design>
</Properties>

###########################################################$############################################################################################
#  GlobalNetConnection: <net_name> {-pin|-inst|-net} <base_name_pattern> -type {pgpin|net|tiehi|tielo} {-all|-module <name>|-region <box>} [-override] #
########################################################################################################################################################
GlobalNetConnection: POWR -pin POWR -inst * -type pgpin -module {}
GlobalNetConnection: POWR -pin POWR -inst * -type tiehi -module {}
GlobalNetConnection: GRND -pin GRND -inst * -type pgpin -module {}
GlobalNetConnection: GRND -pin GRND -inst * -type tielo -module {}

################################################################################
#  NetProperties: <net_name> [-special] [-def_prop {int|dbl|str} <value>]...   #
################################################################################
