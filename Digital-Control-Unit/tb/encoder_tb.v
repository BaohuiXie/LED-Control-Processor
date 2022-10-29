// =============================================================================
// Filename: encoder_tb.v
// Author: XIE, BaohuiXie
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file exports the testbench for encoder module.
// =============================================================================

`timescale 1 ns / 1 ps
`include "../rtl/decoder.v"
`include "../rtl/IDLEdetection.v"

module encoder_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 1.0;  // clock period: 1ns/1GHz

// ----------------------------------
// Interface of the encoder module
// ----------------------------------
//--global
reg globalReset;
reg clk;

//--decoder
reg ManchesterCode;
reg [3:0] REF;
wire recoveredCLK;
wire balanceCLK;
wire reData;

//---encoder
wire out;
reg [3:0] REF4Bits;


// ----------------------------------
// Instantiate the encoder
// ----------------------------------
decoder uut1 (reData, recoveredCLK, balanceCLK, ManchesterCode, clk, REF[3:0], globalReset);
encoder uut2 (out, balanceCLK, REF4Bits[3:0], reData, clk, globalReset);

// ----------------------------------
// For gate-level and post-layout 
// simulation, we should backannotate 
// the SDF file defined in SDF_FILE
// ----------------------------------

`ifdef SDF_FILE
initial begin
  $sdf_annotate(`SDF_FILE, uut1);
  $sdf_annotate(`SDF_FILE, uut2);
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
	globalReset <= 1'b1;#(10*CLK_PERIOD);
	globalReset <= 1'b0;
end

initial begin
	REF = 4'd8;//decoder reference number for both delay block and balance clock generator
	REF4Bits = 4'd12;		//encoder reference number for edge detector
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD); @(posedge clk);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD); 					//insert 0 for first bit to synchronization
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD); @(negedge clk);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD); @(negedge clk);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD); 
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);					//IDLE
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD); @(posedge clk);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD); 					//synchronization data
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD); @(posedge clk);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD); @(posedge clk);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD);
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);		//IDLE
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD); @(posedge clk);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD);		//synchronization data
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD);@(negedge clk);
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD);
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);		//IDLE
	$finish;
end

endmodule
