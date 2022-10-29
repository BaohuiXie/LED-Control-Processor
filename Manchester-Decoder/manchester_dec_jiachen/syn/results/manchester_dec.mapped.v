/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Wed Apr 13 10:20:42 2022
/////////////////////////////////////////////////////////////


module manchester_dec ( manchester_data, osc, rst_n, recovered_data, 
        balanced_clk );
  input manchester_data, osc, rst_n;
  output recovered_data, balanced_clk;
  wire   n40, counter_out, N10, N11, N12, N13, recovered_clk, N19, N20, N21,
         n3, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n38;
  wire   [3:0] cnt;
  wire   [3:0] clk_cnt;

  DFFSRX1 recovered_data_reg ( .D(manchester_data), .CK(counter_out), .RN(
        rst_n), .SN(1'b1), .Q(n40), .QN(n38) );
  DFFSRX1 cnt_reg_0_ ( .D(N10), .CK(osc), .RN(rst_n), .SN(1'b1), .Q(cnt[0]) );
  DFFSRX1 counter_out_reg ( .D(n35), .CK(osc), .RN(rst_n), .SN(1'b1), .Q(
        counter_out) );
  DFFSRX1 cnt_reg_3_ ( .D(N13), .CK(osc), .RN(1'b1), .SN(rst_n), .Q(cnt[3]) );
  DFFSRX1 cnt_reg_2_ ( .D(N12), .CK(osc), .RN(1'b1), .SN(rst_n), .Q(cnt[2]) );
  DFFSRX1 cnt_reg_1_ ( .D(N11), .CK(osc), .RN(rst_n), .SN(1'b1), .Q(cnt[1]) );
  DFFSRX1 clk_cnt_reg_0_ ( .D(n21), .CK(osc), .RN(recovered_clk), .SN(1'b1), 
        .Q(clk_cnt[0]) );
  DFFSRX1 clk_cnt_reg_1_ ( .D(N19), .CK(osc), .RN(recovered_clk), .SN(1'b1), 
        .Q(clk_cnt[1]) );
  DFFSRX1 clk_cnt_reg_2_ ( .D(N20), .CK(osc), .RN(recovered_clk), .SN(1'b1), 
        .Q(clk_cnt[2]) );
  DFFSRX1 clk_cnt_reg_3_ ( .D(N21), .CK(osc), .RN(recovered_clk), .SN(1'b1), 
        .Q(clk_cnt[3]) );
  DFFSRX1 balanced_clk_reg ( .D(1'b1), .CK(recovered_clk), .RN(n3), .SN(1'b1), 
        .QN(n36) );
  INVX4 U3 ( .A(clk_cnt[3]), .Y(n3) );
  NAND2X2 U15 ( .A(n25), .B(n19), .Y(N13) );
  NAND2X2 U16 ( .A(n20), .B(cnt[3]), .Y(n31) );
  INVX1 U17 ( .A(n28), .Y(n15) );
  INVX1 U18 ( .A(n26), .Y(n16) );
  INVX1 U19 ( .A(cnt[1]), .Y(n17) );
  INVX1 U20 ( .A(cnt[0]), .Y(n18) );
  INVX1 U21 ( .A(counter_out), .Y(n19) );
  INVX1 U22 ( .A(recovered_clk), .Y(n20) );
  INVX1 U23 ( .A(clk_cnt[0]), .Y(n21) );
  NOR3X1 U24 ( .A(n18), .B(cnt[3]), .C(n22), .Y(n35) );
  XOR2X1 U25 ( .A(clk_cnt[3]), .B(n23), .Y(N21) );
  AND2X1 U26 ( .A(n24), .B(clk_cnt[2]), .Y(n23) );
  XOR2X1 U27 ( .A(clk_cnt[2]), .B(n24), .Y(N20) );
  AND2X1 U28 ( .A(clk_cnt[1]), .B(clk_cnt[0]), .Y(n24) );
  XOR2X1 U29 ( .A(clk_cnt[1]), .B(clk_cnt[0]), .Y(N19) );
  XOR2X1 U30 ( .A(n26), .B(cnt[3]), .Y(n25) );
  NAND3X1 U31 ( .A(n26), .B(n19), .C(n27), .Y(N12) );
  AOI22X1 U32 ( .A0(cnt[2]), .A1(cnt[1]), .B0(cnt[2]), .B1(n15), .Y(n27) );
  AND2X1 U33 ( .A(n19), .B(n29), .Y(N11) );
  OAI21X1 U34 ( .A0(n17), .A1(n28), .B0(n30), .Y(n29) );
  AOI21X1 U35 ( .A0(n31), .A1(n32), .B0(n16), .Y(n30) );
  OR2X1 U36 ( .A(n22), .B(cnt[0]), .Y(n26) );
  NOR2X1 U37 ( .A(cnt[1]), .B(cnt[0]), .Y(n32) );
  AOI21X1 U38 ( .A0(n20), .A1(cnt[3]), .B0(cnt[0]), .Y(n28) );
  NOR2X1 U39 ( .A(counter_out), .B(n33), .Y(N10) );
  AOI22X1 U40 ( .A0(n34), .A1(cnt[3]), .B0(n31), .B1(n18), .Y(n33) );
  AOI21X1 U41 ( .A0(n18), .A1(n22), .B0(recovered_clk), .Y(n34) );
  XOR2X1 U42 ( .A(manchester_data), .B(n40), .Y(recovered_clk) );
  OR2X1 U43 ( .A(cnt[2]), .B(cnt[1]), .Y(n22) );
  INVX8 U44 ( .A(n36), .Y(balanced_clk) );
  INVX8 U45 ( .A(n38), .Y(recovered_data) );
endmodule

