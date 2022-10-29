/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Thu Apr 28 22:30:59 2022
/////////////////////////////////////////////////////////////
module shiftReg13Bit_0 (
	out, 
	data, 
	in, 
	clk, 
	globalReset);
   output out;
   output [11:0] data;
   input in;
   input clk;
   input globalReset;

   // Internal wires
   wire n13;

   DFFSRX1 current_reg_12_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[11]), 
	.D(in), 
	.CK(clk));
   DFFSRX1 current_reg_11_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[10]), 
	.D(data[11]), 
	.CK(clk));
   DFFSRX1 current_reg_10_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[9]), 
	.D(data[10]), 
	.CK(clk));
   DFFSRX1 current_reg_9_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[8]), 
	.D(data[9]), 
	.CK(clk));
   DFFSRX1 current_reg_8_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[7]), 
	.D(data[8]), 
	.CK(clk));
   DFFSRX1 current_reg_7_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[6]), 
	.D(data[7]), 
	.CK(clk));
   DFFSRX1 current_reg_6_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[5]), 
	.D(data[6]), 
	.CK(clk));
   DFFSRX1 current_reg_5_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[4]), 
	.D(data[5]), 
	.CK(clk));
   DFFSRX1 current_reg_4_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[3]), 
	.D(data[4]), 
	.CK(clk));
   DFFSRX1 current_reg_3_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[2]), 
	.D(data[3]), 
	.CK(clk));
   DFFSRX1 current_reg_2_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[1]), 
	.D(data[2]), 
	.CK(clk));
   DFFSRX1 current_reg_1_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[0]), 
	.D(data[1]), 
	.CK(clk));
   DFFSRX1 current_reg_0_ (.SN(1'b1), 
	.RN(n13), 
	.Q(out), 
	.D(data[0]), 
	.CK(clk));
   INVX1 U15 (.Y(n13), 
	.A(globalReset));
endmodule

module shiftReg13Bit_2 (
	out, 
	data, 
	in, 
	clk, 
	globalReset);
   output out;
   output [11:0] data;
   input in;
   input clk;
   input globalReset;

   // Internal wires
   wire n13;

   DFFSRX1 current_reg_12_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[11]), 
	.D(in), 
	.CK(clk));
   DFFSRX1 current_reg_11_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[10]), 
	.D(data[11]), 
	.CK(clk));
   DFFSRX1 current_reg_10_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[9]), 
	.D(data[10]), 
	.CK(clk));
   DFFSRX1 current_reg_9_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[8]), 
	.D(data[9]), 
	.CK(clk));
   DFFSRX1 current_reg_8_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[7]), 
	.D(data[8]), 
	.CK(clk));
   DFFSRX1 current_reg_7_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[6]), 
	.D(data[7]), 
	.CK(clk));
   DFFSRX1 current_reg_6_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[5]), 
	.D(data[6]), 
	.CK(clk));
   DFFSRX1 current_reg_5_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[4]), 
	.D(data[5]), 
	.CK(clk));
   DFFSRX1 current_reg_4_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[3]), 
	.D(data[4]), 
	.CK(clk));
   DFFSRX1 current_reg_3_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[2]), 
	.D(data[3]), 
	.CK(clk));
   DFFSRX1 current_reg_2_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[1]), 
	.D(data[2]), 
	.CK(clk));
   DFFSRX1 current_reg_1_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[0]), 
	.D(data[1]), 
	.CK(clk));
   DFFSRX1 current_reg_0_ (.SN(1'b1), 
	.RN(n13), 
	.Q(out), 
	.D(data[0]), 
	.CK(clk));
   INVX1 U15 (.Y(n13), 
	.A(globalReset));
endmodule

module shiftReg13Bit_1 (
	out, 
	data, 
	in, 
	clk, 
	globalReset);
   output out;
   output [11:0] data;
   input in;
   input clk;
   input globalReset;

   // Internal wires
   wire n13;

   DFFSRX1 current_reg_12_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[11]), 
	.D(in), 
	.CK(clk));
   DFFSRX1 current_reg_11_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[10]), 
	.D(data[11]), 
	.CK(clk));
   DFFSRX1 current_reg_10_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[9]), 
	.D(data[10]), 
	.CK(clk));
   DFFSRX1 current_reg_9_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[8]), 
	.D(data[9]), 
	.CK(clk));
   DFFSRX1 current_reg_8_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[7]), 
	.D(data[8]), 
	.CK(clk));
   DFFSRX1 current_reg_7_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[6]), 
	.D(data[7]), 
	.CK(clk));
   DFFSRX1 current_reg_6_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[5]), 
	.D(data[6]), 
	.CK(clk));
   DFFSRX1 current_reg_5_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[4]), 
	.D(data[5]), 
	.CK(clk));
   DFFSRX1 current_reg_4_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[3]), 
	.D(data[4]), 
	.CK(clk));
   DFFSRX1 current_reg_3_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[2]), 
	.D(data[3]), 
	.CK(clk));
   DFFSRX1 current_reg_2_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[1]), 
	.D(data[2]), 
	.CK(clk));
   DFFSRX1 current_reg_1_ (.SN(1'b1), 
	.RN(n13), 
	.Q(data[0]), 
	.D(data[1]), 
	.CK(clk));
   DFFSRX1 current_reg_0_ (.SN(1'b1), 
	.RN(n13), 
	.Q(out), 
	.D(data[0]), 
	.CK(clk));
   INVX1 U15 (.Y(n13), 
	.A(globalReset));
endmodule

module shiftReg16Bit (
	out, 
	data, 
	in, 
	clk, 
	globalReset);
   output out;
   output [15:0] data;
   input in;
   input clk;
   input globalReset;

   // Internal wires
   wire n21;
   wire n16;
   wire n20;

   DFFSRX1 current_reg_15_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[15]), 
	.D(in), 
	.CK(clk));
   DFFSRX1 current_reg_14_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[14]), 
	.D(data[15]), 
	.CK(clk));
   DFFSRX1 current_reg_13_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[13]), 
	.D(data[14]), 
	.CK(clk));
   DFFSRX1 current_reg_12_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[12]), 
	.D(data[13]), 
	.CK(clk));
   DFFSRX1 current_reg_11_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[11]), 
	.D(data[12]), 
	.CK(clk));
   DFFSRX1 current_reg_10_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[10]), 
	.D(data[11]), 
	.CK(clk));
   DFFSRX1 current_reg_9_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[9]), 
	.D(data[10]), 
	.CK(clk));
   DFFSRX1 current_reg_8_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[8]), 
	.D(data[9]), 
	.CK(clk));
   DFFSRX1 current_reg_7_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[7]), 
	.D(data[8]), 
	.CK(clk));
   DFFSRX1 current_reg_6_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[6]), 
	.D(data[7]), 
	.CK(clk));
   DFFSRX1 current_reg_5_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[5]), 
	.D(data[6]), 
	.CK(clk));
   DFFSRX1 current_reg_4_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[4]), 
	.D(data[5]), 
	.CK(clk));
   DFFSRX1 current_reg_3_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[3]), 
	.D(data[4]), 
	.CK(clk));
   DFFSRX1 current_reg_2_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[2]), 
	.D(data[3]), 
	.CK(clk));
   DFFSRX1 current_reg_1_ (.SN(1'b1), 
	.RN(n20), 
	.Q(data[1]), 
	.D(data[2]), 
	.CK(clk));
   DFFSRX1 current_reg_0_ (.SN(1'b1), 
	.RN(n20), 
	.Q(n21), 
	.D(data[1]), 
	.CK(clk));
   INVX1 U18 (.Y(n16), 
	.A(n21));
   INVX8 U20 (.Y(out), 
	.A(n16));
   BUFX3 U21 (.Y(data[0]), 
	.A(out));
   INVX1 U22 (.Y(n20), 
	.A(globalReset));
endmodule

module Comparator16Bit (
	headerDetected, 
	A, 
	REF);
   output headerDetected;
   input [15:0] A;
   input [15:0] REF;

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
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;

   NOR4X1 U3 (.Y(headerDetected), 
	.D(n4), 
	.C(n3), 
	.B(n2), 
	.A(n1));
   OR4X1 U4 (.Y(n4), 
	.D(n8), 
	.C(n7), 
	.B(n6), 
	.A(n5));
   XOR2X1 U5 (.Y(n8), 
	.B(A[2]), 
	.A(REF[2]));
   XOR2X1 U6 (.Y(n7), 
	.B(A[3]), 
	.A(REF[3]));
   XOR2X1 U7 (.Y(n6), 
	.B(A[0]), 
	.A(REF[0]));
   XOR2X1 U8 (.Y(n5), 
	.B(A[1]), 
	.A(REF[1]));
   OR4X1 U9 (.Y(n3), 
	.D(n12), 
	.C(n11), 
	.B(n10), 
	.A(n9));
   XOR2X1 U10 (.Y(n12), 
	.B(A[7]), 
	.A(REF[7]));
   XOR2X1 U11 (.Y(n11), 
	.B(A[8]), 
	.A(REF[8]));
   XOR2X1 U12 (.Y(n10), 
	.B(A[4]), 
	.A(REF[4]));
   XOR2X1 U13 (.Y(n9), 
	.B(A[5]), 
	.A(REF[5]));
   OR4X1 U14 (.Y(n2), 
	.D(n16), 
	.C(n15), 
	.B(n14), 
	.A(n13));
   XOR2X1 U15 (.Y(n16), 
	.B(A[15]), 
	.A(REF[15]));
   XOR2X1 U16 (.Y(n15), 
	.B(A[11]), 
	.A(REF[11]));
   XOR2X1 U17 (.Y(n14), 
	.B(A[14]), 
	.A(REF[14]));
   XOR2X1 U18 (.Y(n13), 
	.B(A[13]), 
	.A(REF[13]));
   OR4X1 U19 (.Y(n1), 
	.D(n20), 
	.C(n19), 
	.B(n18), 
	.A(n17));
   XOR2X1 U20 (.Y(n20), 
	.B(A[9]), 
	.A(REF[9]));
   XOR2X1 U21 (.Y(n19), 
	.B(A[6]), 
	.A(REF[6]));
   XOR2X1 U22 (.Y(n18), 
	.B(A[10]), 
	.A(REF[10]));
   XOR2X1 U23 (.Y(n17), 
	.B(A[12]), 
	.A(REF[12]));
endmodule

module parallelShiftReg12Bit_0 (
	data, 
	in, 
	clk, 
	globalReset);
   output [11:0] data;
   input [11:0] in;
   input clk;
   input globalReset;

   // Internal wires
   wire n12;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n27;
   wire n29;
   wire n31;
   wire n33;
   wire n35;
   wire n37;
   wire n38;
   wire n39;

   DFFSRX1 data_reg_11_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n12), 
	.D(in[11]), 
	.CK(n37));
   DFFSRX1 data_reg_10_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n15), 
	.D(in[10]), 
	.CK(n37));
   DFFSRX1 data_reg_9_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n17), 
	.D(in[9]), 
	.CK(n37));
   DFFSRX1 data_reg_8_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n19), 
	.D(in[8]), 
	.CK(n37));
   DFFSRX1 data_reg_7_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n21), 
	.D(in[7]), 
	.CK(n37));
   DFFSRX1 data_reg_6_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n23), 
	.D(in[6]), 
	.CK(n37));
   DFFSRX1 data_reg_5_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n25), 
	.D(in[5]), 
	.CK(n37));
   DFFSRX1 data_reg_4_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n27), 
	.D(in[4]), 
	.CK(n37));
   DFFSRX1 data_reg_3_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n29), 
	.D(in[3]), 
	.CK(n37));
   DFFSRX1 data_reg_2_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n31), 
	.D(in[2]), 
	.CK(n37));
   DFFSRX1 data_reg_1_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n33), 
	.D(in[1]), 
	.CK(n37));
   DFFSRX1 data_reg_0_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n35), 
	.D(in[0]), 
	.CK(n37));
   INVX8 U14 (.Y(data[11]), 
	.A(n12));
   INVX8 U16 (.Y(data[10]), 
	.A(n15));
   INVX8 U17 (.Y(data[9]), 
	.A(n17));
   INVX8 U18 (.Y(data[8]), 
	.A(n19));
   INVX8 U19 (.Y(data[7]), 
	.A(n21));
   INVX8 U20 (.Y(data[6]), 
	.A(n23));
   INVX8 U21 (.Y(data[5]), 
	.A(n25));
   INVX8 U22 (.Y(data[4]), 
	.A(n27));
   INVX8 U23 (.Y(data[3]), 
	.A(n29));
   INVX8 U24 (.Y(data[2]), 
	.A(n31));
   INVX8 U25 (.Y(data[1]), 
	.A(n33));
   INVX8 U26 (.Y(data[0]), 
	.A(n35));
   INVX8 U27 (.Y(n37), 
	.A(n38));
   INVX8 U28 (.Y(n38), 
	.A(clk));
   INVX1 U29 (.Y(n39), 
	.A(globalReset));
