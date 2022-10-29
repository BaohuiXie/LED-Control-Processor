/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Thu Apr 28 15:23:38 2022
/////////////////////////////////////////////////////////////
module DFF_encoder_0 (
	Q, 
	D, 
	clk, 
	globalReset);
   output Q;
   input D;
   input clk;
   input globalReset;

   // Internal wires
   wire n1;

   DFFSRX1 Q_reg (.SN(1'b1), 
	.RN(n1), 
	.Q(Q), 
	.D(D), 
	.CK(clk));
   INVX4 U3 (.Y(n1), 
	.A(globalReset));
endmodule

module DIV8CLK (
	reverse, 
	globalReset, 
	clk);
   output reverse;
   input globalReset;
   input clk;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n17;
   wire n19;
   wire n20;
   wire n21;

   DFFSRX1 count_reg_0_ (.SN(n17), 
	.RN(1'b1), 
	.QN(n11), 
	.D(n21), 
	.CK(clk));
   DFFSRX1 count_reg_2_ (.SN(1'b1), 
	.RN(n17), 
	.QN(n12), 
	.D(n20), 
	.CK(clk));
   DFFSRX1 count_reg_1_ (.SN(1'b1), 
	.RN(n17), 
	.QN(n10), 
	.D(n19), 
	.CK(clk));
   DFFSRX1 reverse_reg (.SN(1'b1), 
	.RN(n17), 
	.Q(reverse), 
	.D(n14), 
	.CK(clk));
   OR2X1 U3 (.Y(n14), 
	.B(n2), 
	.A(n1));
   NOR3X1 U4 (.Y(n2), 
	.C(n3), 
	.B(reverse), 
	.A(n12));
   AOI21X1 U5 (.Y(n1), 
	.B0(n6), 
	.A1(n5), 
	.A0(n4));
   INVX1 U6 (.Y(n6), 
	.A(reverse));
   INVX1 U7 (.Y(n17), 
	.A(globalReset));
   AOI21X1 U8 (.Y(n19), 
	.B0(n5), 
	.A1(n7), 
	.A0(n12));
   INVX1 U9 (.Y(n20), 
	.A(n8));
   OAI21X1 U10 (.Y(n8), 
	.B0(n3), 
	.A1(n7), 
	.A0(n4));
   INVX1 U11 (.Y(n3), 
	.A(n5));
   AND2X1 U12 (.Y(n5), 
	.B(n11), 
	.A(n10));
   NOR2X1 U13 (.Y(n7), 
	.B(n11), 
	.A(n10));
   INVX1 U14 (.Y(n4), 
	.A(n12));
   OAI21X1 U15 (.Y(n21), 
	.B0(n9), 
	.A1(n12), 
	.A0(n10));
   INVX1 U16 (.Y(n9), 
	.A(n11));
endmodule

module DFF_encoder_1 (
	Q, 
	D, 
	clk, 
	globalReset);
   output Q;
   input D;
   input clk;
   input globalReset;

   // Internal wires
   wire n4;

   DFFSRX1 Q_reg (.SN(1'b1), 
	.RN(n4), 
	.Q(Q), 
	.D(D), 
	.CK(clk));
   INVX4 U3 (.Y(n4), 
	.A(globalReset));
endmodule

module DFF_encoder_2 (
	Q, 
	D, 
	clk, 
	globalReset);
   output Q;
   input D;
   input clk;
   input globalReset;

   // Internal wires
   wire n4;

   DFFSRX1 Q_reg (.SN(1'b1), 
	.RN(n4), 
	.Q(Q), 
	.D(D), 
	.CK(clk));
   INVX4 U3 (.Y(n4), 
	.A(globalReset));
endmodule

module metastablility_corrected_reData (
	data, 
	reData, 
	globalReset, 
	DIV8);
   output data;
   input reData;
   input globalReset;
   input DIV8;

   // Internal wires
   wire w1;

   DFF_encoder_2 dff7 (.Q(w1), 
	.D(reData), 
	.clk(DIV8), 
	.globalReset(globalReset));
   DFF_encoder_1 dff8 (.Q(data), 
	.D(w1), 
	.clk(DIV8), 
	.globalReset(globalReset));
endmodule

module edgeDetector (
	pulse, 
	clk, 
	balancedCLK);
   output pulse;
   input clk;
   input balancedCLK;

   // Internal wires
   wire x1Out_dly;
   wire n2;

   DFFSRX1 x1Out_dly_reg (.SN(1'b1), 
	.RN(1'b1), 
	.Q(x1Out_dly), 
	.D(n2), 
	.CK(clk));
   INVX1 U4 (.Y(n2), 
	.A(balancedCLK));
   XOR2X1 U5 (.Y(pulse), 
	.B(x1Out_dly), 
	.A(n2));
endmodule

module Counter4Bit (
	count, 
	clk, 
	R, 
	globalReset);
   output [3:0] count;
   input clk;
   input R;
   input globalReset;

   // Internal wires
   wire N9;
   wire n4;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;

   DFFSRX1 count_reg_0_ (.SN(1'b1), 
	.RN(n4), 
	.Q(count[0]), 
	.D(n14), 
	.CK(clk));
   DFFSRX1 count_reg_1_ (.SN(1'b1), 
	.RN(n4), 
	.Q(count[1]), 
	.D(n13), 
	.CK(clk));
   DFFSRX1 count_reg_2_ (.SN(1'b1), 
	.RN(n4), 
	.Q(count[2]), 
	.D(n12), 
	.CK(clk));
   DFFSRX1 count_reg_3_ (.SN(1'b1), 
	.RN(n4), 
	.Q(count[3]), 
	.D(n11), 
	.CK(clk));
   INVX4 U6 (.Y(n4), 
	.A(N9));
   NAND2X2 U8 (.Y(n8), 
	.B(count[1]), 
	.A(n9));
   NAND2X2 U9 (.Y(n14), 
	.B(n10), 
	.A(count[0]));
   INVX1 U10 (.Y(n6), 
	.A(count[3]));
   INVX1 U11 (.Y(n7), 
	.A(count[2]));
   OAI21X1 U12 (.Y(n11), 
	.B0(n6), 
	.A1(n8), 
	.A0(n7));
   XOR2X1 U13 (.Y(n12), 
	.B(n8), 
	.A(n7));
   XOR2X1 U14 (.Y(n13), 
	.B(n9), 
	.A(count[1]));
   AND2X1 U15 (.Y(n9), 
	.B(n10), 
	.A(count[0]));
   NAND3X1 U16 (.Y(n10), 
	.C(count[3]), 
	.B(count[1]), 
	.A(count[2]));
   OR2X1 U17 (.Y(N9), 
	.B(globalReset), 
	.A(R));
endmodule

module Comparator4Bit (
	Vout, 
	A, 
	REF);
   output Vout;
   input [3:0] A;
   input [3:0] REF;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;

   INVX1 U3 (.Y(n1), 
	.A(n7));
   INVX1 U4 (.Y(n2), 
	.A(n8));
   INVX1 U5 (.Y(Vout), 
	.A(n3));
   AOI21X1 U6 (.Y(n3), 
	.B0(n5), 
	.A1(A[3]), 
	.A0(n4));
   NOR2X1 U7 (.Y(n5), 
	.B(n6), 
	.A(n4));
   AOI22X1 U8 (.Y(n6), 
	.B1(n1), 
	.B0(n2), 
	.A1(A[2]), 
	.A0(n7));
   AOI22X1 U9 (.Y(n8), 
	.B1(n10), 
	.B0(A[1]), 
	.A1(A[0]), 
	.A0(n9));
   NOR2X1 U10 (.Y(n9), 
	.B(n10), 
	.A(REF[0]));
   XOR2X1 U11 (.Y(n10), 
	.B(REF[1]), 
	.A(A[1]));
   XOR2X1 U12 (.Y(n7), 
	.B(REF[2]), 
	.A(A[2]));
   XOR2X1 U13 (.Y(n4), 
	.B(REF[3]), 
	.A(A[3]));
endmodule

module DFF_IDLE (
	Q, 
	R, 
	clk, 
	globalReset);
   output Q;
   input R;
   input clk;
   input globalReset;

   // Internal wires
   wire n1;
   wire n2;

   SDFFSRX1 Q_reg (.SN(n2), 
	.SI(1'b0), 
	.SE(1'b0), 
	.RN(n1), 
	.Q(Q), 
	.D(1'b1), 
	.CK(clk));
   INVX4 U3 (.Y(n1), 
	.A(R));
   INVX4 U4 (.Y(n2), 
	.A(globalReset));
endmodule

module IDLEdetection (
	IDLE, 
	balancedCLK, 
	clk, 
	REF4Bits, 
	globalReset);
   output IDLE;
   input balancedCLK;
   input clk;
   input [3:0] REF4Bits;
   input globalReset;

   // Internal wires
   wire pulse;
   wire compOut;
   wire [3:0] counterOut;

   edgeDetector ed1 (.pulse(pulse), 
	.clk(clk), 
	.balancedCLK(balancedCLK));
   Counter4Bit c1 (.count({ counterOut[3],
		counterOut[2],
		counterOut[1],
		counterOut[0] }), 
	.clk(clk), 
	.R(pulse), 
	.globalReset(globalReset));
   Comparator4Bit comp1 (.Vout(compOut), 
	.A({ counterOut[3],
		counterOut[2],
		counterOut[1],
		counterOut[0] }), 
	.REF({ REF4Bits[3],
		REF4Bits[2],
		REF4Bits[1],
		REF4Bits[0] }));
   DFF_IDLE dff2 (.Q(IDLE), 
	.R(pulse), 
	.clk(compOut), 
	.globalReset(globalReset));
endmodule

module FSM (
	out, 
	metaData, 
	IDLE, 
	DIV8_CLK, 
	globalReset);
   output out;
   input metaData;
   input IDLE;
   input DIV8_CLK;
   input globalReset;

   // Internal wires
   wire n15;
   wire next_state_1_;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire [2:0] state;

   DFFSRX1 state_reg_0_ (.SN(1'b1), 
	.RN(n8), 
	.Q(state[0]), 
	.D(n6), 
	.CK(DIV8_CLK));
   DFFSRX1 state_reg_1_ (.SN(1'b1), 
	.RN(n8), 
	.Q(state[1]), 
	.D(next_state_1_), 
	.CK(DIV8_CLK));
   DFFSRX1 state_reg_2_ (.SN(1'b1), 
	.RN(n8), 
	.Q(state[2]), 
	.D(n4), 
	.CK(DIV8_CLK));
   INVX1 U6 (.Y(n4), 
	.A(n10));
   INVX1 U7 (.Y(n5), 
	.A(state[2]));
   INVX1 U8 (.Y(n6), 
	.A(n11));
   INVX1 U9 (.Y(n7), 
	.A(state[0]));
   INVX1 U10 (.Y(n8), 
	.A(globalReset));
   NOR3X1 U11 (.Y(n15), 
	.C(next_state_1_), 
	.B(globalReset), 
	.A(n9));
   AOI21X1 U12 (.Y(n9), 
	.B0(n6), 
	.A1(n5), 
	.A0(state[0]));
   NAND4X1 U13 (.Y(n10), 
	.D(state[1]), 
	.C(state[0]), 
	.B(n8), 
	.A(n5));
   OAI21X1 U14 (.Y(next_state_1_), 
	.B0(n12), 
	.A1(n11), 
	.A0(metaData));
   OR4X1 U15 (.Y(n12), 
	.D(state[2]), 
	.C(state[1]), 
	.B(globalReset), 
	.A(n7));
   NAND3X1 U16 (.Y(n11), 
	.C(n13), 
	.B(n7), 
	.A(n8));
   AOI21X1 U17 (.Y(n13), 
	.B0(IDLE), 
	.A1(state[1]), 
	.A0(state[2]));
   BUFX3 U18 (.Y(out), 
	.A(n15));
endmodule

module DFF_encoder_3 (
	Q, 
	D, 
	clk, 
	globalReset);
   output Q;
   input D;
   input clk;
   input globalReset;

   // Internal wires
   wire n4;

   DFFSRX1 Q_reg (.SN(1'b1), 
	.RN(n4), 
	.Q(Q), 
	.D(D), 
	.CK(clk));
   INVX4 U3 (.Y(n4), 
	.A(globalReset));
endmodule

module encoder (
	out, 
	balanceCLK, 
	REF4Bits, 
	reData, 
	clk, 
	globalReset);
   output out;
   input balanceCLK;
   input [3:0] REF4Bits;
   input reData;
   input clk;
   input globalReset;

   // Internal wires
   wire q1;
   wire DIV8_CLK;
   wire balanceCLK_delayed;
   wire metaData;
   wire IDLE;

   DFF_encoder_0 dff9 (.Q(q1), 
	.D(balanceCLK), 
	.clk(DIV8_CLK), 
	.globalReset(globalReset));
   DFF_encoder_3 dff10 (.Q(balanceCLK_delayed), 
	.D(q1), 
	.clk(DIV8_CLK), 
	.globalReset(globalReset));
   DIV8CLK DIV8CLK1 (.reverse(DIV8_CLK), 
	.globalReset(globalReset), 
	.clk(clk));
   metastablility_corrected_reData metastablility_corrected_reData1 (.data(metaData), 
	.reData(reData), 
	.globalReset(globalReset), 
	.DIV8(DIV8_CLK));
   IDLEdetection IDLEdetection1 (.IDLE(IDLE), 
	.balancedCLK(balanceCLK_delayed), 
	.clk(clk), 
	.REF4Bits({ REF4Bits[3],
		REF4Bits[2],
		REF4Bits[1],
		REF4Bits[0] }), 
	.globalReset(globalReset));
   FSM FSM1 (.out(out), 
	.metaData(metaData), 
	.IDLE(IDLE), 
	.DIV8_CLK(DIV8_CLK), 
	.globalReset(globalReset));
endmodule

