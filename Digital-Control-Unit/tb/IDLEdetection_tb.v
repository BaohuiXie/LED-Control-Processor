// =============================================================================
// Filename: IDLEdetection_tb.v
// Author: XIE, BaohuiXie
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file exports the testbench for IDLEdetection_tb module.
// =============================================================================

`timescale 1 ns / 1 ps

module IDLEdetection_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 1.0;  // clock period: 1ns/1GHz

// ----------------------------------
// Interface of the IDLEdetection module
// ----------------------------------
reg balancedCLK;
reg clk;
reg [3:0] REF4Bits;
reg globalReset;
wire IDLE;

// ----------------------------------
// Instantiate the IDLEdetection
// ----------------------------------
IDLEdetection uut (IDLE, balancedCLK, clk, REF4Bits[3:0], globalReset);

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

initial begin
	globalReset <= 1'b0;#(1*CLK_PERIOD);
	globalReset <= 1'b1;#(3*CLK_PERIOD);
	globalReset <= 1'b0;
end
// ----------------------------------
// Input stimulus
// ----------------------------------
initial begin

	REF4Bits[3:0] = 4'b1100;		//reference 12
	balancedCLK <= 1'b0;#(16*CLK_PERIOD);
	balancedCLK <= 1'b0;#(8*CLK_PERIOD); 
	balancedCLK <= 1'b1;#(8*CLK_PERIOD); 					//insert 0 for first bit to synchronization
	balancedCLK <= 1'b0;#(8*CLK_PERIOD);
	balancedCLK <= 1'b1;#(8*CLK_PERIOD);
	balancedCLK <= 1'b0;#(16*CLK_PERIOD);
	balancedCLK <= 1'b1;#(8*CLK_PERIOD);
	balancedCLK <= 1'b0;#(8*CLK_PERIOD);
	balancedCLK <= 1'b0;#(16*CLK_PERIOD);
  // Finish the testbench
  $finish;
end


endmodule
