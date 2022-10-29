######################################################
#                                                    #
#  Cadence Design Systems                            #
#  FirstEncounter Floor Plan Information             #
#                                                    #
######################################################
# Created by First Encounter v08.10-s338_1 on Thu Apr 28 23:47:13 2022

Version: 8

Head Box: 0.0000 0.0000 203.7900 186.8800
IO Box: 0.0000 0.0000 203.7900 186.8800
Core Box: 10.5600 10.5600 193.7900 176.8800
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
DefRow: ROW_0 CORE 10.5600 10.5600 FS 277 1 0.6600 0.0000
DefRow: ROW_1 CORE 10.5600 18.4800 N 277 1 0.6600 0.0000
DefRow: ROW_2 CORE 10.5600 26.4000 FS 277 1 0.6600 0.0000
DefRow: ROW_3 CORE 10.5600 34.3200 N 277 1 0.6600 0.0000
DefRow: ROW_4 CORE 10.5600 42.2400 FS 277 1 0.6600 0.0000
DefRow: ROW_5 CORE 10.5600 50.1600 N 277 1 0.6600 0.0000
DefRow: ROW_6 CORE 10.5600 58.0800 FS 277 1 0.6600 0.0000
DefRow: ROW_7 CORE 10.5600 66.0000 N 277 1 0.6600 0.0000
DefRow: ROW_8 CORE 10.5600 73.9200 FS 277 1 0.6600 0.0000
DefRow: ROW_9 CORE 10.5600 81.8400 N 277 1 0.6600 0.0000
DefRow: ROW_10 CORE 10.5600 89.7600 FS 277 1 0.6600 0.0000
DefRow: ROW_11 CORE 10.5600 97.6800 N 277 1 0.6600 0.0000
DefRow: ROW_12 CORE 10.5600 105.6000 FS 277 1 0.6600 0.0000
DefRow: ROW_13 CORE 10.5600 113.5200 N 277 1 0.6600 0.0000
DefRow: ROW_14 CORE 10.5600 121.4400 FS 277 1 0.6600 0.0000
DefRow: ROW_15 CORE 10.5600 129.3600 N 277 1 0.6600 0.0000
DefRow: ROW_16 CORE 10.5600 137.2800 FS 277 1 0.6600 0.0000
DefRow: ROW_17 CORE 10.5600 145.2000 N 277 1 0.6600 0.0000
DefRow: ROW_18 CORE 10.5600 153.1200 FS 277 1 0.6600 0.0000
DefRow: ROW_19 CORE 10.5600 161.0400 N 277 1 0.6600 0.0000
DefRow: ROW_20 CORE 10.5600 168.9600 FS 277 1 0.6600 0.0000

######################################################
#  Track: dir start number space layer_num layer1 ...#
######################################################
Track: Y 0.3300 283 0.6600 1 6
Track: X 0.3300 309 0.6600 1 6
Track: X 0.3300 309 0.6600 1 5
Track: Y 0.3300 283 0.6600 1 5
Track: Y 0.3300 283 0.6600 1 4
Track: X 0.3300 309 0.6600 1 4
Track: X 0.3300 309 0.6600 1 3
Track: Y 0.3300 283 0.6600 1 3
Track: Y 0.3300 283 0.6600 1 2
Track: X 0.3300 309 0.6600 1 2
Track: X 0.3300 309 0.6600 1 1
Track: Y 0.3300 283 0.6600 1 1

######################################################
#  GCellGrid: dir start number space                 #
######################################################
GCellGrid: Y 186.8850 1 11.3800
GCellGrid: Y 19.5050 17 9.7500
GCellGrid: Y -0.0050 2 9.7600
GCellGrid: X 203.7950 1 8.7900
GCellGrid: X 19.5050 19 9.7500
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

