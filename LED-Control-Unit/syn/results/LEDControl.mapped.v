/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Sat May 14 15:40:15 2022
/////////////////////////////////////////////////////////////


module Counter12Bit_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  INVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Counter12Bit ( result, clk, globalReset );
  output [11:0] result;
  input clk, globalReset;
  wire   RST, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N17, n17,
         n18, n19, n20, n21, n11, n14, n16, n22, n23;

  SDFFSRX1 result_reg_0_ ( .D(N3), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n11), .Q(result[0]) );
  SDFFSRX1 result_reg_11_ ( .D(N14), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n14), .Q(result[11]) );
  DFFSRX1 RST_reg ( .D(n21), .CK(clk), .RN(1'b1), .SN(n16), .Q(RST) );
  SDFFSRX1 result_reg_1_ ( .D(N4), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n11), .Q(result[1]) );
  SDFFSRX1 result_reg_2_ ( .D(N5), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n14), .Q(result[2]) );
  SDFFSRX1 result_reg_3_ ( .D(N6), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n11), .Q(result[3]) );
  SDFFSRX1 result_reg_4_ ( .D(N7), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n14), .Q(result[4]) );
  SDFFSRX1 result_reg_5_ ( .D(N8), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n11), .Q(result[5]) );
  SDFFSRX1 result_reg_6_ ( .D(N9), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n14), .Q(result[6]) );
  SDFFSRX1 result_reg_7_ ( .D(N10), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n11), .Q(result[7]) );
  SDFFSRX1 result_reg_8_ ( .D(N11), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n14), .Q(result[8]) );
  SDFFSRX1 result_reg_9_ ( .D(N12), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n11), .Q(result[9]) );
  SDFFSRX1 result_reg_10_ ( .D(N13), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n23), 
        .RN(n14), .Q(result[10]) );
  NAND2X2 U18 ( .A(result[9]), .B(result[8]), .Y(n18) );
  OR4X1 U20 ( .A(n17), .B(n18), .C(n19), .D(n20), .Y(n21) );
  NAND3X1 U21 ( .A(result[3]), .B(result[2]), .C(result[4]), .Y(n20) );
  NAND3X1 U22 ( .A(result[11]), .B(result[10]), .C(result[1]), .Y(n19) );
  NAND3X1 U23 ( .A(result[6]), .B(result[5]), .C(result[7]), .Y(n17) );
  OR2X1 U24 ( .A(globalReset), .B(n22), .Y(N17) );
  Counter12Bit_DW01_inc_0 add_95 ( .A(result), .SUM({N14, N13, N12, N11, N10, 
        N9, N8, N7, N6, N5, N4, N3}) );
  BUFX3 U13 ( .A(RST), .Y(n11) );
  BUFX3 U16 ( .A(RST), .Y(n14) );
  INVX1 U19 ( .A(N17), .Y(n16) );
  INVX1 U25 ( .A(n11), .Y(n22) );
  INVX1 U26 ( .A(globalReset), .Y(n23) );
endmodule


module Comparator12Bit ( Vout, A, B );
  input [11:0] A;
  input [11:0] B;
  output Vout;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14;

  AOI21X1 U18 ( .A0(n16), .A1(B[11]), .B0(n17), .Y(n15) );
  NOR2X1 U19 ( .A(n16), .B(n18), .Y(n17) );
  AOI22X1 U20 ( .A0(n19), .A1(B[10]), .B0(n1), .B1(n10), .Y(n18) );
  AOI22X1 U21 ( .A0(n9), .A1(n21), .B0(B[9]), .B1(n22), .Y(n20) );
  OAI22X1 U22 ( .A0(n23), .A1(n11), .B0(n24), .B1(n8), .Y(n21) );
  AOI22X1 U23 ( .A0(n7), .A1(n25), .B0(B[7]), .B1(n26), .Y(n24) );
  OAI22X1 U24 ( .A0(n27), .A1(n12), .B0(n28), .B1(n6), .Y(n25) );
  AOI22X1 U25 ( .A0(n5), .A1(n29), .B0(B[5]), .B1(n30), .Y(n28) );
  OAI22X1 U26 ( .A0(n31), .A1(n13), .B0(n32), .B1(n4), .Y(n29) );
  AOI22X1 U27 ( .A0(n3), .A1(n33), .B0(B[3]), .B1(n34), .Y(n32) );
  OAI22X1 U28 ( .A0(n35), .A1(n14), .B0(n36), .B1(n2), .Y(n33) );
  AOI22X1 U29 ( .A0(n37), .A1(B[0]), .B0(B[1]), .B1(n38), .Y(n36) );
  NOR2X1 U30 ( .A(A[0]), .B(n38), .Y(n37) );
  XOR2X1 U31 ( .A(B[1]), .B(A[1]), .Y(n38) );
  XOR2X1 U32 ( .A(n14), .B(A[2]), .Y(n35) );
  XOR2X1 U33 ( .A(B[3]), .B(A[3]), .Y(n34) );
  XOR2X1 U34 ( .A(n13), .B(A[4]), .Y(n31) );
  XOR2X1 U35 ( .A(B[5]), .B(A[5]), .Y(n30) );
  XOR2X1 U36 ( .A(n12), .B(A[6]), .Y(n27) );
  XOR2X1 U37 ( .A(B[7]), .B(A[7]), .Y(n26) );
  XOR2X1 U38 ( .A(n11), .B(A[8]), .Y(n23) );
  XOR2X1 U39 ( .A(B[9]), .B(A[9]), .Y(n22) );
  XOR2X1 U40 ( .A(B[10]), .B(A[10]), .Y(n19) );
  XOR2X1 U41 ( .A(B[11]), .B(A[11]), .Y(n16) );
  INVX8 U3 ( .A(n15), .Y(Vout) );
  INVX1 U4 ( .A(n20), .Y(n1) );
  INVX1 U5 ( .A(n35), .Y(n2) );
  INVX1 U6 ( .A(n34), .Y(n3) );
  INVX1 U7 ( .A(n31), .Y(n4) );
  INVX1 U8 ( .A(n30), .Y(n5) );
  INVX1 U9 ( .A(n27), .Y(n6) );
  INVX1 U10 ( .A(n26), .Y(n7) );
  INVX1 U11 ( .A(n23), .Y(n8) );
  INVX1 U12 ( .A(n22), .Y(n9) );
  INVX1 U13 ( .A(n19), .Y(n10) );
  INVX1 U14 ( .A(B[8]), .Y(n11) );
  INVX1 U15 ( .A(B[6]), .Y(n12) );
  INVX1 U16 ( .A(B[4]), .Y(n13) );
  INVX1 U17 ( .A(B[2]), .Y(n14) );
endmodule


module LEDControl ( oscillator, LEDFrameData, globalReset, power );
  input [11:0] LEDFrameData;
  input oscillator, globalReset;
  output power;

  wire   [11:0] counterResult;

  Counter12Bit count ( .result(counterResult), .clk(oscillator), .globalReset(
        globalReset) );
  Comparator12Bit comp ( .Vout(power), .A(counterResult), .B(LEDFrameData) );
endmodule

