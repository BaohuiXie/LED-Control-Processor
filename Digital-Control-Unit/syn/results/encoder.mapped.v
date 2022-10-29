/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Fri Apr 29 02:43:58 2022
/////////////////////////////////////////////////////////////


module DFF_encoder_0 ( Q, D, clk, globalReset );
  input D, clk, globalReset;
  output Q;
  wire   n1;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .RN(n1), .SN(1'b1), .Q(Q) );
  INVX4 U3 ( .A(globalReset), .Y(n1) );
endmodule


module DIV8CLK ( reverse, globalReset, clk );
  input globalReset, clk;
  output reverse;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n17, n19, n20,
         n21;

  DFFSRX1 count_reg_0_ ( .D(n21), .CK(clk), .RN(1'b1), .SN(n17), .QN(n11) );
  DFFSRX1 count_reg_2_ ( .D(n20), .CK(clk), .RN(n17), .SN(1'b1), .QN(n12) );
  DFFSRX1 count_reg_1_ ( .D(n19), .CK(clk), .RN(n17), .SN(1'b1), .QN(n10) );
  DFFSRX1 reverse_reg ( .D(n14), .CK(clk), .RN(n17), .SN(1'b1), .Q(reverse) );
  OR2X1 U3 ( .A(n1), .B(n2), .Y(n14) );
  NOR3X1 U4 ( .A(n12), .B(reverse), .C(n3), .Y(n2) );
  AOI21X1 U5 ( .A0(n4), .A1(n5), .B0(n6), .Y(n1) );
  INVX1 U6 ( .A(reverse), .Y(n6) );
  INVX1 U7 ( .A(globalReset), .Y(n17) );
  AOI21X1 U8 ( .A0(n12), .A1(n7), .B0(n5), .Y(n19) );
  INVX1 U9 ( .A(n8), .Y(n20) );
  OAI21X1 U10 ( .A0(n4), .A1(n7), .B0(n3), .Y(n8) );
  INVX1 U11 ( .A(n5), .Y(n3) );
  AND2X1 U12 ( .A(n10), .B(n11), .Y(n5) );
  NOR2X1 U13 ( .A(n10), .B(n11), .Y(n7) );
  INVX1 U14 ( .A(n12), .Y(n4) );
  OAI21X1 U15 ( .A0(n10), .A1(n12), .B0(n9), .Y(n21) );
  INVX1 U16 ( .A(n11), .Y(n9) );
endmodule


module DFF_encoder_1 ( Q, D, clk, globalReset );
  input D, clk, globalReset;
  output Q;
  wire   n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .RN(n4), .SN(1'b1), .Q(Q) );
  INVX4 U3 ( .A(globalReset), .Y(n4) );
endmodule


module DFF_encoder_2 ( Q, D, clk, globalReset );
  input D, clk, globalReset;
  output Q;
  wire   n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .RN(n4), .SN(1'b1), .Q(Q) );
  INVX4 U3 ( .A(globalReset), .Y(n4) );
endmodule


module metastablility_corrected_reData ( data, reData, globalReset, DIV8 );
  input reData, globalReset, DIV8;
  output data;
  wire   w1;

  DFF_encoder_2 dff7 ( .Q(w1), .D(reData), .clk(DIV8), .globalReset(
        globalReset) );
  DFF_encoder_1 dff8 ( .Q(data), .D(w1), .clk(DIV8), .globalReset(globalReset)
         );
endmodule


module edgeDetector ( pulse, clk, balancedCLK );
  input clk, balancedCLK;
  output pulse;
  wire   x1Out_dly, n2;

  DFFSRX1 x1Out_dly_reg ( .D(n2), .CK(clk), .RN(1'b1), .SN(1'b1), .Q(x1Out_dly) );
  INVX1 U4 ( .A(balancedCLK), .Y(n2) );
  XOR2X1 U5 ( .A(n2), .B(x1Out_dly), .Y(pulse) );
endmodule


module Counter4Bit ( count, clk, R, globalReset );
  output [3:0] count;
  input clk, R, globalReset;
  wire   N9, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  DFFSRX1 count_reg_0_ ( .D(n14), .CK(clk), .RN(n4), .SN(1'b1), .Q(count[0])
         );
  DFFSRX1 count_reg_1_ ( .D(n13), .CK(clk), .RN(n4), .SN(1'b1), .Q(count[1])
         );
  DFFSRX1 count_reg_2_ ( .D(n12), .CK(clk), .RN(n4), .SN(1'b1), .Q(count[2])
         );
  DFFSRX1 count_reg_3_ ( .D(n11), .CK(clk), .RN(n4), .SN(1'b1), .Q(count[3])
         );
  INVX4 U6 ( .A(N9), .Y(n4) );
  NAND2X2 U8 ( .A(n9), .B(count[1]), .Y(n8) );
  NAND2X2 U9 ( .A(count[0]), .B(n10), .Y(n14) );
  INVX1 U10 ( .A(count[3]), .Y(n6) );
  INVX1 U11 ( .A(count[2]), .Y(n7) );
  OAI21X1 U12 ( .A0(n7), .A1(n8), .B0(n6), .Y(n11) );
  XOR2X1 U13 ( .A(n7), .B(n8), .Y(n12) );
  XOR2X1 U14 ( .A(count[1]), .B(n9), .Y(n13) );
  AND2X1 U15 ( .A(count[0]), .B(n10), .Y(n9) );
  NAND3X1 U16 ( .A(count[2]), .B(count[1]), .C(count[3]), .Y(n10) );
  OR2X1 U17 ( .A(R), .B(globalReset), .Y(N9) );
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


module DFF_IDLE ( Q, R, clk, globalReset );
  input R, clk, globalReset;
  output Q;
  wire   n1, n2;

  SDFFSRX1 Q_reg ( .D(1'b1), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n2), .RN(n1), 
        .Q(Q) );
  INVX4 U3 ( .A(R), .Y(n1) );
  INVX4 U4 ( .A(globalReset), .Y(n2) );
endmodule


module IDLEdetection ( IDLE, balancedCLK, clk, REF4Bits, globalReset );
  input [3:0] REF4Bits;
  input balancedCLK, clk, globalReset;
  output IDLE;
  wire   pulse, compOut;
  wire   [3:0] counterOut;

  edgeDetector ed1 ( .pulse(pulse), .clk(clk), .balancedCLK(balancedCLK) );
  Counter4Bit c1 ( .count(counterOut), .clk(clk), .R(pulse), .globalReset(
        globalReset) );
  Comparator4Bit comp1 ( .Vout(compOut), .A(counterOut), .REF(REF4Bits) );
  DFF_IDLE dff2 ( .Q(IDLE), .R(pulse), .clk(compOut), .globalReset(globalReset) );
endmodule


module FSM ( out, metaData, IDLE, DIV8_CLK, globalReset );
  input metaData, IDLE, DIV8_CLK, globalReset;
  output out;
  wire   n15, next_state_1_, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [2:0] state;

  DFFSRX1 state_reg_0_ ( .D(n6), .CK(DIV8_CLK), .RN(n8), .SN(1'b1), .Q(
        state[0]) );
  DFFSRX1 state_reg_1_ ( .D(next_state_1_), .CK(DIV8_CLK), .RN(n8), .SN(1'b1), 
        .Q(state[1]) );
  DFFSRX1 state_reg_2_ ( .D(n4), .CK(DIV8_CLK), .RN(n8), .SN(1'b1), .Q(
        state[2]) );
  INVX1 U6 ( .A(n10), .Y(n4) );
  INVX1 U7 ( .A(state[2]), .Y(n5) );
  INVX1 U8 ( .A(n11), .Y(n6) );
  INVX1 U9 ( .A(state[0]), .Y(n7) );
  INVX1 U10 ( .A(globalReset), .Y(n8) );
  NOR3X1 U11 ( .A(n9), .B(globalReset), .C(next_state_1_), .Y(n15) );
  AOI21X1 U12 ( .A0(state[0]), .A1(n5), .B0(n6), .Y(n9) );
  NAND4X1 U13 ( .A(n5), .B(n8), .C(state[0]), .D(state[1]), .Y(n10) );
  OAI21X1 U14 ( .A0(metaData), .A1(n11), .B0(n12), .Y(next_state_1_) );
  OR4X1 U15 ( .A(n7), .B(globalReset), .C(state[1]), .D(state[2]), .Y(n12) );
  NAND3X1 U16 ( .A(n8), .B(n7), .C(n13), .Y(n11) );
  AOI21X1 U17 ( .A0(state[2]), .A1(state[1]), .B0(IDLE), .Y(n13) );
  BUFX3 U18 ( .A(n15), .Y(out) );
endmodule


module DFF_encoder_3 ( Q, D, clk, globalReset );
  input D, clk, globalReset;
  output Q;
  wire   n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .RN(n4), .SN(1'b1), .Q(Q) );
  INVX4 U3 ( .A(globalReset), .Y(n4) );
endmodule


module encoder ( out, balanceCLK, REF4Bits, reData, clk, globalReset );
  input [3:0] REF4Bits;
  input balanceCLK, reData, clk, globalReset;
  output out;
  wire   q1, DIV8_CLK, balanceCLK_delayed, metaData, IDLE;

  DFF_encoder_0 dff9 ( .Q(q1), .D(balanceCLK), .clk(DIV8_CLK), .globalReset(
        globalReset) );
  DFF_encoder_3 dff10 ( .Q(balanceCLK_delayed), .D(q1), .clk(DIV8_CLK), 
        .globalReset(globalReset) );
  DIV8CLK DIV8CLK1 ( .reverse(DIV8_CLK), .globalReset(globalReset), .clk(clk)
         );
  metastablility_corrected_reData metastablility_corrected_reData1 ( .data(
        metaData), .reData(reData), .globalReset(globalReset), .DIV8(DIV8_CLK)
         );
  IDLEdetection IDLEdetection1 ( .IDLE(IDLE), .balancedCLK(balanceCLK_delayed), 
        .clk(clk), .REF4Bits(REF4Bits), .globalReset(globalReset) );
  FSM FSM1 ( .out(out), .metaData(metaData), .IDLE(IDLE), .DIV8_CLK(DIV8_CLK), 
        .globalReset(globalReset) );
endmodule