#########################################################
#  PhysicalInstance: <name> <cell> <orient> <llx> <lly> #
#########################################################
PhysicalInstance: FILLER_1 FILL4 MX 10.5600 10.5600
PhysicalInstance: FILLER_2 FILL2 MX 13.2000 10.5600
PhysicalInstance: FILLER_3 FILL1 MX 14.5200 10.5600
PhysicalInstance: FILLER_4 FILL8 MX 22.4400 10.5600
PhysicalInstance: FILLER_5 FILL2 MX 27.7200 10.5600
PhysicalInstance: FILLER_6 FILL1 MX 29.0400 10.5600
PhysicalInstance: FILLER_7 FILL8 MX 36.9600 10.5600
PhysicalInstance: FILLER_8 FILL2 MX 42.2400 10.5600
PhysicalInstance: FILLER_9 FILL1 MX 43.5600 10.5600
PhysicalInstance: FILLER_10 FILL8 MX 51.4800 10.5600
PhysicalInstance: FILLER_11 FILL2 MX 56.7600 10.5600
PhysicalInstance: FILLER_12 FILL1 MX 58.0800 10.5600
PhysicalInstance: FILLER_13 FILL8 MX 66.0000 10.5600
PhysicalInstance: FILLER_14 FILL4 MX 71.2800 10.5600
PhysicalInstance: FILLER_15 FILL8 MX 81.1800 10.5600
PhysicalInstance: FILLER_16 FILL4 MX 86.4600 10.5600
PhysicalInstance: FILLER_17 FILL8 MX 96.3600 10.5600
PhysicalInstance: FILLER_18 FILL8 MX 101.6400 10.5600
PhysicalInstance: FILLER_19 FILL1 MX 106.9200 10.5600
PhysicalInstance: FILLER_20 FILL8 MX 114.8400 10.5600
PhysicalInstance: FILLER_21 FILL2 MX 120.1200 10.5600
PhysicalInstance: FILLER_22 FILL1 MX 121.4400 10.5600
PhysicalInstance: FILLER_23 FILL8 MX 129.3600 10.5600
PhysicalInstance: FILLER_24 FILL2 MX 134.6400 10.5600
PhysicalInstance: FILLER_25 FILL4 MX 143.2200 10.5600
PhysicalInstance: FILLER_26 FILL2 MX 145.8600 10.5600
PhysicalInstance: FILLER_27 FILL1 MX 147.1800 10.5600
PhysicalInstance: FILLER_28 FILL4 MX 155.1000 10.5600
PhysicalInstance: FILLER_29 FILL1 MX 157.7400 10.5600
PhysicalInstance: FILLER_30 FILL4 MX 167.6400 10.5600
PhysicalInstance: FILLER_31 FILL1 MX 170.2800 10.5600
PhysicalInstance: FILLER_32 FILL4 MX 178.2000 10.5600
PhysicalInstance: FILLER_33 FILL1 MX 180.8400 10.5600
PhysicalInstance: FILLER_34 FILL4 MX 188.7600 10.5600
PhysicalInstance: FILLER_35 FILL2 MX 191.4000 10.5600
PhysicalInstance: FILLER_36 FILL1 MX 192.7200 10.5600
PhysicalInstance: FILLER_37 FILL8 R0 10.5600 18.4800
PhysicalInstance: FILLER_38 FILL4 R0 15.8400 18.4800
PhysicalInstance: FILLER_39 FILL8 R0 25.7400 18.4800
PhysicalInstance: FILLER_40 FILL8 R0 31.0200 18.4800
PhysicalInstance: FILLER_41 FILL4 R0 36.3000 18.4800
PhysicalInstance: FILLER_42 FILL8 R0 48.1800 18.4800
PhysicalInstance: FILLER_43 FILL8 R0 53.4600 18.4800
PhysicalInstance: FILLER_44 FILL8 R0 66.0000 18.4800
PhysicalInstance: FILLER_45 FILL2 R0 71.2800 18.4800
PhysicalInstance: FILLER_46 FILL1 R0 72.6000 18.4800
PhysicalInstance: FILLER_47 FILL8 R0 82.5000 18.4800
PhysicalInstance: FILLER_48 FILL2 R0 87.7800 18.4800
PhysicalInstance: FILLER_49 FILL1 R0 89.1000 18.4800
PhysicalInstance: FILLER_50 FILL8 R0 97.0200 18.4800
PhysicalInstance: FILLER_51 FILL8 R0 102.3000 18.4800
PhysicalInstance: FILLER_52 FILL4 R0 107.5800 18.4800
PhysicalInstance: FILLER_53 FILL1 R0 110.2200 18.4800
PhysicalInstance: FILLER_54 FILL8 R0 120.1200 18.4800
PhysicalInstance: FILLER_55 FILL8 R0 125.4000 18.4800
PhysicalInstance: FILLER_56 FILL2 R0 130.6800 18.4800
PhysicalInstance: FILLER_57 FILL1 R0 132.0000 18.4800
PhysicalInstance: FILLER_58 FILL4 R0 139.9200 18.4800
PhysicalInstance: FILLER_59 FILL4 R0 190.0800 18.4800
PhysicalInstance: FILLER_60 FILL1 R0 192.7200 18.4800
PhysicalInstance: FILLER_61 FILL4 MX 10.5600 26.4000
PhysicalInstance: FILLER_62 FILL2 MX 13.2000 26.4000
PhysicalInstance: FILLER_63 FILL1 MX 55.4400 26.4000
PhysicalInstance: FILLER_64 FILL2 MX 76.5600 26.4000
PhysicalInstance: FILLER_65 FILL1 MX 77.8800 26.4000
PhysicalInstance: FILLER_66 FILL2 MX 85.1400 26.4000
PhysicalInstance: FILLER_67 FILL1 MX 86.4600 26.4000
PhysicalInstance: FILLER_68 FILL8 MX 99.6600 26.4000
PhysicalInstance: FILLER_69 FILL8 MX 104.9400 26.4000
PhysicalInstance: FILLER_70 FILL2 MX 110.2200 26.4000
PhysicalInstance: FILLER_71 FILL1 MX 111.5400 26.4000
PhysicalInstance: FILLER_72 FILL8 MX 132.6600 26.4000
PhysicalInstance: FILLER_73 FILL8 MX 137.9400 26.4000
PhysicalInstance: FILLER_74 FILL2 MX 143.2200 26.4000
PhysicalInstance: FILLER_75 FILL1 MX 144.5400 26.4000
PhysicalInstance: FILLER_76 FILL8 MX 186.1200 26.4000
PhysicalInstance: FILLER_77 FILL2 MX 191.4000 26.4000
PhysicalInstance: FILLER_78 FILL1 MX 192.7200 26.4000
PhysicalInstance: FILLER_79 FILL8 R0 10.5600 34.3200
PhysicalInstance: FILLER_80 FILL8 R0 15.8400 34.3200
PhysicalInstance: FILLER_81 FILL8 R0 21.1200 34.3200
PhysicalInstance: FILLER_82 FILL2 R0 26.4000 34.3200
PhysicalInstance: FILLER_83 FILL2 R0 54.7800 34.3200
PhysicalInstance: FILLER_84 FILL2 R0 76.5600 34.3200
PhysicalInstance: FILLER_85 FILL1 R0 77.8800 34.3200
PhysicalInstance: FILLER_86 FILL8 R0 99.0000 34.3200
PhysicalInstance: FILLER_87 FILL1 R0 104.2800 34.3200
PhysicalInstance: FILLER_88 FILL1 R0 125.4000 34.3200
PhysicalInstance: FILLER_89 FILL2 R0 166.9800 34.3200
PhysicalInstance: FILLER_90 FILL1 R0 168.3000 34.3200
PhysicalInstance: FILLER_91 FILL4 R0 189.4200 34.3200
PhysicalInstance: FILLER_92 FILL2 R0 192.0600 34.3200
PhysicalInstance: FILLER_93 FILL4 MX 10.5600 42.2400
PhysicalInstance: FILLER_94 FILL2 MX 13.2000 42.2400
PhysicalInstance: FILLER_95 FILL1 MX 79.2000 42.2400
PhysicalInstance: FILLER_96 FILL8 MX 100.3200 42.2400
PhysicalInstance: FILLER_97 FILL8 MX 105.6000 42.2400
PhysicalInstance: FILLER_98 FILL8 MX 110.8800 42.2400
PhysicalInstance: FILLER_99 FILL8 MX 116.1600 42.2400
PhysicalInstance: FILLER_100 FILL4 MX 141.9000 42.2400
PhysicalInstance: FILLER_101 FILL1 MX 144.5400 42.2400
PhysicalInstance: FILLER_102 FILL8 MX 186.1200 42.2400
PhysicalInstance: FILLER_103 FILL2 MX 191.4000 42.2400
PhysicalInstance: FILLER_104 FILL1 MX 192.7200 42.2400
PhysicalInstance: FILLER_105 FILL4 R0 10.5600 50.1600
PhysicalInstance: FILLER_106 FILL2 R0 13.2000 50.1600
PhysicalInstance: FILLER_107 FILL8 R0 73.2600 50.1600
PhysicalInstance: FILLER_108 FILL1 R0 78.5400 50.1600
PhysicalInstance: FILLER_109 FILL8 R0 81.8400 50.1600
PhysicalInstance: FILLER_110 FILL8 R0 87.1200 50.1600
PhysicalInstance: FILLER_111 FILL8 R0 92.4000 50.1600
PhysicalInstance: FILLER_112 FILL8 R0 97.6800 50.1600
PhysicalInstance: FILLER_113 FILL8 R0 102.9600 50.1600
PhysicalInstance: FILLER_114 FILL1 R0 108.2400 50.1600
PhysicalInstance: FILLER_115 FILL8 R0 111.5400 50.1600
PhysicalInstance: FILLER_116 FILL4 R0 116.8200 50.1600
PhysicalInstance: FILLER_117 FILL2 R0 119.4600 50.1600
PhysicalInstance: FILLER_118 FILL1 R0 120.7800 50.1600
PhysicalInstance: FILLER_119 FILL8 R0 141.9000 50.1600
PhysicalInstance: FILLER_120 FILL4 R0 147.1800 50.1600
PhysicalInstance: FILLER_121 FILL1 R0 149.8200 50.1600
PhysicalInstance: FILLER_122 FILL8 R0 170.9400 50.1600
PhysicalInstance: FILLER_123 FILL1 R0 176.2200 50.1600
PhysicalInstance: FILLER_124 FILL4 R0 190.0800 50.1600
PhysicalInstance: FILLER_125 FILL1 R0 192.7200 50.1600
PhysicalInstance: FILLER_126 FILL8 MX 10.5600 58.0800
PhysicalInstance: FILLER_127 FILL8 MX 15.8400 58.0800
PhysicalInstance: FILLER_128 FILL1 MX 21.1200 58.0800
PhysicalInstance: FILLER_129 FILL2 MX 42.2400 58.0800
PhysicalInstance: FILLER_130 FILL8 MX 67.9800 58.0800
PhysicalInstance: FILLER_131 FILL8 MX 73.2600 58.0800
PhysicalInstance: FILLER_132 FILL8 MX 78.5400 58.0800
PhysicalInstance: FILLER_133 FILL8 MX 83.8200 58.0800
PhysicalInstance: FILLER_134 FILL8 MX 89.1000 58.0800
PhysicalInstance: FILLER_135 FILL8 MX 94.3800 58.0800
PhysicalInstance: FILLER_136 FILL8 MX 99.6600 58.0800
PhysicalInstance: FILLER_137 FILL4 MX 104.9400 58.0800
PhysicalInstance: FILLER_138 FILL1 MX 107.5800 58.0800
PhysicalInstance: FILLER_139 FILL8 MX 128.7000 58.0800
PhysicalInstance: FILLER_140 FILL2 MX 133.9800 58.0800
PhysicalInstance: FILLER_141 FILL1 MX 135.3000 58.0800
PhysicalInstance: FILLER_142 FILL8 MX 142.5600 58.0800
PhysicalInstance: FILLER_143 FILL4 MX 147.8400 58.0800
PhysicalInstance: FILLER_144 FILL8 MX 170.9400 58.0800
PhysicalInstance: FILLER_145 FILL4 MX 176.2200 58.0800
PhysicalInstance: FILLER_146 FILL1 MX 178.8600 58.0800
PhysicalInstance: FILLER_147 FILL8 MX 186.1200 58.0800
PhysicalInstance: FILLER_148 FILL2 MX 191.4000 58.0800
PhysicalInstance: FILLER_149 FILL1 MX 192.7200 58.0800
PhysicalInstance: FILLER_150 FILL4 R0 10.5600 66.0000
PhysicalInstance: FILLER_151 FILL2 R0 13.2000 66.0000
PhysicalInstance: FILLER_152 FILL8 R0 83.8200 66.0000
PhysicalInstance: FILLER_153 FILL8 R0 89.1000 66.0000
PhysicalInstance: FILLER_154 FILL8 R0 94.3800 66.0000
PhysicalInstance: FILLER_155 FILL4 R0 99.6600 66.0000
PhysicalInstance: FILLER_156 FILL2 R0 102.3000 66.0000
PhysicalInstance: FILLER_157 FILL1 R0 103.6200 66.0000
PhysicalInstance: FILLER_158 FILL4 R0 151.8000 66.0000
PhysicalInstance: FILLER_159 FILL1 R0 154.4400 66.0000
PhysicalInstance: FILLER_160 FILL8 R0 157.7400 66.0000
PhysicalInstance: FILLER_161 FILL8 R0 163.0200 66.0000
PhysicalInstance: FILLER_162 FILL8 R0 168.3000 66.0000
PhysicalInstance: FILLER_163 FILL2 R0 173.5800 66.0000
PhysicalInstance: FILLER_164 FILL8 R0 181.5000 66.0000
PhysicalInstance: FILLER_165 FILL8 R0 186.7800 66.0000
PhysicalInstance: FILLER_166 FILL2 R0 192.0600 66.0000
PhysicalInstance: FILLER_167 FILL4 MX 10.5600 73.9200
PhysicalInstance: FILLER_168 FILL2 MX 13.2000 73.9200
PhysicalInstance: FILLER_169 FILL1 MX 64.0200 73.9200
PhysicalInstance: FILLER_170 FILL8 MX 68.6400 73.9200
PhysicalInstance: FILLER_171 FILL8 MX 73.9200 73.9200
PhysicalInstance: FILLER_172 FILL8 MX 79.2000 73.9200
PhysicalInstance: FILLER_173 FILL4 MX 84.4800 73.9200
PhysicalInstance: FILLER_174 FILL1 MX 87.1200 73.9200
PhysicalInstance: FILLER_175 FILL8 MX 90.4200 73.9200
PhysicalInstance: FILLER_176 FILL8 MX 95.7000 73.9200
PhysicalInstance: FILLER_177 FILL4 MX 100.9800 73.9200
PhysicalInstance: FILLER_178 FILL2 MX 103.6200 73.9200
PhysicalInstance: FILLER_179 FILL1 MX 125.4000 73.9200
PhysicalInstance: FILLER_180 FILL8 MX 146.5200 73.9200
PhysicalInstance: FILLER_181 FILL8 MX 151.8000 73.9200
PhysicalInstance: FILLER_182 FILL4 MX 157.0800 73.9200
PhysicalInstance: FILLER_183 FILL2 MX 159.7200 73.9200
PhysicalInstance: FILLER_184 FILL8 MX 181.5000 73.9200
PhysicalInstance: FILLER_185 FILL8 MX 186.7800 73.9200
PhysicalInstance: FILLER_186 FILL2 MX 192.0600 73.9200
PhysicalInstance: FILLER_187 FILL4 R0 10.5600 81.8400
PhysicalInstance: FILLER_188 FILL2 R0 13.2000 81.8400
PhysicalInstance: FILLER_189 FILL1 R0 63.3600 81.8400
PhysicalInstance: FILLER_190 FILL8 R0 67.3200 81.8400
PhysicalInstance: FILLER_191 FILL8 R0 72.6000 81.8400
PhysicalInstance: FILLER_192 FILL8 R0 77.8800 81.8400
PhysicalInstance: FILLER_193 FILL2 R0 83.1600 81.8400
PhysicalInstance: FILLER_194 FILL1 R0 84.4800 81.8400
PhysicalInstance: FILLER_195 FILL8 R0 91.7400 81.8400
PhysicalInstance: FILLER_196 FILL8 R0 97.0200 81.8400
PhysicalInstance: FILLER_197 FILL8 R0 102.3000 81.8400
PhysicalInstance: FILLER_198 FILL1 R0 107.5800 81.8400
PhysicalInstance: FILLER_199 FILL8 R0 128.7000 81.8400
PhysicalInstance: FILLER_200 FILL2 R0 133.9800 81.8400
PhysicalInstance: FILLER_201 FILL1 R0 135.3000 81.8400
PhysicalInstance: FILLER_202 FILL4 R0 142.5600 81.8400
PhysicalInstance: FILLER_203 FILL2 R0 145.2000 81.8400
PhysicalInstance: FILLER_204 FILL1 R0 146.5200 81.8400
PhysicalInstance: FILLER_205 FILL1 R0 167.6400 81.8400
PhysicalInstance: FILLER_206 FILL1 R0 174.9000 81.8400
PhysicalInstance: FILLER_207 FILL1 R0 182.1600 81.8400
PhysicalInstance: FILLER_208 FILL4 R0 189.4200 81.8400
PhysicalInstance: FILLER_209 FILL2 R0 192.0600 81.8400
PhysicalInstance: FILLER_210 FILL4 MX 10.5600 89.7600
PhysicalInstance: FILLER_211 FILL2 MX 13.2000 89.7600
PhysicalInstance: FILLER_212 FILL8 MX 69.3000 89.7600
PhysicalInstance: FILLER_213 FILL8 MX 74.5800 89.7600
PhysicalInstance: FILLER_214 FILL8 MX 79.8600 89.7600
PhysicalInstance: FILLER_215 FILL1 MX 85.1400 89.7600
PhysicalInstance: FILLER_216 FILL8 MX 92.4000 89.7600
PhysicalInstance: FILLER_217 FILL8 MX 97.6800 89.7600
PhysicalInstance: FILLER_218 FILL2 MX 102.9600 89.7600
PhysicalInstance: FILLER_219 FILL1 MX 104.2800 89.7600
PhysicalInstance: FILLER_220 FILL1 MX 125.4000 89.7600
PhysicalInstance: FILLER_221 FILL8 MX 146.5200 89.7600
PhysicalInstance: FILLER_222 FILL8 MX 151.8000 89.7600
PhysicalInstance: FILLER_223 FILL8 MX 157.0800 89.7600
PhysicalInstance: FILLER_224 FILL4 MX 162.3600 89.7600
PhysicalInstance: FILLER_225 FILL2 MX 165.0000 89.7600
PhysicalInstance: FILLER_226 FILL1 MX 166.3200 89.7600
PhysicalInstance: FILLER_227 FILL8 MX 187.4400 89.7600
PhysicalInstance: FILLER_228 FILL1 MX 192.7200 89.7600
PhysicalInstance: FILLER_229 FILL4 R0 10.5600 97.6800
PhysicalInstance: FILLER_230 FILL2 R0 13.2000 97.6800
PhysicalInstance: FILLER_231 FILL8 R0 25.7400 97.6800
PhysicalInstance: FILLER_232 FILL2 R0 31.0200 97.6800
PhysicalInstance: FILLER_233 FILL8 R0 52.8000 97.6800
PhysicalInstance: FILLER_234 FILL4 R0 58.0800 97.6800
PhysicalInstance: FILLER_235 FILL8 R0 81.1800 97.6800
PhysicalInstance: FILLER_236 FILL8 R0 86.4600 97.6800
PhysicalInstance: FILLER_237 FILL1 R0 91.7400 97.6800
PhysicalInstance: FILLER_238 FILL8 R0 95.0400 97.6800
PhysicalInstance: FILLER_239 FILL4 R0 100.3200 97.6800
PhysicalInstance: FILLER_240 FILL2 R0 102.9600 97.6800
PhysicalInstance: FILLER_241 FILL1 R0 104.2800 97.6800
PhysicalInstance: FILLER_242 FILL1 R0 125.4000 97.6800
PhysicalInstance: FILLER_243 FILL4 R0 146.5200 97.6800
PhysicalInstance: FILLER_244 FILL2 R0 149.1600 97.6800
PhysicalInstance: FILLER_245 FILL8 R0 170.9400 97.6800
PhysicalInstance: FILLER_246 FILL4 R0 176.2200 97.6800
PhysicalInstance: FILLER_247 FILL1 R0 178.8600 97.6800
PhysicalInstance: FILLER_248 FILL8 R0 186.1200 97.6800
PhysicalInstance: FILLER_249 FILL2 R0 191.4000 97.6800
PhysicalInstance: FILLER_250 FILL1 R0 192.7200 97.6800
PhysicalInstance: FILLER_251 FILL8 MX 10.5600 105.6000
PhysicalInstance: FILLER_252 FILL4 MX 15.8400 105.6000
PhysicalInstance: FILLER_253 FILL1 MX 18.4800 105.6000
PhysicalInstance: FILLER_254 FILL8 MX 26.4000 105.6000
PhysicalInstance: FILLER_255 FILL8 MX 31.6800 105.6000
PhysicalInstance: FILLER_256 FILL4 MX 36.9600 105.6000
PhysicalInstance: FILLER_257 FILL1 MX 39.6000 105.6000
PhysicalInstance: FILLER_258 FILL8 MX 48.1800 105.6000
PhysicalInstance: FILLER_259 FILL4 MX 53.4600 105.6000
PhysicalInstance: FILLER_260 FILL2 MX 76.5600 105.6000
PhysicalInstance: FILLER_261 FILL1 MX 77.8800 105.6000
PhysicalInstance: FILLER_262 FILL8 MX 99.0000 105.6000
PhysicalInstance: FILLER_263 FILL2 MX 104.2800 105.6000
PhysicalInstance: FILLER_264 FILL1 MX 105.6000 105.6000
PhysicalInstance: FILLER_265 FILL4 MX 126.7200 105.6000
PhysicalInstance: FILLER_266 FILL2 MX 129.3600 105.6000
PhysicalInstance: FILLER_267 FILL1 MX 130.6800 105.6000
PhysicalInstance: FILLER_268 FILL4 MX 133.9800 105.6000
PhysicalInstance: FILLER_269 FILL2 MX 136.6200 105.6000
PhysicalInstance: FILLER_270 FILL4 MX 147.1800 105.6000
PhysicalInstance: FILLER_271 FILL1 MX 149.8200 105.6000
PhysicalInstance: FILLER_272 FILL8 MX 170.9400 105.6000
PhysicalInstance: FILLER_273 FILL4 MX 176.2200 105.6000
PhysicalInstance: FILLER_274 FILL1 MX 178.8600 105.6000
PhysicalInstance: FILLER_275 FILL8 MX 186.1200 105.6000
PhysicalInstance: FILLER_276 FILL2 MX 191.4000 105.6000
PhysicalInstance: FILLER_277 FILL1 MX 192.7200 105.6000
PhysicalInstance: FILLER_278 FILL4 R0 10.5600 113.5200
PhysicalInstance: FILLER_279 FILL2 R0 13.2000 113.5200
PhysicalInstance: FILLER_280 FILL8 R0 55.4400 113.5200
PhysicalInstance: FILLER_281 FILL8 R0 81.1800 113.5200
PhysicalInstance: FILLER_282 FILL8 R0 86.4600 113.5200
PhysicalInstance: FILLER_283 FILL1 R0 91.7400 113.5200
PhysicalInstance: FILLER_284 FILL8 R0 95.0400 113.5200
PhysicalInstance: FILLER_285 FILL4 R0 100.3200 113.5200
PhysicalInstance: FILLER_286 FILL2 R0 102.9600 113.5200
PhysicalInstance: FILLER_287 FILL2 R0 145.2000 113.5200
PhysicalInstance: FILLER_288 FILL1 R0 146.5200 113.5200
PhysicalInstance: FILLER_289 FILL2 R0 167.6400 113.5200
PhysicalInstance: FILLER_290 FILL4 R0 189.4200 113.5200
PhysicalInstance: FILLER_291 FILL2 R0 192.0600 113.5200
PhysicalInstance: FILLER_292 FILL8 MX 10.5600 121.4400
PhysicalInstance: FILLER_293 FILL8 MX 23.1000 121.4400
PhysicalInstance: FILLER_294 FILL2 MX 28.3800 121.4400
PhysicalInstance: FILLER_295 FILL1 MX 29.7000 121.4400
PhysicalInstance: FILLER_296 FILL8 MX 50.8200 121.4400
PhysicalInstance: FILLER_297 FILL8 MX 56.1000 121.4400
PhysicalInstance: FILLER_298 FILL8 MX 61.3800 121.4400
PhysicalInstance: FILLER_299 FILL8 MX 66.6600 121.4400
PhysicalInstance: FILLER_300 FILL4 MX 71.9400 121.4400
PhysicalInstance: FILLER_301 FILL2 MX 74.5800 121.4400
PhysicalInstance: FILLER_302 FILL8 MX 96.3600 121.4400
PhysicalInstance: FILLER_303 FILL4 MX 101.6400 121.4400
PhysicalInstance: FILLER_304 FILL4 MX 145.2000 121.4400
PhysicalInstance: FILLER_305 FILL1 MX 147.8400 121.4400
PhysicalInstance: FILLER_306 FILL2 MX 168.9600 121.4400
PhysicalInstance: FILLER_307 FILL4 MX 190.0800 121.4400
PhysicalInstance: FILLER_308 FILL1 MX 192.7200 121.4400
PhysicalInstance: FILLER_309 FILL4 R0 10.5600 129.3600
PhysicalInstance: FILLER_310 FILL2 R0 13.2000 129.3600
PhysicalInstance: FILLER_311 FILL2 R0 75.9000 129.3600
PhysicalInstance: FILLER_312 FILL2 R0 83.8200 129.3600
PhysicalInstance: FILLER_313 FILL2 R0 91.7400 129.3600
PhysicalInstance: FILLER_314 FILL4 R0 99.6600 129.3600
PhysicalInstance: FILLER_315 FILL2 R0 102.3000 129.3600
PhysicalInstance: FILLER_316 FILL1 R0 103.6200 129.3600
PhysicalInstance: FILLER_317 FILL8 R0 186.1200 129.3600
PhysicalInstance: FILLER_318 FILL2 R0 191.4000 129.3600
PhysicalInstance: FILLER_319 FILL1 R0 192.7200 129.3600
PhysicalInstance: FILLER_320 FILL4 MX 10.5600 137.2800
PhysicalInstance: FILLER_321 FILL2 MX 13.2000 137.2800
PhysicalInstance: FILLER_322 FILL1 MX 55.4400 137.2800
PhysicalInstance: FILLER_323 FILL2 MX 76.5600 137.2800
PhysicalInstance: FILLER_324 FILL1 MX 77.8800 137.2800
PhysicalInstance: FILLER_325 FILL8 MX 99.0000 137.2800
PhysicalInstance: FILLER_326 FILL1 MX 104.2800 137.2800
PhysicalInstance: FILLER_327 FILL2 MX 125.4000 137.2800
PhysicalInstance: FILLER_328 FILL2 MX 167.6400 137.2800
PhysicalInstance: FILLER_329 FILL4 MX 189.4200 137.2800
PhysicalInstance: FILLER_330 FILL2 MX 192.0600 137.2800
PhysicalInstance: FILLER_331 FILL8 R0 10.5600 145.2000
PhysicalInstance: FILLER_332 FILL4 R0 15.8400 145.2000
PhysicalInstance: FILLER_333 FILL2 R0 18.4800 145.2000
PhysicalInstance: FILLER_334 FILL8 R0 40.2600 145.2000
PhysicalInstance: FILLER_335 FILL8 R0 45.5400 145.2000
PhysicalInstance: FILLER_336 FILL8 R0 50.8200 145.2000
PhysicalInstance: FILLER_337 FILL4 R0 56.1000 145.2000
PhysicalInstance: FILLER_338 FILL8 R0 79.2000 145.2000
PhysicalInstance: FILLER_339 FILL8 R0 84.4800 145.2000
PhysicalInstance: FILLER_340 FILL8 R0 89.7600 145.2000
PhysicalInstance: FILLER_341 FILL8 R0 95.0400 145.2000
PhysicalInstance: FILLER_342 FILL4 R0 100.3200 145.2000
PhysicalInstance: FILLER_343 FILL2 R0 102.9600 145.2000
PhysicalInstance: FILLER_344 FILL1 R0 104.2800 145.2000
PhysicalInstance: FILLER_345 FILL1 R0 125.4000 145.2000
PhysicalInstance: FILLER_346 FILL1 R0 146.5200 145.2000
PhysicalInstance: FILLER_347 FILL2 R0 167.6400 145.2000
PhysicalInstance: FILLER_348 FILL4 R0 189.4200 145.2000
PhysicalInstance: FILLER_349 FILL2 R0 192.0600 145.2000
PhysicalInstance: FILLER_350 FILL4 MX 10.5600 153.1200
PhysicalInstance: FILLER_351 FILL2 MX 13.2000 153.1200
PhysicalInstance: FILLER_352 FILL1 MX 55.4400 153.1200
PhysicalInstance: FILLER_353 FILL2 MX 76.5600 153.1200
PhysicalInstance: FILLER_354 FILL1 MX 77.8800 153.1200
PhysicalInstance: FILLER_355 FILL8 MX 99.0000 153.1200
PhysicalInstance: FILLER_356 FILL1 MX 104.2800 153.1200
PhysicalInstance: FILLER_357 FILL1 MX 125.4000 153.1200
PhysicalInstance: FILLER_358 FILL4 MX 146.5200 153.1200
PhysicalInstance: FILLER_359 FILL2 MX 149.1600 153.1200
PhysicalInstance: FILLER_360 FILL8 MX 170.9400 153.1200
PhysicalInstance: FILLER_361 FILL4 MX 176.2200 153.1200
PhysicalInstance: FILLER_362 FILL1 MX 178.8600 153.1200
PhysicalInstance: FILLER_363 FILL8 MX 186.1200 153.1200
PhysicalInstance: FILLER_364 FILL2 MX 191.4000 153.1200
PhysicalInstance: FILLER_365 FILL1 MX 192.7200 153.1200
PhysicalInstance: FILLER_366 FILL8 R0 10.5600 161.0400
PhysicalInstance: FILLER_367 FILL8 R0 22.4400 161.0400
PhysicalInstance: FILLER_368 FILL4 R0 27.7200 161.0400
PhysicalInstance: FILLER_369 FILL8 R0 50.8200 161.0400
PhysicalInstance: FILLER_370 FILL1 R0 56.1000 161.0400
PhysicalInstance: FILLER_371 FILL8 R0 77.2200 161.0400
PhysicalInstance: FILLER_372 FILL8 R0 82.5000 161.0400
PhysicalInstance: FILLER_373 FILL8 R0 87.7800 161.0400
PhysicalInstance: FILLER_374 FILL8 R0 93.0600 161.0400
PhysicalInstance: FILLER_375 FILL8 R0 98.3400 161.0400
PhysicalInstance: FILLER_376 FILL2 R0 103.6200 161.0400
PhysicalInstance: FILLER_377 FILL1 R0 125.4000 161.0400
PhysicalInstance: FILLER_378 FILL1 R0 146.5200 161.0400
PhysicalInstance: FILLER_379 FILL2 R0 167.6400 161.0400
PhysicalInstance: FILLER_380 FILL4 R0 189.4200 161.0400
PhysicalInstance: FILLER_381 FILL2 R0 192.0600 161.0400
PhysicalInstance: FILLER_382 FILL8 MX 10.5600 168.9600
PhysicalInstance: FILLER_383 FILL8 MX 22.4400 168.9600
PhysicalInstance: FILLER_384 FILL4 MX 27.7200 168.9600
PhysicalInstance: FILLER_385 FILL8 MX 36.9600 168.9600
PhysicalInstance: FILLER_386 FILL2 MX 42.2400 168.9600
PhysicalInstance: FILLER_387 FILL1 MX 43.5600 168.9600
PhysicalInstance: FILLER_388 FILL8 MX 50.8200 168.9600
PhysicalInstance: FILLER_389 FILL4 MX 56.1000 168.9600
PhysicalInstance: FILLER_390 FILL1 MX 58.7400 168.9600
PhysicalInstance: FILLER_391 FILL8 MX 66.0000 168.9600
PhysicalInstance: FILLER_392 FILL4 MX 71.2800 168.9600
PhysicalInstance: FILLER_393 FILL1 MX 73.9200 168.9600
PhysicalInstance: FILLER_394 FILL8 MX 81.1800 168.9600
PhysicalInstance: FILLER_395 FILL4 MX 86.4600 168.9600
PhysicalInstance: FILLER_396 FILL1 MX 89.1000 168.9600
PhysicalInstance: FILLER_397 FILL8 MX 96.3600 168.9600
PhysicalInstance: FILLER_398 FILL4 MX 101.6400 168.9600
PhysicalInstance: FILLER_399 FILL1 MX 110.8800 168.9600
PhysicalInstance: FILLER_400 FILL1 MX 118.1400 168.9600
PhysicalInstance: FILLER_401 FILL1 MX 132.0000 168.9600
PhysicalInstance: FILLER_402 FILL1 MX 139.2600 168.9600
PhysicalInstance: FILLER_403 FILL2 MX 146.5200 168.9600
PhysicalInstance: FILLER_404 FILL1 MX 147.8400 168.9600
PhysicalInstance: FILLER_405 FILL4 MX 155.1000 168.9600
PhysicalInstance: FILLER_406 FILL2 MX 157.7400 168.9600
PhysicalInstance: FILLER_407 FILL1 MX 159.0600 168.9600
PhysicalInstance: FILLER_408 FILL4 MX 166.3200 168.9600
PhysicalInstance: FILLER_409 FILL2 MX 168.9600 168.9600
PhysicalInstance: FILLER_410 FILL4 MX 176.8800 168.9600
PhysicalInstance: FILLER_411 FILL2 MX 179.5200 168.9600
PhysicalInstance: FILLER_412 FILL1 MX 180.8400 168.9600
PhysicalInstance: FILLER_413 FILL8 MX 188.1000 168.9600

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
    <Partition name="digitalControlBlock" hinst="" coreToLeft=0.0000 coreToRight=0.0000 coreToTop=0.0000 coreToBottom=0.0000 pinSpacingNorth=2 pinSpacingWest=2 pinSpacingSouth=2 pinSpacingEast=2 blockedLayers=0x3f >
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
SprFile: digitalControlBlock.fp.spr

