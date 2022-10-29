/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Wed Apr 13 10:20:42 2022
/////////////////////////////////////////////////////////////
module manchester_dec (
	manchester_data, 
	osc, 
	rst_n, 
	recovered_data, 
	balanced_clk);
   input manchester_data;
   input osc;
   input rst_n;
   output recovered_data;
   output balanced_clk;

   // Internal wires
   wire n40;
   wire counter_out;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire recovered_clk;
   wire N19;
   wire N20;
   wire N21;
   wire n3;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n38;
   wire [3:0] cnt;
   wire [3:0] clk_cnt;

   DFFSRX1 recovered_data_reg (.SN(1'b1), 
	.RN(rst_n), 
	.QN(n38), 
	.Q(n40), 
	.D(manchester_data), 
	.CK(counter_out));
   DFFSRX1 cnt_reg_0_ (.SN(1'b1), 
	.RN(rst_n), 
	.Q(cnt[0]), 
	.D(N10), 
	.CK(osc));
   DFFSRX1 counter_out_reg (.SN(1'b1), 
	.RN(rst_n), 
	.Q(counter_out), 
	.D(n35), 
	.CK(osc));
   DFFSRX1 cnt_reg_3_ (.SN(rst_n), 
	.RN(1'b1), 
	.Q(cnt[3]), 
	.D(N13), 
	.CK(osc));
   DFFSRX1 cnt_reg_2_ (.SN(rst_n), 
	.RN(1'b1), 
	.Q(cnt[2]), 
	.D(N12), 
	.CK(osc));
   DFFSRX1 cnt_reg_1_ (.SN(1'b1), 
	.RN(rst_n), 
	.Q(cnt[1]), 
	.D(N11), 
	.CK(osc));
   DFFSRX1 clk_cnt_reg_0_ (.SN(1'b1), 
	.RN(recovered_clk), 
	.Q(clk_cnt[0]), 
	.D(n21), 
	.CK(osc));
   DFFSRX1 clk_cnt_reg_1_ (.SN(1'b1), 
	.RN(recovered_clk), 
	.Q(clk_cnt[1]), 
	.D(N19), 
	.CK(osc));
   DFFSRX1 clk_cnt_reg_2_ (.SN(1'b1), 
	.RN(recovered_clk), 
	.Q(clk_cnt[2]), 
	.D(N20), 
	.CK(osc));
   DFFSRX1 clk_cnt_reg_3_ (.SN(1'b1), 
	.RN(recovered_clk), 
	.Q(clk_cnt[3]), 
	.D(N21), 
	.CK(osc));
   DFFSRX1 balanced_clk_reg (.SN(1'b1), 
	.RN(n3), 
	.QN(n36), 
	.D(1'b1), 
	.CK(recovered_clk));
   INVX4 U3 (.Y(n3), 
	.A(clk_cnt[3]));
   NAND2X2 U15 (.Y(N13), 
	.B(n19), 
	.A(n25));
   NAND2X2 U16 (.Y(n31), 
	.B(cnt[3]), 
	.A(n20));
   INVX1 U17 (.Y(n15), 
	.A(n28));
   INVX1 U18 (.Y(n16), 
	.A(n26));
   INVX1 U19 (.Y(n17), 
	.A(cnt[1]));
   INVX1 U20 (.Y(n18), 
	.A(cnt[0]));
   INVX1 U21 (.Y(n19), 
	.A(counter_out));
   INVX1 U22 (.Y(n20), 
	.A(recovered_clk));
   INVX1 U23 (.Y(n21), 
	.A(clk_cnt[0]));
   NOR3X1 U24 (.Y(n35), 
	.C(n22), 
	.B(cnt[3]), 
	.A(n18));
   XOR2X1 U25 (.Y(N21), 
	.B(n23), 
	.A(clk_cnt[3]));
   AND2X1 U26 (.Y(n23), 
	.B(clk_cnt[2]), 
	.A(n24));
   XOR2X1 U27 (.Y(N20), 
	.B(n24), 
	.A(clk_cnt[2]));
   AND2X1 U28 (.Y(n24), 
	.B(clk_cnt[0]), 
	.A(clk_cnt[1]));
   XOR2X1 U29 (.Y(N19), 
	.B(clk_cnt[0]), 
	.A(clk_cnt[1]));
   XOR2X1 U30 (.Y(n25), 
	.B(cnt[3]), 
	.A(n26));
   NAND3X1 U31 (.Y(N12), 
	.C(n27), 
	.B(n19), 
	.A(n26));
   AOI22X1 U32 (.Y(n27), 
	.B1(n15), 
	.B0(cnt[2]), 
	.A1(cnt[1]), 
	.A0(cnt[2]));
   AND2X1 U33 (.Y(N11), 
	.B(n29), 
	.A(n19));
   OAI21X1 U34 (.Y(n29), 
	.B0(n30), 
	.A1(n28), 
	.A0(n17));
   AOI21X1 U35 (.Y(n30), 
	.B0(n16), 
	.A1(n32), 
	.A0(n31));
   OR2X1 U36 (.Y(n26), 
	.B(cnt[0]), 
	.A(n22));
   NOR2X1 U37 (.Y(n32), 
	.B(cnt[0]), 
	.A(cnt[1]));
   AOI21X1 U38 (.Y(n28), 
	.B0(cnt[0]), 
	.A1(cnt[3]), 
	.A0(n20));
   NOR2X1 U39 (.Y(N10), 
	.B(n33), 
	.A(counter_out));
   AOI22X1 U40 (.Y(n33), 
	.B1(n18), 
	.B0(n31), 
	.A1(cnt[3]), 
	.A0(n34));
   AOI21X1 U41 (.Y(n34), 
	.B0(recovered_clk), 
	.A1(n22), 
	.A0(n18));
   XOR2X1 U42 (.Y(recovered_clk), 
	.B(n40), 
	.A(manchester_data));
   OR2X1 U43 (.Y(n22), 
	.B(cnt[1]), 
	.A(cnt[2]));
   INVX8 U44 (.Y(balanced_clk), 
	.A(n36));
   INVX8 U45 (.Y(recovered_data), 
	.A(n38));
endmodule

