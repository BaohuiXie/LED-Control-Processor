/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Mon May  9 17:45:53 2022
/////////////////////////////////////////////////////////////


module counter_4b ( clk, reset, counter );
  output [3:0] counter;
  input clk, reset;
  wire   counter_1_, counter_0_, N10, N11, N12, N13, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19;

  DFFSRX1 counter_reg_0_ ( .D(N10), .CK(clk), .RN(1'b1), .SN(1'b1), .Q(
        counter_0_) );
  DFFSRX1 counter_reg_1_ ( .D(N11), .CK(clk), .RN(1'b1), .SN(1'b1), .Q(
        counter_1_) );
  DFFSRX1 counter_reg_3_ ( .D(N13), .CK(clk), .RN(1'b1), .SN(1'b1), .Q(
        counter[3]) );
  DFFSRX1 counter_reg_2_ ( .D(N12), .CK(clk), .RN(1'b1), .SN(1'b1), .Q(
        counter[2]) );
  INVX1 U7 ( .A(counter[3]), .Y(n9) );
  INVX1 U8 ( .A(counter[2]), .Y(n10) );
  INVX1 U9 ( .A(n16), .Y(n11) );
  INVX1 U10 ( .A(counter_0_), .Y(n12) );
  INVX1 U11 ( .A(reset), .Y(n13) );
  OAI21X1 U12 ( .A0(n14), .A1(n11), .B0(n15), .Y(N13) );
  NAND3X1 U13 ( .A(counter[3]), .B(n10), .C(reset), .Y(n15) );
  OAI21X1 U14 ( .A0(n16), .A1(n14), .B0(n17), .Y(N12) );
  NAND3X1 U15 ( .A(reset), .B(n10), .C(n16), .Y(n17) );
  NAND3X1 U16 ( .A(reset), .B(n9), .C(counter[2]), .Y(n14) );
  AND2X1 U17 ( .A(counter_1_), .B(counter_0_), .Y(n16) );
  NOR3X1 U18 ( .A(n13), .B(n18), .C(n19), .Y(N11) );
  XOR2X1 U19 ( .A(n12), .B(counter_1_), .Y(n19) );
  NOR3X1 U20 ( .A(n13), .B(counter_0_), .C(n18), .Y(N10) );
  AND2X1 U21 ( .A(counter[2]), .B(counter[3]), .Y(n18) );
endmodule


module counter_m ( clk, En, counter, counter_out );
  output [3:0] counter;
  input clk, En;
  output counter_out;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  DFFSRX1 counter_reg_0_ ( .D(n23), .CK(clk), .RN(En), .SN(1'b1), .Q(
        counter[0]) );
  DFFSRX1 counter_reg_1_ ( .D(n22), .CK(clk), .RN(En), .SN(1'b1), .Q(
        counter[1]) );
  DFFSRX1 counter_reg_3_ ( .D(n12), .CK(clk), .RN(1'b1), .SN(En), .Q(
        counter[3]) );
  DFFSRX1 counter_reg_2_ ( .D(n10), .CK(clk), .RN(1'b1), .SN(En), .Q(
        counter[2]) );
  DFFSRX1 counter_out_reg ( .D(n21), .CK(clk), .RN(En), .SN(1'b1), .Q(
        counter_out) );
  INVX1 U8 ( .A(n17), .Y(n10) );
  INVX1 U9 ( .A(counter[3]), .Y(n11) );
  INVX1 U10 ( .A(n20), .Y(n12) );
  INVX1 U11 ( .A(counter[0]), .Y(n13) );
  AND2X1 U12 ( .A(counter[0]), .B(n14), .Y(n21) );
  AOI21X1 U13 ( .A0(n15), .A1(n13), .B0(n16), .Y(n22) );
  NOR2X1 U14 ( .A(counter[3]), .B(counter[2]), .Y(n15) );
  AOI21X1 U15 ( .A0(n18), .A1(counter[2]), .B0(n19), .Y(n17) );
  NOR4X1 U16 ( .A(n16), .B(n11), .C(counter[0]), .D(counter[2]), .Y(n19) );
  OAI21X1 U17 ( .A0(n18), .A1(counter[2]), .B0(counter[3]), .Y(n20) );
  OR2X1 U18 ( .A(counter[0]), .B(n16), .Y(n18) );
  XOR2X1 U19 ( .A(counter[1]), .B(counter[0]), .Y(n16) );
  NOR2X1 U20 ( .A(counter[0]), .B(n14), .Y(n23) );
  NOR3X1 U21 ( .A(counter[2]), .B(counter[3]), .C(counter[1]), .Y(n14) );
endmodule


module Manchester_decoder ( clk, rst, Man_data, Balan_clock, Rec_data, 
        Rec_clock );
  input clk, rst, Man_data;
  output Balan_clock, Rec_data, Rec_clock;
  wire   n34, n35, comp, En, comp_4b, N5, N12, counter_out, N15, n18, n21, n23,
         n24, n25, n26, n28, n31, n32, n33, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2;
  wire   [3:2] counter_4b;
  wire   [3:0] counter;

  counter_4b counter_4bt ( .clk(clk), .reset(n31), .counter({counter_4b, 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}) );
  counter_m counter_t ( .clk(clk), .En(En), .counter(counter), .counter_out(
        counter_out) );
  DFFSRX1 Rec_data_reg ( .D(Man_data), .CK(counter_out), .RN(n21), .SN(1'b1), 
        .Q(n34), .QN(n28) );
  DFFSRX1 comp_4b_reg ( .D(N5), .CK(clk), .RN(1'b1), .SN(1'b1), .Q(comp_4b) );
  DFFSRX1 Balan_clock_reg ( .D(1'b1), .CK(n32), .RN(n18), .SN(1'b1), .QN(n26)
         );
  DFFSRX1 comp_reg ( .D(N12), .CK(clk), .RN(n21), .SN(1'b1), .Q(comp) );
  INVX4 U4 ( .A(N15), .Y(n18) );
  INVX4 U7 ( .A(rst), .Y(n21) );
  INVX1 U9 ( .A(counter_4b[3]), .Y(n23) );
  INVX1 U10 ( .A(counter[3]), .Y(n24) );
  NOR2X1 U11 ( .A(counter_4b[2]), .B(n23), .Y(N5) );
  OR2X1 U12 ( .A(comp_4b), .B(rst), .Y(N15) );
  XOR2X1 U13 ( .A(n24), .B(n25), .Y(N12) );
  NOR3X1 U14 ( .A(counter[0]), .B(counter[2]), .C(counter[1]), .Y(n25) );
  OR2X1 U15 ( .A(comp), .B(n33), .Y(En) );
  XOR2X1 U16 ( .A(Man_data), .B(n34), .Y(n35) );
  INVX8 U17 ( .A(n26), .Y(Balan_clock) );
  INVX8 U18 ( .A(n28), .Y(Rec_data) );
  BUFX3 U19 ( .A(n35), .Y(Rec_clock) );
  BUFX3 U20 ( .A(n35), .Y(n31) );
  BUFX3 U21 ( .A(n35), .Y(n32) );
  BUFX3 U22 ( .A(n35), .Y(n33) );
endmodule