endmodule

module parallelShiftReg12Bit_2 (
	data, 
	in, 
	clk, 
	globalReset);
   output [11:0] data;
   input [11:0] in;
   input clk;
   input globalReset;

   // Internal wires
   wire n12;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n27;
   wire n29;
   wire n31;
   wire n33;
   wire n35;
   wire n37;
   wire n38;
   wire n39;

   DFFSRX1 data_reg_11_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n12), 
	.D(in[11]), 
	.CK(n37));
   DFFSRX1 data_reg_10_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n15), 
	.D(in[10]), 
	.CK(n37));
   DFFSRX1 data_reg_9_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n17), 
	.D(in[9]), 
	.CK(n37));
   DFFSRX1 data_reg_8_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n19), 
	.D(in[8]), 
	.CK(n37));
   DFFSRX1 data_reg_7_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n21), 
	.D(in[7]), 
	.CK(n37));
   DFFSRX1 data_reg_6_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n23), 
	.D(in[6]), 
	.CK(n37));
   DFFSRX1 data_reg_5_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n25), 
	.D(in[5]), 
	.CK(n37));
   DFFSRX1 data_reg_4_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n27), 
	.D(in[4]), 
	.CK(n37));
   DFFSRX1 data_reg_3_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n29), 
	.D(in[3]), 
	.CK(n37));
   DFFSRX1 data_reg_2_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n31), 
	.D(in[2]), 
	.CK(n37));
   DFFSRX1 data_reg_1_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n33), 
	.D(in[1]), 
	.CK(n37));
   DFFSRX1 data_reg_0_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n35), 
	.D(in[0]), 
	.CK(n37));
   INVX8 U14 (.Y(data[11]), 
	.A(n12));
   INVX8 U16 (.Y(data[10]), 
	.A(n15));
   INVX8 U17 (.Y(data[9]), 
	.A(n17));
   INVX8 U18 (.Y(data[8]), 
	.A(n19));
   INVX8 U19 (.Y(data[7]), 
	.A(n21));
   INVX8 U20 (.Y(data[6]), 
	.A(n23));
   INVX8 U21 (.Y(data[5]), 
	.A(n25));
   INVX8 U22 (.Y(data[4]), 
	.A(n27));
   INVX8 U23 (.Y(data[3]), 
	.A(n29));
   INVX8 U24 (.Y(data[2]), 
	.A(n31));
   INVX8 U25 (.Y(data[1]), 
	.A(n33));
   INVX8 U26 (.Y(data[0]), 
	.A(n35));
   INVX8 U27 (.Y(n37), 
	.A(n38));
   INVX8 U28 (.Y(n38), 
	.A(clk));
   INVX1 U29 (.Y(n39), 
	.A(globalReset));
