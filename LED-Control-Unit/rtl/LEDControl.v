// =============================================================================
// Filename: LEDControl.v
// Author: XIE, Baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file implements a LEDControl with one counter and one comparator.
// =============================================================================
`timescale 1 ns / 1 ps

module LEDControl (
	input wire oscillator,
	input wire [11:0] LEDFrameData,
	input wire globalReset,
	output wire power
);

wire [11:0] counterResult;
Counter12Bit count(counterResult, oscillator, globalReset);
Comparator12Bit comp(power, counterResult, LEDFrameData);

endmodule

//----------------------------------------------------------------------------
//the output is 1 when A<B, the priority encoder technique is used
module Comparator12Bit (
	output wire Vout, 
	input wire [11:0] A,
	input wire [11:0] B
);

wire [11:0] AxorB;
reg [11:0] priorityEncoder;
//wire [11:0] AandPE;
wire [11:0] BandPE;

//genrating AxorB data
genvar i;
generate
	for(i=0; i<12; i=i+1) begin: AXORB
		assign AxorB[i] = A[i] ^ B[i];
	end
endgenerate

//performing priority encoding
always @(*) begin
	casez (AxorB[11:0])
		12'b1???????????: priorityEncoder = 12'b100000000000;
		12'b01??????????: priorityEncoder = 12'b010000000000;
		12'b001?????????: priorityEncoder = 12'b001000000000;
		12'b0001????????: priorityEncoder = 12'b000100000000;
		12'b00001???????: priorityEncoder = 12'b000010000000;
		12'b000001??????: priorityEncoder = 12'b000001000000;
		12'b0000001?????: priorityEncoder = 12'b000000100000;
		12'b00000001????: priorityEncoder = 12'b000000010000;
		12'b000000001???: priorityEncoder = 12'b000000001000;
		12'b0000000001??: priorityEncoder = 12'b000000000100;
		12'b00000000001?: priorityEncoder = 12'b000000000010;
		12'b000000000001: priorityEncoder = 12'b000000000001;
		default: priorityEncoder = 12'b000000000000;
	endcase
end

//A AND priorityEncoder, B AND priorityEncoder
//e.g A = 4'b0100, priorityEncoder = 4'b1000, A & priorityEncoder = 4'b0000 
//assign AandPE = A & priorityEncoder;
assign BandPE = B & priorityEncoder;

//单目运算c=&B;          //意思同c=((B[0]&B[1]) &B[2] ) & B[3];
//we need when A<B Vout=1
assign Vout = |BandPE;
endmodule

//-----------------------------------------------------------------------------------------


module Counter12Bit (
	output reg [11:0] result,
	input wire clk,
	input wire globalReset
);
reg RST;

always @(posedge clk or negedge RST or posedge globalReset) begin
	if(globalReset) begin
		result <= 12'b111111111111;
		RST <= 1'b1;
	end else begin
		if(!RST) begin
			result <= 12'b000000000000;
			RST <= 1'b1;
			end
		else begin
			result <= result + 1'b1;
			//if reach 4094 set RST to low 
			if(&result[11:1]) begin
				RST <= 1'b0;
			end else begin
				RST <= 1'b1;
			end
		end
	end
end
endmodule


//-------------------------------------------------------------------------------------

