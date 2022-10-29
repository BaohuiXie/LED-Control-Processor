/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Thu Apr 28 22:30:59 2022
/////////////////////////////////////////////////////////////


module shiftReg13Bit_0 ( out, data, in, clk, globalReset );
  output [11:0] data;
  input in, clk, globalReset;
  output out;
  wire   n13;

  DFFSRX1 current_reg_12_ ( .D(in), .CK(clk), .RN(n13), .SN(1'b1), .Q(data[11]) );
  DFFSRX1 current_reg_11_ ( .D(data[11]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[10]) );
  DFFSRX1 current_reg_10_ ( .D(data[10]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[9]) );
  DFFSRX1 current_reg_9_ ( .D(data[9]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[8]) );
  DFFSRX1 current_reg_8_ ( .D(data[8]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[7]) );
  DFFSRX1 current_reg_7_ ( .D(data[7]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[6]) );
  DFFSRX1 current_reg_6_ ( .D(data[6]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[5]) );
  DFFSRX1 current_reg_5_ ( .D(data[5]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[4]) );
  DFFSRX1 current_reg_4_ ( .D(data[4]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[3]) );
  DFFSRX1 current_reg_3_ ( .D(data[3]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[2]) );
  DFFSRX1 current_reg_2_ ( .D(data[2]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[1]) );
  DFFSRX1 current_reg_1_ ( .D(data[1]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[0]) );
  DFFSRX1 current_reg_0_ ( .D(data[0]), .CK(clk), .RN(n13), .SN(1'b1), .Q(out)
         );
  INVX1 U15 ( .A(globalReset), .Y(n13) );
endmodule


module shiftReg13Bit_2 ( out, data, in, clk, globalReset );
  output [11:0] data;
  input in, clk, globalReset;
  output out;
  wire   n13;

  DFFSRX1 current_reg_12_ ( .D(in), .CK(clk), .RN(n13), .SN(1'b1), .Q(data[11]) );
  DFFSRX1 current_reg_11_ ( .D(data[11]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[10]) );
  DFFSRX1 current_reg_10_ ( .D(data[10]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[9]) );
  DFFSRX1 current_reg_9_ ( .D(data[9]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[8]) );
  DFFSRX1 current_reg_8_ ( .D(data[8]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[7]) );
  DFFSRX1 current_reg_7_ ( .D(data[7]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[6]) );
  DFFSRX1 current_reg_6_ ( .D(data[6]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[5]) );
  DFFSRX1 current_reg_5_ ( .D(data[5]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[4]) );
  DFFSRX1 current_reg_4_ ( .D(data[4]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[3]) );
  DFFSRX1 current_reg_3_ ( .D(data[3]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[2]) );
  DFFSRX1 current_reg_2_ ( .D(data[2]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[1]) );
  DFFSRX1 current_reg_1_ ( .D(data[1]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[0]) );
  DFFSRX1 current_reg_0_ ( .D(data[0]), .CK(clk), .RN(n13), .SN(1'b1), .Q(out)
         );
  INVX1 U15 ( .A(globalReset), .Y(n13) );
endmodule


module shiftReg13Bit_1 ( out, data, in, clk, globalReset );
  output [11:0] data;
  input in, clk, globalReset;
  output out;
  wire   n13;

  DFFSRX1 current_reg_12_ ( .D(in), .CK(clk), .RN(n13), .SN(1'b1), .Q(data[11]) );
  DFFSRX1 current_reg_11_ ( .D(data[11]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[10]) );
  DFFSRX1 current_reg_10_ ( .D(data[10]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[9]) );
  DFFSRX1 current_reg_9_ ( .D(data[9]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[8]) );
  DFFSRX1 current_reg_8_ ( .D(data[8]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[7]) );
  DFFSRX1 current_reg_7_ ( .D(data[7]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[6]) );
  DFFSRX1 current_reg_6_ ( .D(data[6]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[5]) );
  DFFSRX1 current_reg_5_ ( .D(data[5]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[4]) );
  DFFSRX1 current_reg_4_ ( .D(data[4]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[3]) );
  DFFSRX1 current_reg_3_ ( .D(data[3]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[2]) );
  DFFSRX1 current_reg_2_ ( .D(data[2]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[1]) );
  DFFSRX1 current_reg_1_ ( .D(data[1]), .CK(clk), .RN(n13), .SN(1'b1), .Q(
        data[0]) );
  DFFSRX1 current_reg_0_ ( .D(data[0]), .CK(clk), .RN(n13), .SN(1'b1), .Q(out)
         );
  INVX1 U15 ( .A(globalReset), .Y(n13) );
endmodule


module shiftReg16Bit ( out, data, in, clk, globalReset );
  output [15:0] data;
  input in, clk, globalReset;
  output out;
  wire   n21, n16, n20;

  DFFSRX1 current_reg_15_ ( .D(in), .CK(clk), .RN(n20), .SN(1'b1), .Q(data[15]) );
  DFFSRX1 current_reg_14_ ( .D(data[15]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[14]) );
  DFFSRX1 current_reg_13_ ( .D(data[14]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[13]) );
  DFFSRX1 current_reg_12_ ( .D(data[13]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[12]) );
  DFFSRX1 current_reg_11_ ( .D(data[12]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[11]) );
  DFFSRX1 current_reg_10_ ( .D(data[11]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[10]) );
  DFFSRX1 current_reg_9_ ( .D(data[10]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[9]) );
  DFFSRX1 current_reg_8_ ( .D(data[9]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[8]) );
  DFFSRX1 current_reg_7_ ( .D(data[8]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[7]) );
  DFFSRX1 current_reg_6_ ( .D(data[7]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[6]) );
  DFFSRX1 current_reg_5_ ( .D(data[6]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[5]) );
  DFFSRX1 current_reg_4_ ( .D(data[5]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[4]) );
  DFFSRX1 current_reg_3_ ( .D(data[4]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[3]) );
  DFFSRX1 current_reg_2_ ( .D(data[3]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[2]) );
  DFFSRX1 current_reg_1_ ( .D(data[2]), .CK(clk), .RN(n20), .SN(1'b1), .Q(
        data[1]) );
  DFFSRX1 current_reg_0_ ( .D(data[1]), .CK(clk), .RN(n20), .SN(1'b1), .Q(n21)
         );
  INVX1 U18 ( .A(n21), .Y(n16) );
  INVX8 U20 ( .A(n16), .Y(out) );
  BUFX3 U21 ( .A(out), .Y(data[0]) );
  INVX1 U22 ( .A(globalReset), .Y(n20) );
endmodule


module Comparator16Bit ( headerDetected, A, REF );
  input [15:0] A;
  input [15:0] REF;
  output headerDetected;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  NOR4X1 U3 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(headerDetected) );
  OR4X1 U4 ( .A(n5), .B(n6), .C(n7), .D(n8), .Y(n4) );
  XOR2X1 U5 ( .A(REF[2]), .B(A[2]), .Y(n8) );
  XOR2X1 U6 ( .A(REF[3]), .B(A[3]), .Y(n7) );
  XOR2X1 U7 ( .A(REF[0]), .B(A[0]), .Y(n6) );
  XOR2X1 U8 ( .A(REF[1]), .B(A[1]), .Y(n5) );
  OR4X1 U9 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n3) );
  XOR2X1 U10 ( .A(REF[7]), .B(A[7]), .Y(n12) );
  XOR2X1 U11 ( .A(REF[8]), .B(A[8]), .Y(n11) );
  XOR2X1 U12 ( .A(REF[4]), .B(A[4]), .Y(n10) );
  XOR2X1 U13 ( .A(REF[5]), .B(A[5]), .Y(n9) );
  OR4X1 U14 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(n2) );
  XOR2X1 U15 ( .A(REF[15]), .B(A[15]), .Y(n16) );
  XOR2X1 U16 ( .A(REF[11]), .B(A[11]), .Y(n15) );
  XOR2X1 U17 ( .A(REF[14]), .B(A[14]), .Y(n14) );
  XOR2X1 U18 ( .A(REF[13]), .B(A[13]), .Y(n13) );
  OR4X1 U19 ( .A(n17), .B(n18), .C(n19), .D(n20), .Y(n1) );
  XOR2X1 U20 ( .A(REF[9]), .B(A[9]), .Y(n20) );
  XOR2X1 U21 ( .A(REF[6]), .B(A[6]), .Y(n19) );
  XOR2X1 U22 ( .A(REF[10]), .B(A[10]), .Y(n18) );
  XOR2X1 U23 ( .A(REF[12]), .B(A[12]), .Y(n17) );
endmodule


module parallelShiftReg12Bit_0 ( data, in, clk, globalReset );
  output [11:0] data;
  input [11:0] in;
  input clk, globalReset;
  wire   n12, n15, n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n37, n38,
         n39;

  DFFSRX1 data_reg_11_ ( .D(in[11]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n12)
         );
  DFFSRX1 data_reg_10_ ( .D(in[10]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n15)
         );
  DFFSRX1 data_reg_9_ ( .D(in[9]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n17) );
  DFFSRX1 data_reg_8_ ( .D(in[8]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n19) );
  DFFSRX1 data_reg_7_ ( .D(in[7]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n21) );
  DFFSRX1 data_reg_6_ ( .D(in[6]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n23) );
  DFFSRX1 data_reg_5_ ( .D(in[5]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n25) );
  DFFSRX1 data_reg_4_ ( .D(in[4]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n27) );
  DFFSRX1 data_reg_3_ ( .D(in[3]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n29) );
  DFFSRX1 data_reg_2_ ( .D(in[2]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n31) );
  DFFSRX1 data_reg_1_ ( .D(in[1]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n33) );
  DFFSRX1 data_reg_0_ ( .D(in[0]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n35) );
  INVX8 U14 ( .A(n12), .Y(data[11]) );
  INVX8 U16 ( .A(n15), .Y(data[10]) );
  INVX8 U17 ( .A(n17), .Y(data[9]) );
  INVX8 U18 ( .A(n19), .Y(data[8]) );
  INVX8 U19 ( .A(n21), .Y(data[7]) );
  INVX8 U20 ( .A(n23), .Y(data[6]) );
  INVX8 U21 ( .A(n25), .Y(data[5]) );
  INVX8 U22 ( .A(n27), .Y(data[4]) );
  INVX8 U23 ( .A(n29), .Y(data[3]) );
  INVX8 U24 ( .A(n31), .Y(data[2]) );
  INVX8 U25 ( .A(n33), .Y(data[1]) );
  INVX8 U26 ( .A(n35), .Y(data[0]) );
  INVX8 U27 ( .A(n38), .Y(n37) );
  INVX8 U28 ( .A(clk), .Y(n38) );
  INVX1 U29 ( .A(globalReset), .Y(n39) );
endmodule


module parallelShiftReg12Bit_2 ( data, in, clk, globalReset );
  output [11:0] data;
  input [11:0] in;
  input clk, globalReset;
  wire   n12, n15, n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n37, n38,
         n39;

  DFFSRX1 data_reg_11_ ( .D(in[11]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n12)
         );
  DFFSRX1 data_reg_10_ ( .D(in[10]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n15)
         );
  DFFSRX1 data_reg_9_ ( .D(in[9]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n17) );
  DFFSRX1 data_reg_8_ ( .D(in[8]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n19) );
  DFFSRX1 data_reg_7_ ( .D(in[7]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n21) );
  DFFSRX1 data_reg_6_ ( .D(in[6]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n23) );
  DFFSRX1 data_reg_5_ ( .D(in[5]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n25) );
  DFFSRX1 data_reg_4_ ( .D(in[4]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n27) );
  DFFSRX1 data_reg_3_ ( .D(in[3]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n29) );
  DFFSRX1 data_reg_2_ ( .D(in[2]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n31) );
  DFFSRX1 data_reg_1_ ( .D(in[1]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n33) );
  DFFSRX1 data_reg_0_ ( .D(in[0]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n35) );
  INVX8 U14 ( .A(n12), .Y(data[11]) );
  INVX8 U16 ( .A(n15), .Y(data[10]) );
  INVX8 U17 ( .A(n17), .Y(data[9]) );
  INVX8 U18 ( .A(n19), .Y(data[8]) );
  INVX8 U19 ( .A(n21), .Y(data[7]) );
  INVX8 U20 ( .A(n23), .Y(data[6]) );
  INVX8 U21 ( .A(n25), .Y(data[5]) );
  INVX8 U22 ( .A(n27), .Y(data[4]) );
  INVX8 U23 ( .A(n29), .Y(data[3]) );
  INVX8 U24 ( .A(n31), .Y(data[2]) );
  INVX8 U25 ( .A(n33), .Y(data[1]) );
  INVX8 U26 ( .A(n35), .Y(data[0]) );
  INVX8 U27 ( .A(n38), .Y(n37) );
  INVX8 U28 ( .A(clk), .Y(n38) );
  INVX1 U29 ( .A(globalReset), .Y(n39) );
endmodule


module parallelShiftReg12Bit_1 ( data, in, clk, globalReset );
  output [11:0] data;
  input [11:0] in;
  input clk, globalReset;
  wire   n12, n15, n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n37, n38,
         n39;

  DFFSRX1 data_reg_11_ ( .D(in[11]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n12)
         );
  DFFSRX1 data_reg_10_ ( .D(in[10]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n15)
         );
  DFFSRX1 data_reg_9_ ( .D(in[9]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n17) );
  DFFSRX1 data_reg_8_ ( .D(in[8]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n19) );
  DFFSRX1 data_reg_7_ ( .D(in[7]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n21) );
  DFFSRX1 data_reg_6_ ( .D(in[6]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n23) );
  DFFSRX1 data_reg_5_ ( .D(in[5]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n25) );
  DFFSRX1 data_reg_4_ ( .D(in[4]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n27) );
  DFFSRX1 data_reg_3_ ( .D(in[3]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n29) );
  DFFSRX1 data_reg_2_ ( .D(in[2]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n31) );
  DFFSRX1 data_reg_1_ ( .D(in[1]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n33) );
  DFFSRX1 data_reg_0_ ( .D(in[0]), .CK(n37), .RN(n39), .SN(1'b1), .QN(n35) );
  INVX8 U14 ( .A(n12), .Y(data[11]) );
  INVX8 U16 ( .A(n15), .Y(data[10]) );
  INVX8 U17 ( .A(n17), .Y(data[9]) );
  INVX8 U18 ( .A(n19), .Y(data[8]) );
  INVX8 U19 ( .A(n21), .Y(data[7]) );
  INVX8 U20 ( .A(n23), .Y(data[6]) );
  INVX8 U21 ( .A(n25), .Y(data[5]) );
  INVX8 U22 ( .A(n27), .Y(data[4]) );
  INVX8 U23 ( .A(n29), .Y(data[3]) );
  INVX8 U24 ( .A(n31), .Y(data[2]) );
  INVX8 U25 ( .A(n33), .Y(data[1]) );
  INVX8 U26 ( .A(n35), .Y(data[0]) );
  INVX8 U27 ( .A(n38), .Y(n37) );
  INVX8 U28 ( .A(clk), .Y(n38) );
  INVX1 U29 ( .A(globalReset), .Y(n39) );
endmodule


module shiftAndRegBlock ( dataOut, headerDetected, Bdata, Gdata, Rdata, REF, 
        reCLK, reData, globalReset, gateCLK );
  output [11:0] Bdata;
  output [11:0] Gdata;
  output [11:0] Rdata;
  input [15:0] REF;
  input reCLK, reData, globalReset, gateCLK;
  output dataOut, headerDetected;
  wire   n3, reg1out, reg2out, reg3out, n2;
  wire   [11:0] reg1Data;
  wire   [11:0] reg2Data;
  wire   [11:0] reg3Data;
  wire   [15:0] A;

  shiftReg13Bit_0 reg13BitB ( .out(reg1out), .data(reg1Data), .in(reData), 
        .clk(reCLK), .globalReset(globalReset) );
  shiftReg13Bit_2 reg13BitG ( .out(reg2out), .data(reg2Data), .in(reg1out), 
        .clk(reCLK), .globalReset(globalReset) );
  shiftReg13Bit_1 reg13BitR ( .out(reg3out), .data(reg3Data), .in(reg2out), 
        .clk(reCLK), .globalReset(globalReset) );
  shiftReg16Bit reg16Bit1 ( .out(dataOut), .data(A), .in(reg3out), .clk(
        gateCLK), .globalReset(globalReset) );
  Comparator16Bit comparator16Bit1 ( .headerDetected(n3), .A(A), .REF(REF) );
  parallelShiftReg12Bit_0 Preg12BitB ( .data(Bdata), .in(reg1Data), .clk(
        headerDetected), .globalReset(globalReset) );
  parallelShiftReg12Bit_2 Preg12BitG ( .data(Gdata), .in(reg2Data), .clk(
        headerDetected), .globalReset(globalReset) );
  parallelShiftReg12Bit_1 Preg12BitR ( .data(Rdata), .in(reg3Data), .clk(
        headerDetected), .globalReset(globalReset) );
  INVX8 U1 ( .A(n2), .Y(headerDetected) );
  INVX8 U2 ( .A(n3), .Y(n2) );
endmodule


module Counter6Bit ( count, clk, globalReset, R );
  output [5:0] count;
  input clk, globalReset, R;
  wire   N6, N7, N8, N9, N10, N11, n1, n3, n4, n5, n6, n8, n10, n12, n14, n16,
         n17, n19, n2;
  wire   [5:2] add_94_carry;

  DFFSRX1 count_reg_0_ ( .D(n19), .CK(clk), .RN(n17), .SN(1'b1), .Q(count[0]), 
        .QN(n6) );
  DFFSRX1 count_reg_1_ ( .D(n16), .CK(clk), .RN(n17), .SN(1'b1), .Q(count[1])
         );
  DFFSRX1 count_reg_2_ ( .D(n14), .CK(clk), .RN(n17), .SN(1'b1), .Q(count[2]), 
        .QN(n4) );
  DFFSRX1 count_reg_3_ ( .D(n12), .CK(clk), .RN(n17), .SN(1'b1), .Q(count[3])
         );
  DFFSRX1 count_reg_4_ ( .D(n10), .CK(clk), .RN(n17), .SN(1'b1), .Q(count[4])
         );
  DFFSRX1 count_reg_5_ ( .D(n8), .CK(clk), .RN(n17), .SN(1'b1), .Q(count[5]), 
        .QN(n5) );
  OR2X1 U3 ( .A(n1), .B(N11), .Y(n8) );
  OR2X1 U4 ( .A(n1), .B(N10), .Y(n10) );
  OR2X1 U5 ( .A(n1), .B(N9), .Y(n12) );
  OR2X1 U6 ( .A(n1), .B(N8), .Y(n14) );
  OR2X1 U7 ( .A(n1), .B(N7), .Y(n16) );
  NOR2X1 U8 ( .A(globalReset), .B(n2), .Y(n17) );
  OR2X1 U10 ( .A(n1), .B(N6), .Y(n19) );
  NOR4X1 U11 ( .A(n4), .B(n5), .C(n6), .D(n3), .Y(n1) );
  NAND3X1 U12 ( .A(count[3]), .B(count[1]), .C(count[4]), .Y(n3) );
  ADDHX1 add_94_U1_1_1 ( .A(count[1]), .B(count[0]), .CO(add_94_carry[2]), .S(
        N7) );
  ADDHX1 add_94_U1_1_2 ( .A(count[2]), .B(add_94_carry[2]), .CO(
        add_94_carry[3]), .S(N8) );
  ADDHX1 add_94_U1_1_3 ( .A(count[3]), .B(add_94_carry[3]), .CO(
        add_94_carry[4]), .S(N9) );
  ADDHX1 add_94_U1_1_4 ( .A(count[4]), .B(add_94_carry[4]), .CO(
        add_94_carry[5]), .S(N10) );
  INVX8 U9 ( .A(R), .Y(n2) );
  INVX1 U19 ( .A(count[0]), .Y(N6) );
  XOR2X1 U20 ( .A(add_94_carry[5]), .B(count[5]), .Y(N11) );
endmodule


module Comparator6Bit ( Vout, A, REF );
  input [5:0] A;
  input [5:0] REF;
  output Vout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  AND2X1 U3 ( .A(n1), .B(n2), .Y(Vout) );
  NOR3X1 U4 ( .A(n3), .B(n4), .C(n5), .Y(n2) );
  XOR2X1 U5 ( .A(REF[4]), .B(A[4]), .Y(n5) );
  XOR2X1 U6 ( .A(REF[5]), .B(A[5]), .Y(n4) );
  XOR2X1 U7 ( .A(REF[3]), .B(A[3]), .Y(n3) );
  NOR3X1 U8 ( .A(n6), .B(n7), .C(n8), .Y(n1) );
  XOR2X1 U9 ( .A(REF[1]), .B(A[1]), .Y(n8) );
  XOR2X1 U10 ( .A(REF[2]), .B(A[2]), .Y(n7) );
  XOR2X1 U11 ( .A(REF[0]), .B(A[0]), .Y(n6) );
endmodule


module DFF_digitalControlBlock ( notQ, R, clk, globalReset );
  input R, clk, globalReset;
  output notQ;
  wire   N0, n1;

  DFFSRX1 notQ_reg ( .D(1'b0), .CK(clk), .RN(1'b1), .SN(n1), .Q(notQ) );
  OR2X1 U5 ( .A(R), .B(globalReset), .Y(N0) );
  INVX1 U3 ( .A(N0), .Y(n1) );
endmodule


module GatedCLKBlock ( GatedCLK, headerDetected, globalReset, REF, reCLK );
  input [5:0] REF;
  input headerDetected, globalReset, reCLK;
  output GatedCLK;
  wire   compOut, notQ;
  wire   [5:0] countOut;

  AND2X1 U1 ( .A(reCLK), .B(notQ), .Y(GatedCLK) );
  Counter6Bit counter1 ( .count(countOut), .clk(reCLK), .globalReset(
        globalReset), .R(headerDetected) );
  Comparator6Bit comparator1 ( .Vout(compOut), .A(countOut), .REF(REF) );
  DFF_digitalControlBlock dff1 ( .notQ(notQ), .R(compOut), .clk(headerDetected), .globalReset(globalReset) );
endmodule


module digitalControlBlock ( dataOut, Bdata, Gdata, Rdata, reCLK, reData, 
        globalReset, REF16Bits, REF6Bit );
  output [11:0] Bdata;
  output [11:0] Gdata;
  output [11:0] Rdata;
  input [15:0] REF16Bits;
  input [5:0] REF6Bit;
  input reCLK, reData, globalReset;
  output dataOut;
  wire   headerDetected, gateCLK;

  shiftAndRegBlock SRblock ( .dataOut(dataOut), .headerDetected(headerDetected), .Bdata(Bdata), .Gdata(Gdata), .Rdata(Rdata), .REF(REF16Bits), .reCLK(reCLK), 
        .reData(reData), .globalReset(globalReset), .gateCLK(gateCLK) );
  GatedCLKBlock GCLKblock ( .GatedCLK(gateCLK), .headerDetected(headerDetected), .globalReset(globalReset), .REF(REF6Bit), .reCLK(reCLK) );
endmodule

