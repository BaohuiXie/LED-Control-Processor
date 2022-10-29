/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Fri May  6 13:28:27 2022
/////////////////////////////////////////////////////////////


module Counter ( count, out, clk, globalReset, EN );
  output [3:0] count;
  input clk, globalReset, EN;
  output out;
  wire   N25, N26, N27, N28, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;

  DFFSRX1 count_reg_0_ ( .D(N25), .CK(clk), .RN(n5), .SN(1'b1), .Q(count[0])
         );
  DFFSRX1 count_reg_1_ ( .D(N26), .CK(clk), .RN(n5), .SN(1'b1), .Q(count[1])
         );
  DFFSRX1 count_reg_2_ ( .D(N27), .CK(clk), .RN(1'b1), .SN(n5), .Q(count[2])
         );
  DFFSRX1 count_reg_3_ ( .D(N28), .CK(clk), .RN(1'b1), .SN(n5), .Q(count[3])
         );
  DFFSRX1 out_reg ( .D(n19), .CK(clk), .RN(n5), .SN(1'b1), .Q(out) );
  INVX4 U7 ( .A(globalReset), .Y(n5) );
  NAND2X2 U9 ( .A(count[3]), .B(n15), .Y(n13) );
  NAND2X2 U10 ( .A(count[2]), .B(n9), .Y(n16) );
  INVX1 U11 ( .A(n14), .Y(n7) );
  INVX1 U12 ( .A(n12), .Y(n8) );
  INVX1 U13 ( .A(n18), .Y(n9) );
  INVX1 U14 ( .A(EN), .Y(n10) );
  NOR2X1 U15 ( .A(n11), .B(n10), .Y(n19) );
  AOI22X1 U16 ( .A0(count[0]), .A1(n12), .B0(out), .B1(n8), .Y(n11) );
  NAND3X1 U17 ( .A(n13), .B(n7), .C(EN), .Y(N28) );
  NAND3X1 U18 ( .A(n16), .B(n15), .C(EN), .Y(N27) );
  NOR3X1 U19 ( .A(n10), .B(n14), .C(n17), .Y(N26) );
  AOI21X1 U20 ( .A0(count[1]), .A1(count[0]), .B0(n18), .Y(n17) );
  NOR2X1 U21 ( .A(n15), .B(count[3]), .Y(n14) );
  OR2X1 U22 ( .A(n9), .B(count[2]), .Y(n15) );
  NOR2X1 U23 ( .A(count[0]), .B(count[1]), .Y(n18) );
  NOR3X1 U24 ( .A(n10), .B(count[0]), .C(n12), .Y(N25) );
  NOR3X1 U25 ( .A(count[2]), .B(count[3]), .C(count[1]), .Y(n12) );
endmodule


module Comparator4BitInverted ( Vout, A, REF );
  input [3:0] A;
  input [3:0] REF;
  output Vout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  INVX1 U3 ( .A(n7), .Y(n1) );
  INVX1 U4 ( .A(n8), .Y(n2) );
  INVX1 U5 ( .A(A[2]), .Y(n3) );
  INVX1 U6 ( .A(n11), .Y(n4) );
  INVX1 U7 ( .A(A[0]), .Y(n5) );
  OAI22X1 U8 ( .A0(A[3]), .A1(n1), .B0(n6), .B1(n7), .Y(Vout) );
  AOI22X1 U9 ( .A0(n8), .A1(n9), .B0(n2), .B1(n3), .Y(n6) );
  OAI21X1 U10 ( .A0(A[1]), .A1(n4), .B0(n10), .Y(n9) );
  OAI21X1 U11 ( .A0(REF[0]), .A1(n5), .B0(n4), .Y(n10) );
  XOR2X1 U12 ( .A(A[1]), .B(REF[1]), .Y(n11) );
  XOR2X1 U13 ( .A(n3), .B(REF[2]), .Y(n8) );
  XOR2X1 U14 ( .A(A[3]), .B(REF[3]), .Y(n7) );
endmodule


module delayBlock ( delayPulse, reCLK, REF, globalReset, osc );
  input [3:0] REF;
  input reCLK, globalReset, osc;
  output delayPulse;
  wire   compOut, EN;
  wire   [3:0] counterOut;

  Counter counter1 ( .count(counterOut), .out(delayPulse), .clk(osc), 
        .globalReset(globalReset), .EN(EN) );
  Comparator4BitInverted comp1 ( .Vout(compOut), .A(counterOut), .REF(REF) );
  OR2X1 U1 ( .A(compOut), .B(reCLK), .Y(EN) );
endmodule


module DFF_decoder ( Q, D, clk, reset );
  input D, clk, reset;
  output Q;
  wire   n1, n3;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .RN(n1), .SN(1'b1), .QN(n3) );
  INVX4 U3 ( .A(reset), .Y(n1) );
  INVX8 U5 ( .A(n3), .Y(Q) );
endmodule


module Counter4b ( count, RST, globalReset, clk );
  output [3:0] count;
  input RST, globalReset, clk;
  wire   n4, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  SDFFSRX1 count_reg_0_ ( .D(n14), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n4), 
        .RN(RST), .Q(count[0]) );
  SDFFSRX1 count_reg_1_ ( .D(n13), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n4), 
        .RN(RST), .Q(count[1]) );
  SDFFSRX1 count_reg_2_ ( .D(n12), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n4), 
        .RN(RST), .Q(count[2]), .QN(n7) );
  SDFFSRX1 count_reg_3_ ( .D(n11), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n4), 
        .RN(RST), .Q(count[3]), .QN(n6) );
  INVX4 U6 ( .A(globalReset), .Y(n4) );
  NAND2X2 U8 ( .A(n9), .B(count[1]), .Y(n8) );
  NAND2X2 U9 ( .A(count[0]), .B(n10), .Y(n14) );
  OAI21X1 U10 ( .A0(n7), .A1(n8), .B0(n6), .Y(n11) );
  XOR2X1 U11 ( .A(n7), .B(n8), .Y(n12) );
  XOR2X1 U12 ( .A(count[1]), .B(n9), .Y(n13) );
  AND2X1 U13 ( .A(count[0]), .B(n10), .Y(n9) );
  NAND3X1 U14 ( .A(count[2]), .B(count[1]), .C(count[3]), .Y(n10) );
endmodule


module Comparator4Bit ( Vout, A, REF );
  input [3:0] A;
  input [3:0] REF;
  output Vout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  INVX1 U3 ( .A(n7), .Y(n1) );
  INVX1 U4 ( .A(n8), .Y(n2) );
  INVX1 U5 ( .A(n3), .Y(Vout) );
  AOI21X1 U6 ( .A0(n4), .A1(A[3]), .B0(n5), .Y(n3) );
  NOR2X1 U7 ( .A(n4), .B(n6), .Y(n5) );
  AOI22X1 U8 ( .A0(n7), .A1(A[2]), .B0(n2), .B1(n1), .Y(n6) );
  AOI22X1 U9 ( .A0(n9), .A1(A[0]), .B0(A[1]), .B1(n10), .Y(n8) );
  NOR2X1 U10 ( .A(REF[0]), .B(n10), .Y(n9) );
  XOR2X1 U11 ( .A(A[1]), .B(REF[1]), .Y(n10) );
  XOR2X1 U12 ( .A(A[2]), .B(REF[2]), .Y(n7) );
  XOR2X1 U13 ( .A(A[3]), .B(REF[3]), .Y(n4) );
endmodule


module modifiedDFF ( Q, R, clk );
  input R, clk;
  output Q;
  wire   n3, n1;

  INVX1 U3 ( .A(clk), .Y(n1) );
  NOR2X1 U4 ( .A(R), .B(n1), .Y(n3) );
  BUFX3 U5 ( .A(n3), .Y(Q) );
endmodule


module balanceBlock ( balanceCLK, globalReset, osc, REF, reCLK );
  input [3:0] REF;
  input globalReset, osc, reCLK;
  output balanceCLK;
  wire   compOut;
  wire   [3:0] countOut;

  Counter4b counter2 ( .count(countOut), .RST(reCLK), .globalReset(globalReset), .clk(osc) );
  Comparator4Bit comparator2 ( .Vout(compOut), .A(countOut), .REF(REF) );
  modifiedDFF modifiedDFF1 ( .Q(balanceCLK), .R(compOut), .clk(reCLK) );
endmodule


module decoder ( recoveredData, recoveredCLK, balancedCLK, ManchesterCode, osc, 
        REF, globalReset );
  input [3:0] REF;
  input ManchesterCode, osc, globalReset;
  output recoveredData, recoveredCLK, balancedCLK;
  wire   n4, delayPulse, n1, n3;

  delayBlock db1 ( .delayPulse(delayPulse), .reCLK(n3), .REF(REF), 
        .globalReset(globalReset), .osc(osc) );
  DFF_decoder dff1 ( .Q(recoveredData), .D(ManchesterCode), .clk(delayPulse), 
        .reset(globalReset) );
  balanceBlock bb1 ( .balanceCLK(balancedCLK), .globalReset(globalReset), 
        .osc(osc), .REF(REF), .reCLK(n1) );
  XOR2X1 U1 ( .A(recoveredData), .B(ManchesterCode), .Y(n4) );
  BUFX3 U2 ( .A(n4), .Y(n1) );
  BUFX3 U3 ( .A(n4), .Y(recoveredCLK) );
  BUFX3 U4 ( .A(n4), .Y(n3) );
endmodule

