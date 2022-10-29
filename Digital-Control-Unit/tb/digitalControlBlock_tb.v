// =============================================================================
// Filename: digitalControlBlock_tb.v
// Author: XIE, BaohuiXie
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file exports the testbench for digitalControlBlock module.
// =============================================================================

`timescale 1 ns / 1 ps
`include "../rtl/decoder.v"

module digitalControlBlock_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 1.0;  // clock period: 1ns/1GHz

// ----------------------------------
// Interface of the digitalControlBlock module
// ----------------------------------
//--global
reg globalReset;

//--decoder
reg ManchesterCode;
reg [3:0] REF;
reg clk;
wire recoveredCLK;
wire balanceCLK;
wire reData;

//digitalControlBlock
reg [15:0] REF16Bits;
reg [5:0] REF6Bit;
wire dataOut;
wire [11:0] Bdata, Gdata, Rdata;

//data
reg [15:0] header;
reg [38:0] chip1Data;
reg [38:0] chip2Data;
reg [148:0] DataFrame;
integer i;

// ----------------------------------
// Instantiate the digitalControlBlock
// ----------------------------------
decoder uut1 (reData, recoveredCLK, balanceCLK, ManchesterCode, clk, REF[3:0], globalReset);

digitalControlBlock uut2 (
	dataOut, 
	Bdata[11:0] , 
	Gdata[11:0], 
	Rdata[11:0], 
	recoveredCLK, 
	reData, 
	globalReset, 
	REF16Bits[15:0], 
	REF6Bit[5:0]
);

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


initial begin: console
  i=0;
  REF = 4'd8;								// reference number for decoder
  REF16Bits = 16'b1111111111111110; 		//frame header for digital controlblock shift register
  REF6Bit = 6'b100111;						//39 for digital control block for gated clock block
	
	ManchesterCode <= 1'b0;#(16*CLK_PERIOD);			//IDLE
	ManchesterCode <= 1'b0;#(8*CLK_PERIOD); @(posedge clk);
	ManchesterCode <= 1'b1;#(8*CLK_PERIOD); 					//insert 0 for first bit to synchronization
	header = 16'b1111_1111_1111_1110;  
	chip1Data = 39'b1010101010100_1010101010100_1010101010100;
	chip2Data = 39'b1111111111110_1111111111110_1111111111110;
	DataFrame = 151'b0000000000000_0000000000000_0000000000000_0000000000000000_1111111111110_1111111111110_1111111111110_1010101010100_1010101010100_1010101010100_1111111111111110_00;
	
	//产生header
	for(i=0; i<151; i=i+1)
		begin: shiftDataFrameIn
			if(DataFrame[i])begin
				ManchesterCode <= 1'b1;#(8*CLK_PERIOD);@(negedge clk);
				ManchesterCode <= 1'b0;#(8*CLK_PERIOD);
			end else begin
				ManchesterCode <= 1'b0;#(8*CLK_PERIOD);@(posedge clk);
				ManchesterCode <= 1'b1;#(8*CLK_PERIOD);
			end
		end
		
  // Finish the testbench
  $finish;
end


endmodule

