/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Sat May 14 16:06:58 2022
/////////////////////////////////////////////////////////////


module counter_comparator_DW01_inc_0 ( A, SUM );
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


module counter_comparator ( clk, rst, B, PWM );
  input [11:0] B;
  input clk, rst;
  output PWM;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, n18, n19, n20, n21,
         n22, n23, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65;
  wire   [11:0] A;

  DFFSRX1 A_reg_0_ ( .D(N16), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[0]) );
  DFFSRX1 A_reg_1_ ( .D(N17), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[1]) );
  DFFSRX1 A_reg_2_ ( .D(N18), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[2]) );
  DFFSRX1 A_reg_3_ ( .D(N19), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[3]) );
  DFFSRX1 A_reg_4_ ( .D(N20), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[4]) );
  DFFSRX1 A_reg_5_ ( .D(N21), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[5]) );
  DFFSRX1 A_reg_6_ ( .D(N22), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[6]) );
  DFFSRX1 A_reg_7_ ( .D(N23), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[7]) );
  DFFSRX1 A_reg_8_ ( .D(N24), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[8]) );
  DFFSRX1 A_reg_9_ ( .D(N25), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[9]) );
  DFFSRX1 A_reg_10_ ( .D(N26), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[10]) );
  DFFSRX1 A_reg_11_ ( .D(N27), .CK(clk), .RN(n64), .SN(1'b1), .Q(A[11]) );
  DFFSRX1 PWM_reg ( .D(N28), .CK(clk), .RN(n64), .SN(1'b1), .QN(n23) );
  AND2X1 U19 ( .A(N15), .B(n26), .Y(N27) );
  AND2X1 U20 ( .A(N14), .B(n25), .Y(N26) );
  AND2X1 U21 ( .A(N13), .B(n26), .Y(N25) );
  AND2X1 U22 ( .A(N12), .B(n25), .Y(N24) );
  AND2X1 U23 ( .A(N11), .B(n26), .Y(N23) );
  AND2X1 U24 ( .A(N10), .B(n25), .Y(N22) );
  AND2X1 U25 ( .A(N9), .B(n26), .Y(N21) );
  AND2X1 U26 ( .A(N8), .B(n25), .Y(N20) );
  AND2X1 U27 ( .A(N7), .B(n26), .Y(N19) );
  AND2X1 U28 ( .A(N6), .B(n25), .Y(N18) );
  AND2X1 U29 ( .A(N5), .B(n26), .Y(N17) );
  AND2X1 U30 ( .A(N4), .B(n25), .Y(N16) );
  OR4X1 U31 ( .A(n19), .B(n20), .C(n21), .D(n22), .Y(n18) );
  NAND3X1 U32 ( .A(A[2]), .B(A[1]), .C(A[3]), .Y(n22) );
  NAND3X1 U33 ( .A(A[10]), .B(n65), .C(A[11]), .Y(n21) );
  NAND3X1 U34 ( .A(A[8]), .B(A[7]), .C(A[9]), .Y(n20) );
  NAND3X1 U35 ( .A(A[5]), .B(A[4]), .C(A[6]), .Y(n19) );
  counter_comparator_DW01_inc_0 add_25 ( .A(A), .SUM({N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4}) );
  INVX8 U36 ( .A(n23), .Y(PWM) );
  BUFX3 U37 ( .A(n18), .Y(n25) );
  BUFX3 U38 ( .A(n18), .Y(n26) );
  AND2X1 U39 ( .A(B[0]), .B(n56), .Y(n27) );
  AOI21X1 U40 ( .A0(n27), .A1(n55), .B0(B[1]), .Y(n28) );
  AOI21X1 U41 ( .A0(A[1]), .A1(n57), .B0(n28), .Y(n30) );
  OR2X1 U42 ( .A(n54), .B(B[2]), .Y(n29) );
  AOI22X1 U43 ( .A0(B[2]), .A1(n54), .B0(n30), .B1(n29), .Y(n32) );
  OR2X1 U44 ( .A(n58), .B(A[3]), .Y(n31) );
  AOI22X1 U45 ( .A0(n32), .A1(n31), .B0(A[3]), .B1(n58), .Y(n34) );
  OR2X1 U46 ( .A(n53), .B(B[4]), .Y(n33) );
  AOI22X1 U47 ( .A0(B[4]), .A1(n53), .B0(n34), .B1(n33), .Y(n36) );
  OR2X1 U48 ( .A(n59), .B(A[5]), .Y(n35) );
  AOI22X1 U49 ( .A0(n36), .A1(n35), .B0(A[5]), .B1(n59), .Y(n38) );
  OR2X1 U50 ( .A(n52), .B(B[6]), .Y(n37) );
  AOI22X1 U51 ( .A0(B[6]), .A1(n52), .B0(n38), .B1(n37), .Y(n40) );
  OR2X1 U52 ( .A(n60), .B(A[7]), .Y(n39) );
  AOI22X1 U53 ( .A0(n40), .A1(n39), .B0(A[7]), .B1(n60), .Y(n42) );
  OR2X1 U54 ( .A(n51), .B(B[8]), .Y(n41) );
  AOI22X1 U55 ( .A0(B[8]), .A1(n51), .B0(n42), .B1(n41), .Y(n44) );
  OR2X1 U56 ( .A(n61), .B(A[9]), .Y(n43) );
  AOI22X1 U57 ( .A0(n44), .A1(n43), .B0(A[9]), .B1(n61), .Y(n45) );
  OAI21X1 U58 ( .A0(B[10]), .A1(n50), .B0(n45), .Y(n46) );
  OAI21X1 U59 ( .A0(A[10]), .A1(n62), .B0(n46), .Y(n47) );
  OAI21X1 U60 ( .A0(B[11]), .A1(n49), .B0(n47), .Y(n48) );
  OAI21X1 U61 ( .A0(A[11]), .A1(n63), .B0(n48), .Y(N28) );
  INVX1 U62 ( .A(A[11]), .Y(n49) );
  INVX1 U63 ( .A(A[10]), .Y(n50) );
  INVX1 U64 ( .A(A[8]), .Y(n51) );
  INVX1 U65 ( .A(A[6]), .Y(n52) );
  INVX1 U66 ( .A(A[4]), .Y(n53) );
  INVX1 U67 ( .A(A[2]), .Y(n54) );
  INVX1 U68 ( .A(A[1]), .Y(n55) );
  INVX1 U69 ( .A(A[0]), .Y(n56) );
  INVX1 U70 ( .A(n27), .Y(n57) );
  INVX1 U71 ( .A(B[3]), .Y(n58) );
  INVX1 U72 ( .A(B[5]), .Y(n59) );
  INVX1 U73 ( .A(B[7]), .Y(n60) );
  INVX1 U74 ( .A(B[9]), .Y(n61) );
  INVX1 U75 ( .A(B[10]), .Y(n62) );
  INVX1 U76 ( .A(B[11]), .Y(n63) );
  INVX1 U77 ( .A(rst), .Y(n64) );
  INVX1 U78 ( .A(A[0]), .Y(n65) );
endmodule