#######################################################################################
#  IO: <instName> <cellName> <lx> <ly> <side> <orient> {-power|-ground|-} \           #
#      [isCovered isPrePlaced]                                                        #
#  IOPin: <pinName> <x> <y> <side> <layerId> <width> <depth> {placed|fixed|cover|-} <nrBox> #
#    PinBox: <llx> <lly> <urx> <ury>                                                  #
#    PinPoly: <nrPt> <x1> <y1> <x2> <y2> ...<xn> <yn>                                 #
#######################################################################################
IOPin: Gdata[5] 144.8700 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 144.7200 186.5800 145.0200 186.8800 -lyr 5
IOPin: Gdata[4] 136.9500 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 136.8000 186.5800 137.1000 186.8800 -lyr 5
IOPin: Gdata[3] 129.6900 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 129.5400 186.5800 129.8400 186.8800 -lyr 5
IOPin: Gdata[2] 122.4300 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 122.2800 186.5800 122.5800 186.8800 -lyr 5
IOPin: Gdata[1] 114.5100 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 114.3600 186.5800 114.6600 186.8800 -lyr 5
IOPin: Gdata[0] 107.2500 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 107.1000 186.5800 107.4000 186.8800 -lyr 5
IOPin: Bdata[11] 92.0700 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 91.9200 186.5800 92.2200 186.8800 -lyr 5
IOPin: Bdata[10] 84.8100 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 84.6600 186.5800 84.9600 186.8800 -lyr 5
IOPin: Bdata[9] 76.8900 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 76.7400 186.5800 77.0400 186.8800 -lyr 5
IOPin: Bdata[8] 69.6300 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 69.4800 186.5800 69.7800 186.8800 -lyr 5
IOPin: Bdata[7] 62.3700 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 62.2200 186.5800 62.5200 186.8800 -lyr 5
IOPin: Bdata[6] 55.1100 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 54.9600 186.5800 55.2600 186.8800 -lyr 5
IOPin: Bdata[5] 47.1900 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 47.0400 186.5800 47.3400 186.8800 -lyr 5
IOPin: Bdata[4] 39.9300 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 39.7800 186.5800 40.0800 186.8800 -lyr 5
IOPin: Bdata[3] 32.6700 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 32.5200 186.5800 32.8200 186.8800 -lyr 5
IOPin: Bdata[2] 24.7500 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 24.6000 186.5800 24.9000 186.8800 -lyr 5
IOPin: Bdata[1] 17.4900 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 17.3400 186.5800 17.6400 186.8800 -lyr 5
IOPin: Bdata[0] 10.2300 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 10.0800 186.5800 10.3800 186.8800 -lyr 5
IOPin: REF16Bits[9] 115.8300 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 115.6800 0.0000 115.9800 0.3000 -lyr 2
IOPin: REF16Bits[8] 105.2700 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 105.1200 0.0000 105.4200 0.3000 -lyr 2
IOPin: REF16Bits[7] 94.0500 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 93.9000 0.0000 94.2000 0.3000 -lyr 2
IOPin: REF16Bits[6] 83.4900 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 83.3400 0.0000 83.6400 0.3000 -lyr 2
IOPin: REF16Bits[5] 72.9300 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 72.7800 0.0000 73.0800 0.3000 -lyr 2
IOPin: REF16Bits[4] 62.3700 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 62.2200 0.0000 62.5200 0.3000 -lyr 2
IOPin: REF16Bits[3] 51.8100 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 51.6600 0.0000 51.9600 0.3000 -lyr 2
IOPin: REF16Bits[2] 41.2500 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 41.1000 0.0000 41.4000 0.3000 -lyr 2
IOPin: REF16Bits[1] 30.6900 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 30.5400 0.0000 30.8400 0.3000 -lyr 2
IOPin: REF16Bits[0] 20.1300 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 19.9800 0.0000 20.2800 0.3000 -lyr 2
IOPin: globalReset 203.7900 20.1300 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 19.9800 203.7900 20.2800 -lyr 5
IOPin: reData 0.0000 39.9300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 39.7800 0.3000 40.0800 -lyr 5
IOPin: reCLK 0.0000 20.1300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 19.9800 0.3000 20.2800 -lyr 5
IOPin: REF6Bit[5] 0.0000 159.3900 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 159.2400 0.3000 159.5400 -lyr 5
IOPin: REF6Bit[4] 0.0000 138.9300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 138.7800 0.3000 139.0800 -lyr 5
IOPin: REF6Bit[3] 0.0000 119.1300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 118.9800 0.3000 119.2800 -lyr 5
IOPin: REF6Bit[2] 0.0000 99.3300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 99.1800 0.3000 99.4800 -lyr 5
IOPin: REF6Bit[1] 0.0000 79.5300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 79.3800 0.3000 79.6800 -lyr 5
IOPin: REF6Bit[0] 0.0000 59.7300 W 5 0.3000 0.3000 fixed 1
  PinBox: 0.0000 59.5800 0.3000 59.8800 -lyr 5
