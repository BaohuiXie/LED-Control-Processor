// =============================================================================
// Filename: decoder_tb.v
// Author: XIE, BaohuiXie
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file exports the testbench for decoder module.
// =============================================================================

`timescale 1 ns / 1 ps

module decoder_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 1.0;  // clock period: 1ns/1GHz

// ----------------------------------
// Interface of the decoder module
// ----------------------------------
reg ManchesterCode;
reg clk;
reg globalReset;
reg [3:0] REF;
wire recoveredData;
wire recoveredCLK;
wire balancedCLK;

// ----------------------------------
// Instantiate the decoder
// ----------------------------------
decoder uut (recoveredData, recoveredCLK, balancedCLK, ManchesterCode, clk, REF[3:0], globalReset);

// ----------------------------------
// For gate-level and post-layout 
// simulation, we should backannotate 
// the SDF file defined in SDF_FILE
// ----------------------------------

`ifdef SDF_FILE
initial begin
  $sdf_annotate(`SDF_FILE, uut);
end
`endif

// ----------------------------------
// Clock generation
// ----------------------------------

initial begin
  clk = 1'b0;
  forever #(CLK_PERIOD/2.0) clk = ~clk;
end

// ----------------------------------
// Input stimulus
// ----------------------------------

initial begin
	globalReset <= 1'b0;#(1*CLK_PERIOD);
	globalReset <= 1'b1;#(5*CLK_PERIOD);
	globalReset <= 1'b0;
end

initial begin
	REF[3:0] <= 4'd8;
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD); @(posedge clk);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD); 					//insert 0 for first bit to synchronization
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD); @(negedge clk);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD); @(negedge clk);
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);@(posedge clk);
	ManchesterCode <= 1'b1;#(16*CLK_PERIOD); @(negedge clk);
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);@(posedge clk);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD);@(posedge clk);
	ManchesterCode <= 1'b1;#(16*CLK_PERIOD); @(negedge clk);
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD);
	$finish;
end

endmodule
