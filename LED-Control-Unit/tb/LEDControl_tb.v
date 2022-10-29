// =============================================================================
// Filename: LEDControl_tb.v
// Author: XIE, BaohuiXie
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file exports the testbench for LEDControl module.
// =============================================================================

`timescale 1 ns / 1 ps

module LEDControl_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 244.0;  // clock period: 244ns/4.1MHz

// ----------------------------------
// Interface of the LEDControl module
// ----------------------------------
reg clk;
reg [11:0] LEDFrameData;
reg globalReset;
wire power;

// ----------------------------------
// Instantiate the LEDControl
// ----------------------------------
LEDControl uut (clk, LEDFrameData[11:0], globalReset, power);

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
//max(4095)
  globalReset <= 1'b0;#10;
  globalReset <= 1'b1;#10;
  globalReset <= 1'b0;
  LEDFrameData <= 12'd4094;
  #998940;
  globalReset <= 1'b0;#10;
  globalReset <= 1'b1;#10;
  globalReset <= 1'b0;
  LEDFrameData <= 12'd5;
  #998940;
  globalReset <= 1'b0;#10;
  globalReset <= 1'b1;#488;
  globalReset <= 1'b0;
  LEDFrameData <= 12'd8;
  #998940;
  globalReset <= 1'b0;#10;
  globalReset <= 1'b1;#10;
  globalReset <= 1'b0;
  LEDFrameData <= 12'd10;
  #998940;
  globalReset <= 1'b0;#10;
  globalReset <= 1'b1;#10;
  globalReset <= 1'b0;
  LEDFrameData <= 12'd1;
  #998940;
  LEDFrameData <= 12'd3000;
  #998940;
  LEDFrameData <= 12'd2000;
  #998940;
  $finish;
end

endmodule