IOPin: REF16Bits[15] 179.1900 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 179.0400 0.0000 179.3400 0.3000 -lyr 2
IOPin: REF16Bits[14] 168.6300 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 168.4800 0.0000 168.7800 0.3000 -lyr 2
IOPin: REF16Bits[13] 158.0700 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 157.9200 0.0000 158.2200 0.3000 -lyr 2
IOPin: REF16Bits[12] 147.5100 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 147.3600 0.0000 147.6600 0.3000 -lyr 2
IOPin: REF16Bits[11] 136.9500 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 136.8000 0.0000 137.1000 0.3000 -lyr 2
IOPin: REF16Bits[10] 126.3900 0.0000 S 2 0.3000 0.3000 fixed 1
  PinBox: 126.2400 0.0000 126.5400 0.3000 -lyr 2
IOPin: Rdata[11] 203.7900 159.3900 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 159.2400 203.7900 159.5400 -lyr 5
IOPin: Rdata[10] 203.7900 147.5100 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 147.3600 203.7900 147.6600 -lyr 5
IOPin: Rdata[9] 203.7900 135.6300 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 135.4800 203.7900 135.7800 -lyr 5
IOPin: Rdata[8] 203.7900 124.4100 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 124.2600 203.7900 124.5600 -lyr 5
IOPin: Rdata[7] 203.7900 112.5300 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 112.3800 203.7900 112.6800 -lyr 5
IOPin: Rdata[6] 203.7900 101.3100 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 101.1600 203.7900 101.4600 -lyr 5
IOPin: Rdata[5] 203.7900 89.4300 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 89.2800 203.7900 89.5800 -lyr 5
IOPin: Rdata[4] 203.7900 77.5500 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 77.4000 203.7900 77.7000 -lyr 5
IOPin: Rdata[3] 203.7900 66.3300 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 66.1800 203.7900 66.4800 -lyr 5
IOPin: Rdata[2] 203.7900 54.4500 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 54.3000 203.7900 54.6000 -lyr 5
IOPin: Rdata[1] 203.7900 43.2300 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 43.0800 203.7900 43.3800 -lyr 5
IOPin: Rdata[0] 203.7900 31.3500 E 5 0.3000 0.3000 fixed 1
  PinBox: 203.4900 31.2000 203.7900 31.5000 -lyr 5