endmodule

module parallelShiftReg12Bit_1 (
	data, 
	in, 
	clk, 
	globalReset);
   output [11:0] data;
   input [11:0] in;
   input clk;
   input globalReset;

   // Internal wires
   wire n12;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n27;
   wire n29;
   wire n31;
   wire n33;
   wire n35;
   wire n37;
   wire n38;
   wire n39;

   DFFSRX1 data_reg_11_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n12), 
	.D(in[11]), 
	.CK(n37));
   DFFSRX1 data_reg_10_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n15), 
	.D(in[10]), 
	.CK(n37));
   DFFSRX1 data_reg_9_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n17), 
	.D(in[9]), 
	.CK(n37));
   DFFSRX1 data_reg_8_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n19), 
	.D(in[8]), 
	.CK(n37));
   DFFSRX1 data_reg_7_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n21), 
	.D(in[7]), 
	.CK(n37));
   DFFSRX1 data_reg_6_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n23), 
	.D(in[6]), 
	.CK(n37));
   DFFSRX1 data_reg_5_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n25), 
	.D(in[5]), 
	.CK(n37));
   DFFSRX1 data_reg_4_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n27), 
	.D(in[4]), 
	.CK(n37));
   DFFSRX1 data_reg_3_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n29), 
	.D(in[3]), 
	.CK(n37));
   DFFSRX1 data_reg_2_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n31), 
	.D(in[2]), 
	.CK(n37));
   DFFSRX1 data_reg_1_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n33), 
	.D(in[1]), 
	.CK(n37));
   DFFSRX1 data_reg_0_ (.SN(1'b1), 
	.RN(n39), 
	.QN(n35), 
	.D(in[0]), 
	.CK(n37));
   INVX8 U14 (.Y(data[11]), 
	.A(n12));
   INVX8 U16 (.Y(data[10]), 
	.A(n15));
   INVX8 U17 (.Y(data[9]), 
	.A(n17));
   INVX8 U18 (.Y(data[8]), 
	.A(n19));
   INVX8 U19 (.Y(data[7]), 
	.A(n21));
   INVX8 U20 (.Y(data[6]), 
	.A(n23));
   INVX8 U21 (.Y(data[5]), 
	.A(n25));
   INVX8 U22 (.Y(data[4]), 
	.A(n27));
   INVX8 U23 (.Y(data[3]), 
	.A(n29));
   INVX8 U24 (.Y(data[2]), 
	.A(n31));
   INVX8 U25 (.Y(data[1]), 
	.A(n33));
   INVX8 U26 (.Y(data[0]), 
	.A(n35));
   INVX8 U27 (.Y(n37), 
	.A(n38));
   INVX8 U28 (.Y(n38), 
	.A(clk));
   INVX1 U29 (.Y(n39), 
	.A(globalReset));
endmodule

module shiftAndRegBlock (
	dataOut, 
	headerDetected, 
	Bdata, 
	Gdata, 
	Rdata, 
	REF, 
	reCLK, 
	reData, 
	globalReset, 
	gateCLK);
   output dataOut;
   output headerDetected;
   output [11:0] Bdata;
   output [11:0] Gdata;
   output [11:0] Rdata;
   input [15:0] REF;
   input reCLK;
   input reData;
   input globalReset;
   input gateCLK;

   // Internal wires
   wire n3;
   wire reg1out;
   wire reg2out;
   wire reg3out;
   wire n2;
   wire [11:0] reg1Data;
   wire [11:0] reg2Data;
   wire [11:0] reg3Data;
   wire [15:0] A;

   shiftReg13Bit_0 reg13BitB (.out(reg1out), 
	.data({ reg1Data[11],
		reg1Data[10],
		reg1Data[9],
		reg1Data[8],
		reg1Data[7],
		reg1Data[6],
		reg1Data[5],
		reg1Data[4],
		reg1Data[3],
		reg1Data[2],
		reg1Data[1],
		reg1Data[0] }), 
	.in(reData), 
	.clk(reCLK), 
	.globalReset(globalReset));
   shiftReg13Bit_2 reg13BitG (.out(reg2out), 
	.data({ reg2Data[11],
		reg2Data[10],
		reg2Data[9],
		reg2Data[8],
		reg2Data[7],
		reg2Data[6],
		reg2Data[5],
		reg2Data[4],
		reg2Data[3],
		reg2Data[2],
		reg2Data[1],
		reg2Data[0] }), 
	.in(reg1out), 
	.clk(reCLK), 
	.globalReset(globalReset));
   shiftReg13Bit_1 reg13BitR (.out(reg3out), 
	.data({ reg3Data[11],
		reg3Data[10],
		reg3Data[9],
		reg3Data[8],
		reg3Data[7],
		reg3Data[6],
		reg3Data[5],
		reg3Data[4],
		reg3Data[3],
		reg3Data[2],
		reg3Data[1],
		reg3Data[0] }), 
	.in(reg2out), 
	.clk(reCLK), 
	.globalReset(globalReset));
   shiftReg16Bit reg16Bit1 (.out(dataOut), 
	.data({ A[15],
		A[14],
		A[13],
		A[12],
		A[11],
		A[10],
		A[9],
		A[8],
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.in(reg3out), 
	.clk(gateCLK), 
	.globalReset(globalReset));
   Comparator16Bit comparator16Bit1 (.headerDetected(n3), 
	.A({ A[15],
		A[14],
		A[13],
		A[12],
		A[11],
		A[10],
		A[9],
		A[8],
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.REF({ REF[15],
		REF[14],
		REF[13],
		REF[12],
		REF[11],
		REF[10],
		REF[9],
		REF[8],
		REF[7],
		REF[6],
		REF[5],
		REF[4],
		REF[3],
		REF[2],
		REF[1],
		REF[0] }));
   parallelShiftReg12Bit_0 Preg12BitB (.data({ Bdata[11],
		Bdata[10],
		Bdata[9],
		Bdata[8],
		Bdata[7],
		Bdata[6],
		Bdata[5],
		Bdata[4],
		Bdata[3],
		Bdata[2],
		Bdata[1],
		Bdata[0] }), 
	.in({ reg1Data[11],
		reg1Data[10],
		reg1Data[9],
		reg1Data[8],
		reg1Data[7],
		reg1Data[6],
		reg1Data[5],
		reg1Data[4],
		reg1Data[3],
		reg1Data[2],
		reg1Data[1],
		reg1Data[0] }), 
	.clk(headerDetected), 
	.globalReset(globalReset));
   parallelShiftReg12Bit_2 Preg12BitG (.data({ Gdata[11],
		Gdata[10],
		Gdata[9],
		Gdata[8],
		Gdata[7],
		Gdata[6],
		Gdata[5],
		Gdata[4],
		Gdata[3],
		Gdata[2],
		Gdata[1],
		Gdata[0] }), 
	.in({ reg2Data[11],
		reg2Data[10],
		reg2Data[9],
		reg2Data[8],
		reg2Data[7],
		reg2Data[6],
		reg2Data[5],
		reg2Data[4],
		reg2Data[3],
		reg2Data[2],
		reg2Data[1],
		reg2Data[0] }), 
	.clk(headerDetected), 
	.globalReset(globalReset));
   parallelShiftReg12Bit_1 Preg12BitR (.data({ Rdata[11],
		Rdata[10],
		Rdata[9],
		Rdata[8],
		Rdata[7],
		Rdata[6],
		Rdata[5],
		Rdata[4],
		Rdata[3],
		Rdata[2],
		Rdata[1],
		Rdata[0] }), 
	.in({ reg3Data[11],
		reg3Data[10],
		reg3Data[9],
		reg3Data[8],
		reg3Data[7],
		reg3Data[6],
		reg3Data[5],
		reg3Data[4],
		reg3Data[3],
		reg3Data[2],
		reg3Data[1],
		reg3Data[0] }), 
	.clk(headerDetected), 
	.globalReset(globalReset));
   INVX8 U1 (.Y(headerDetected), 
	.A(n2));
   INVX8 U2 (.Y(n2), 
	.A(n3));
endmodule

module Counter6Bit (
	count, 
	clk, 
	globalReset, 
	R);
   output [5:0] count;
   input clk;
   input globalReset;
   input R;

   // Internal wires
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n17;
   wire n19;
   wire n2;
   wire [5:2] add_94_carry;

   DFFSRX1 count_reg_0_ (.SN(1'b1), 
	.RN(n17), 
	.QN(n6), 
	.Q(count[0]), 
	.D(n19), 
	.CK(clk));
   DFFSRX1 count_reg_1_ (.SN(1'b1), 
	.RN(n17), 
	.Q(count[1]), 
	.D(n16), 
	.CK(clk));
   DFFSRX1 count_reg_2_ (.SN(1'b1), 
	.RN(n17), 
	.QN(n4), 
	.Q(count[2]), 
	.D(n14), 
	.CK(clk));
   DFFSRX1 count_reg_3_ (.SN(1'b1), 
	.RN(n17), 
	.Q(count[3]), 
	.D(n12), 
	.CK(clk));
   DFFSRX1 count_reg_4_ (.SN(1'b1), 
	.RN(n17), 
	.Q(count[4]), 
	.D(n10), 
	.CK(clk));
   DFFSRX1 count_reg_5_ (.SN(1'b1), 
	.RN(n17), 
	.QN(n5), 
	.Q(count[5]), 
	.D(n8), 
	.CK(clk));
   OR2X1 U3 (.Y(n8), 
	.B(N11), 
	.A(n1));
   OR2X1 U4 (.Y(n10), 
	.B(N10), 
	.A(n1));
   OR2X1 U5 (.Y(n12), 
	.B(N9), 
	.A(n1));
   OR2X1 U6 (.Y(n14), 
	.B(N8), 
	.A(n1));
   OR2X1 U7 (.Y(n16), 
	.B(N7), 
	.A(n1));
   NOR2X1 U8 (.Y(n17), 
	.B(n2), 
	.A(globalReset));
   OR2X1 U10 (.Y(n19), 
	.B(N6), 
	.A(n1));
   NOR4X1 U11 (.Y(n1), 
	.D(n3), 
	.C(n6), 
	.B(n5), 
	.A(n4));
   NAND3X1 U12 (.Y(n3), 
	.C(count[4]), 
	.B(count[1]), 
	.A(count[3]));
   ADDHX1 add_94_U1_1_1 (.S(N7), 
	.CO(add_94_carry[2]), 
	.B(count[0]), 
	.A(count[1]));
   ADDHX1 add_94_U1_1_2 (.S(N8), 
	.CO(add_94_carry[3]), 
	.B(add_94_carry[2]), 
	.A(count[2]));
   ADDHX1 add_94_U1_1_3 (.S(N9), 
	.CO(add_94_carry[4]), 
	.B(add_94_carry[3]), 
	.A(count[3]));
   ADDHX1 add_94_U1_1_4 (.S(N10), 
	.CO(add_94_carry[5]), 
	.B(add_94_carry[4]), 
	.A(count[4]));
   INVX8 U9 (.Y(n2), 
	.A(R));
   INVX1 U19 (.Y(N6), 
	.A(count[0]));
   XOR2X1 U20 (.Y(N11), 
	.B(count[5]), 
	.A(add_94_carry[5]));
endmodule

module Comparator6Bit (
	Vout, 
	A, 
	REF);
   output Vout;
   input [5:0] A;
   input [5:0] REF;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;

   AND2X1 U3 (.Y(Vout), 
	.B(n2), 
	.A(n1));
   NOR3X1 U4 (.Y(n2), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   XOR2X1 U5 (.Y(n5), 
	.B(A[4]), 
	.A(REF[4]));
   XOR2X1 U6 (.Y(n4), 
	.B(A[5]), 
	.A(REF[5]));
   XOR2X1 U7 (.Y(n3), 
	.B(A[3]), 
	.A(REF[3]));
   NOR3X1 U8 (.Y(n1), 
	.C(n8), 
	.B(n7), 
	.A(n6));
   XOR2X1 U9 (.Y(n8), 
	.B(A[1]), 
	.A(REF[1]));
   XOR2X1 U10 (.Y(n7), 
	.B(A[2]), 
	.A(REF[2]));
   XOR2X1 U11 (.Y(n6), 
	.B(A[0]), 
	.A(REF[0]));
endmodule

module DFF_digitalControlBlock (
	notQ, 
	R, 
	clk, 
	globalReset);
   output notQ;
   input R;
   input clk;
   input globalReset;

   // Internal wires
   wire N0;
   wire n1;

   DFFSRX1 notQ_reg (.SN(n1), 
	.RN(1'b1), 
	.Q(notQ), 
	.D(1'b0), 
	.CK(clk));
   OR2X1 U5 (.Y(N0), 
	.B(globalReset), 
	.A(R));
   INVX1 U3 (.Y(n1), 
	.A(N0));
endmodule

module GatedCLKBlock (
	GatedCLK, 
	headerDetected, 
	globalReset, 
	REF, 
	reCLK);
   output GatedCLK;
   input headerDetected;
   input globalReset;
   input [5:0] REF;
   input reCLK;

   // Internal wires
   wire compOut;
   wire notQ;
   wire [5:0] countOut;

   AND2X1 U1 (.Y(GatedCLK), 
	.B(notQ), 
	.A(reCLK));
   Counter6Bit counter1 (.count({ countOut[5],
		countOut[4],
		countOut[3],
		countOut[2],
		countOut[1],
		countOut[0] }), 
	.clk(reCLK), 
	.globalReset(globalReset), 
	.R(headerDetected));
   Comparator6Bit comparator1 (.Vout(compOut), 
	.A({ countOut[5],
		countOut[4],
		countOut[3],
		countOut[2],
		countOut[1],
		countOut[0] }), 
	.REF({ REF[5],
		REF[4],
		REF[3],
		REF[2],
		REF[1],
		REF[0] }));
   DFF_digitalControlBlock dff1 (.notQ(notQ), 
	.R(compOut), 
	.clk(headerDetected), 
	.globalReset(globalReset));
endmodule

module digitalControlBlock (
	dataOut, 
	Bdata, 
	Gdata, 
	Rdata, 
	reCLK, 
	reData, 
	globalReset, 
	REF16Bits, 
	REF6Bit);
   output dataOut;
   output [11:0] Bdata;
   output [11:0] Gdata;
   output [11:0] Rdata;
   input reCLK;
   input reData;
   input globalReset;
   input [15:0] REF16Bits;
   input [5:0] REF6Bit;

   // Internal wires
   wire headerDetected;
   wire gateCLK;

   shiftAndRegBlock SRblock (.dataOut(dataOut), 
	.headerDetected(headerDetected), 
	.Bdata({ Bdata[11],
		Bdata[10],
		Bdata[9],
		Bdata[8],
		Bdata[7],
		Bdata[6],
		Bdata[5],
		Bdata[4],
		Bdata[3],
		Bdata[2],
		Bdata[1],
		Bdata[0] }), 
	.Gdata({ Gdata[11],
		Gdata[10],
		Gdata[9],
		Gdata[8],
		Gdata[7],
		Gdata[6],
		Gdata[5],
		Gdata[4],
		Gdata[3],
		Gdata[2],
		Gdata[1],
		Gdata[0] }), 
	.Rdata({ Rdata[11],
		Rdata[10],
		Rdata[9],
		Rdata[8],
		Rdata[7],
		Rdata[6],
		Rdata[5],
		Rdata[4],
		Rdata[3],
		Rdata[2],
		Rdata[1],
		Rdata[0] }), 
	.REF({ REF16Bits[15],
		REF16Bits[14],
		REF16Bits[13],
		REF16Bits[12],
		REF16Bits[11],
		REF16Bits[10],
		REF16Bits[9],
		REF16Bits[8],
		REF16Bits[7],
		REF16Bits[6],
		REF16Bits[5],
		REF16Bits[4],
		REF16Bits[3],
		REF16Bits[2],
		REF16Bits[1],
		REF16Bits[0] }), 
	.reCLK(reCLK), 
	.reData(reData), 
	.globalReset(globalReset), 
	.gateCLK(gateCLK));
   GatedCLKBlock GCLKblock (.GatedCLK(gateCLK), 
	.headerDetected(headerDetected), 
	.globalReset(globalReset), 
	.REF({ REF6Bit[5],
		REF6Bit[4],
		REF6Bit[3],
		REF6Bit[2],
		REF6Bit[1],
		REF6Bit[0] }), 
	.reCLK(reCLK));
endmodule

