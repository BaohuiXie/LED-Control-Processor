// =============================================================================
// Filename: delayBlock_tb.v
// Author: XIE, BaohuiXie
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file exports the testbench for delayBlock module.
// =============================================================================

`timescale 1 ns / 1 ps

module delayBlock_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 1.0;  // clock period: 1ns/1GHz

// ----------------------------------
// Interface of the delayBlock module
// ----------------------------------
reg clk;
reg reCLK;
reg [3:0] REF;
reg globalReset;
wire delayPulse;

// ----------------------------------
// Instantiate the delayBlock
// ----------------------------------
delayBlock uut (delayPulse, reCLK, REF[3:0], globalReset, clk);

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
  reCLK = 1'b0;
end
// ----------------------------------
// Input stimulus
// ----------------------------------
initial begin 
  REF[3:0] = 4'b1000;//should alwalys 8
  #(1*CLK_PERIOD);
  globalReset = 1'b0;#(1*CLK_PERIOD);@(posedge clk);
  globalReset = 1'b1;#(5*CLK_PERIOD);@(posedge clk);
  globalReset = 1'b0;#(1*CLK_PERIOD);@(posedge clk);
  reCLK = 1'b0;#(16*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b1;#(12*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b0;#(4*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b1;#(8*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b0;#(8*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b1;#(12*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b0;#(4*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b1;#(12*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b0;#(4*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b1;#(8*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b0;#(8*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b1;#(12*CLK_PERIOD); @(posedge clk);
  reCLK = 1'b0;#(4*CLK_PERIOD); @(posedge clk);

  // Finish the testbench
  $finish;
end
endmodule