IOPin: Gdata[11] 189.7500 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 189.6000 186.5800 189.9000 186.8800 -lyr 5
IOPin: Gdata[10] 181.8300 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 181.6800 186.5800 181.9800 186.8800 -lyr 5
IOPin: Gdata[9] 174.5700 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 174.4200 186.5800 174.7200 186.8800 -lyr 5
IOPin: Gdata[8] 167.3100 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 167.1600 186.5800 167.4600 186.8800 -lyr 5
IOPin: Gdata[7] 159.3900 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 159.2400 186.5800 159.5400 186.8800 -lyr 5
IOPin: Gdata[6] 152.1300 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 151.9800 186.5800 152.2800 186.8800 -lyr 5
IOPin: dataOut 99.3300 186.8800 N 5 0.3000 0.3000 fixed 1
  PinBox: 99.1800 186.5800 99.4800 186.8800 -lyr 5

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
  <Pin name="dataOut" status="fixed" >
    <Port>
      <Pref x=99.3300 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=99.1800 lly=186.5800 urx=99.4800 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[11]" status="fixed" >
    <Port>
      <Pref x=92.0700 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=91.9200 lly=186.5800 urx=92.2200 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[10]" status="fixed" >
    <Port>
      <Pref x=84.8100 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=84.6600 lly=186.5800 urx=84.9600 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[9]" status="fixed" >
    <Port>
      <Pref x=76.8900 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=76.7400 lly=186.5800 urx=77.0400 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[8]" status="fixed" >
    <Port>
      <Pref x=69.6300 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=69.4800 lly=186.5800 urx=69.7800 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[7]" status="fixed" >
    <Port>
      <Pref x=62.3700 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=62.2200 lly=186.5800 urx=62.5200 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[6]" status="fixed" >
    <Port>
      <Pref x=55.1100 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=54.9600 lly=186.5800 urx=55.2600 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[5]" status="fixed" >
    <Port>
      <Pref x=47.1900 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=47.0400 lly=186.5800 urx=47.3400 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[4]" status="fixed" >
    <Port>
      <Pref x=39.9300 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=39.7800 lly=186.5800 urx=40.0800 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[3]" status="fixed" >
    <Port>
      <Pref x=32.6700 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=32.5200 lly=186.5800 urx=32.8200 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[2]" status="fixed" >
    <Port>
      <Pref x=24.7500 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=24.6000 lly=186.5800 urx=24.9000 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[1]" status="fixed" >
    <Port>
      <Pref x=17.4900 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=17.3400 lly=186.5800 urx=17.6400 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Bdata[0]" status="fixed" >
    <Port>
      <Pref x=10.2300 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=10.0800 lly=186.5800 urx=10.3800 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[11]" status="fixed" >
    <Port>
      <Pref x=189.7500 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=189.6000 lly=186.5800 urx=189.9000 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[10]" status="fixed" >
    <Port>
      <Pref x=181.8300 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=181.6800 lly=186.5800 urx=181.9800 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[9]" status="fixed" >
    <Port>
      <Pref x=174.5700 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=174.4200 lly=186.5800 urx=174.7200 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[8]" status="fixed" >
    <Port>
      <Pref x=167.3100 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=167.1600 lly=186.5800 urx=167.4600 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[7]" status="fixed" >
    <Port>
      <Pref x=159.3900 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=159.2400 lly=186.5800 urx=159.5400 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[6]" status="fixed" >
    <Port>
      <Pref x=152.1300 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=151.9800 lly=186.5800 urx=152.2800 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[5]" status="fixed" >
    <Port>
      <Pref x=144.8700 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=144.7200 lly=186.5800 urx=145.0200 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[4]" status="fixed" >
    <Port>
      <Pref x=136.9500 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=136.8000 lly=186.5800 urx=137.1000 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[3]" status="fixed" >
    <Port>
      <Pref x=129.6900 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=129.5400 lly=186.5800 urx=129.8400 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[2]" status="fixed" >
    <Port>
      <Pref x=122.4300 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=122.2800 lly=186.5800 urx=122.5800 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[1]" status="fixed" >
    <Port>
      <Pref x=114.5100 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=114.3600 lly=186.5800 urx=114.6600 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Gdata[0]" status="fixed" >
    <Port>
      <Pref x=107.2500 y=186.8800 side=N width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=107.1000 lly=186.5800 urx=107.4000 ury=186.8800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[11]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=159.3900 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=159.2400 urx=203.7900 ury=159.5400 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[10]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=147.5100 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=147.3600 urx=203.7900 ury=147.6600 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[9]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=135.6300 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=135.4800 urx=203.7900 ury=135.7800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[8]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=124.4100 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=124.2600 urx=203.7900 ury=124.5600 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[7]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=112.5300 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=112.3800 urx=203.7900 ury=112.6800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[6]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=101.3100 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=101.1600 urx=203.7900 ury=101.4600 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[5]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=89.4300 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=89.2800 urx=203.7900 ury=89.5800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[4]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=77.5500 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=77.4000 urx=203.7900 ury=77.7000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[3]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=66.3300 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=66.1800 urx=203.7900 ury=66.4800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[2]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=54.4500 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=54.3000 urx=203.7900 ury=54.6000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[1]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=43.2300 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=43.0800 urx=203.7900 ury=43.3800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Rdata[0]" status="fixed" >
    <Port>
      <Pref x=203.7900 y=31.3500 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=31.2000 urx=203.7900 ury=31.5000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="reCLK" status="fixed" >
    <Port>
      <Pref x=0.0000 y=20.1300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=19.9800 urx=0.3000 ury=20.2800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="reData" status="fixed" >
    <Port>
      <Pref x=0.0000 y=39.9300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=39.7800 urx=0.3000 ury=40.0800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="globalReset" status="fixed" >
    <Port>
      <Pref x=203.7900 y=20.1300 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=203.4900 lly=19.9800 urx=203.7900 ury=20.2800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[15]" status="fixed" >
    <Port>
      <Pref x=179.1900 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=179.0400 lly=0.0000 urx=179.3400 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[14]" status="fixed" >
    <Port>
      <Pref x=168.6300 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=168.4800 lly=0.0000 urx=168.7800 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[13]" status="fixed" >
    <Port>
      <Pref x=158.0700 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=157.9200 lly=0.0000 urx=158.2200 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[12]" status="fixed" >
    <Port>
      <Pref x=147.5100 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=147.3600 lly=0.0000 urx=147.6600 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[11]" status="fixed" >
    <Port>
      <Pref x=136.9500 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=136.8000 lly=0.0000 urx=137.1000 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[10]" status="fixed" >
    <Port>
      <Pref x=126.3900 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=126.2400 lly=0.0000 urx=126.5400 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[9]" status="fixed" >
    <Port>
      <Pref x=115.8300 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=115.6800 lly=0.0000 urx=115.9800 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[8]" status="fixed" >
    <Port>
      <Pref x=105.2700 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=105.1200 lly=0.0000 urx=105.4200 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[7]" status="fixed" >
    <Port>
      <Pref x=94.0500 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=93.9000 lly=0.0000 urx=94.2000 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[6]" status="fixed" >
    <Port>
      <Pref x=83.4900 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=83.3400 lly=0.0000 urx=83.6400 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[5]" status="fixed" >
    <Port>
      <Pref x=72.9300 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=72.7800 lly=0.0000 urx=73.0800 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[4]" status="fixed" >
    <Port>
      <Pref x=62.3700 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=62.2200 lly=0.0000 urx=62.5200 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[3]" status="fixed" >
    <Port>
      <Pref x=51.8100 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=51.6600 lly=0.0000 urx=51.9600 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[2]" status="fixed" >
    <Port>
      <Pref x=41.2500 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=41.1000 lly=0.0000 urx=41.4000 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[1]" status="fixed" >
    <Port>
      <Pref x=30.6900 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=30.5400 lly=0.0000 urx=30.8400 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF16Bits[0]" status="fixed" >
    <Port>
      <Pref x=20.1300 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=19.9800 lly=0.0000 urx=20.2800 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF6Bit[5]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=159.3900 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=159.2400 urx=0.3000 ury=159.5400 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF6Bit[4]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=138.9300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=138.7800 urx=0.3000 ury=139.0800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF6Bit[3]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=119.1300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=118.9800 urx=0.3000 ury=119.2800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF6Bit[2]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=99.3300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=99.1800 urx=0.3000 ury=99.4800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF6Bit[1]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=79.5300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=79.3800 urx=0.3000 ury=79.6800 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="REF6Bit[0]" status="fixed" >
    <Port>
      <Pref x=0.0000 y=59.7300 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=59.5800 urx=0.3000 ury=59.8800 />
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
  <Design name="digitalControlBlock">
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
