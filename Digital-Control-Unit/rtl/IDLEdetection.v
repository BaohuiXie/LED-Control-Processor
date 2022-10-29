// =============================================================================
// Filename: IDLEdetection.v
// Author: XIE, Baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file implements a IDLEdetection.
// =============================================================================
`timescale 1 ns / 1 ps


//------------------------------------------------------------------------------------------------

module IDLEdetection(
	output wire IDLE,
	input wire balancedCLK,
	input wire clk,
	input wire [3:0] REF4Bits,
	input wire globalReset
);

wire pulse, compOut;
wire [3:0] counterOut;

edgeDetector ed1(pulse, clk, balancedCLK);
Counter4Bit c1(counterOut, clk, pulse, globalReset);		
Comparator4Bit comp1(compOut, counterOut, REF4Bits[3:0]);		//safer option for REF 12<REF<15
DFF_IDLE dff2(IDLE, pulse, compOut, globalReset);

endmodule
//-----------------------------------------------------------------------------------------------------

//OUTPUT IS HIGH WHEN A>REF			safer option for REF 12<REF<15
module Comparator4Bit (
	output wire Vout, 
	input wire [3:0] A,
	input wire [3:0] REF
);

wire [3:0] AxorREF;
reg [3:0] priorityEncoder;
wire [3:0] AandPE;
//wire [3:0] REFandPE;

//genrating AxorREF data
genvar i;
generate
	for(i=0; i<4; i=i+1) begin: AXOREF
		assign AxorREF[i] = A[i] ^ REF[i];
	end
endgenerate

//performing priority encoding
always @(*) begin
	casez (AxorREF[3:0])
		4'b1???: priorityEncoder = 12'b1000;
		4'b01??: priorityEncoder = 12'b0100;
		4'b001?: priorityEncoder = 12'b0010;
		4'b0001: priorityEncoder = 12'b0001;
		default: priorityEncoder = 12'b0000;
	endcase
end

//A AND priorityEncoder, REF AND priorityEncoder
//e.g A = 4'b0100, priorityEncoder = 4'b1000, A & priorityEncoder = 4'b0000 
assign AandPE = A & priorityEncoder;
//assign REFandPE = B & priorityEncoder;

//单目运算c=&B;          //意思同c=((B[0]&B[1]) &B[2] ) & B[3];
//we need when A>REF Vout=1
assign Vout = |AandPE;
endmodule

//-----------------------------------------------------------------------------------------

//4'b1101=13
module Counter4Bit (
	output reg [3:0] count,
	input wire clk,
	input wire R,
	input wire globalReset
);

always @(posedge clk or posedge R or posedge globalReset) begin
	if(globalReset) begin
		count <= 4'b0000;
	end else begin
		if(R) begin
			count <= 4'b0000;
		end else begin
			count <= (&count[3:0]) ? count : count + 1'b1;
		end
	end
end
endmodule


//-----------------------------------------------------------------------------------

module edgeDetector(
	output wire pulse,
	input wire clk,
	input wire balancedCLK
);

wire x1Out;
reg x1Out_dly;

always @(posedge clk) begin
	x1Out_dly <= x1Out;
end

xnor x1(x1Out, balancedCLK, 1'b0);
xnor x2(pulse, balancedCLK, x1Out_dly);

endmodule


//-------------------------------------------------------------------------------------


module DFF_IDLE(
	output reg Q,
	input wire R,
	input wire clk,
	input wire globalReset
);

always @(posedge clk or posedge R or posedge globalReset) begin
	if(globalReset) begin
		Q <= 1'b1;
	end else begin
		if(R) begin
			Q <= 1'b0;
		end else begin
			Q <= 1'b1;
		end
	end
end

endmodule

