// =============================================================================
// Filename: digitalControlBlock.v
// Author: XIE, Baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file implements a digitalControlBlock.
// =============================================================================
`timescale 1 ns / 1 ps

//-------------------------------------------------------------------------------------------------

module digitalControlBlock(
	output wire dataOut,
	output wire [11:0] Bdata,
	output wire [11:0] Gdata,
	output wire [11:0] Rdata,
	input wire reCLK,
	input wire reData,
	input wire globalReset,
	input wire [15:0] REF16Bits,
	input wire [5:0] REF6Bit
);

wire headerDetected, gateCLK;

shiftAndRegBlock SRblock(dataOut, headerDetected, Bdata[11:0], Gdata[11:0], Rdata[11:0], REF16Bits[15:0], reCLK, reData, globalReset, gateCLK);
GatedCLKBlock GCLKblock(gateCLK, headerDetected, globalReset, REF6Bit[5:0], reCLK);

endmodule
//--------------------------------------------------------------------------------------------------------------------------------------

//OUTPUT IS HIGH WHEN A=REF
module Comparator6Bit (	//6bits required because 6'b111111=63	5'b11111=31	  39=6'b100111
	output wire Vout, 
	input wire [5:0] A,
	input wire [5:0] REF
);
reg [5:0] priorityEncoder;
wire [5:0] AandPE, REFandPE, AxorREF;
wire Abig, REFbig;

//genrating AxorREF data
genvar i;
generate
	for(i=0; i<6; i=i+1) begin: AXOREF
		assign AxorREF[i] = A[i] ^ REF[i];
	end
endgenerate

//performing priority encoding
always @(*) begin
	casez (AxorREF[5:0])
		6'b1?????: priorityEncoder = 6'b100000;
		6'b01????: priorityEncoder = 6'b010000;
		6'b001???: priorityEncoder = 6'b001000;
		6'b0001??: priorityEncoder = 6'b000100;
		6'b00001?: priorityEncoder = 6'b000010;
		6'b000001: priorityEncoder = 6'b000001;
		default: priorityEncoder = 6'b000000;
	endcase
end

//A AND priorityEncoder, REF AND priorityEncoder
//e.g A = 4'b0100, priorityEncoder = 4'b1000, A & priorityEncoder = 4'b0000 
assign AandPE = A & priorityEncoder;
assign REFandPE = REF & priorityEncoder;

//单目运算c=&B;          //意思同c=((B[0]&B[1]) &B[2] ) & B[3];
//we need when A=REF Vout=1
assign Abig = |AandPE;
assign REFbig = |REFandPE;
assign Vout = !(Abig||REFbig);
endmodule


//-----------------------------------------------------------------------------------------

module Counter6Bit (
	output reg [5:0] count,
	input wire clk,
	input wire globalReset,
	input wire R
);

always @(posedge clk or negedge R or posedge globalReset) begin
	if(globalReset) begin
		count <= 6'b000000;
	end else begin 
		if(!R) begin
			count <= 6'b000000;
		end else begin
			count <= (&count[5:0]) ? count : count + 1'b1;
		end
	end
end
endmodule


//-------------------------------------------------------------------------------------


module DFF_digitalControlBlock(
	output reg notQ,
	input wire R,
	input wire clk,
	input wire globalReset
);

always @(posedge clk or posedge globalReset or posedge R) begin
	if(globalReset) begin
		notQ <= 1'b1;
	end else begin 
		if(R) begin
			notQ <= 1'b1;
		end else begin
			notQ <= 1'b0;
		end
	end
end

endmodule


//-------------------------------------------------------------------------------------------

module GatedCLKBlock (
	output wire GatedCLK,
	input wire headerDetected,
	input wire globalReset,
	input wire [5:0] REF,
	input wire reCLK	//recovered clock
);

wire [5:0] countOut;
wire notQ, compOut;

Counter6Bit counter1(countOut[5:0], reCLK, globalReset, headerDetected);
Comparator6Bit comparator1(compOut, countOut[5:0], REF[5:0]);		
//reference is 39 already insert in comparator
DFF_digitalControlBlock	dff1(notQ, compOut, headerDetected, globalReset);
assign GatedCLK = reCLK && notQ;

endmodule



//--------------------------------------------------------------------------------------
//Frame header = 16'b1111111111111110
module Comparator16Bit (	//compare with frame header
	output wire headerDetected, 
	input wire [15:0] A,
	input wire [15:0] REF
);
reg [15:0] priorityEncoder;
wire [15:0] AandPE, REFandPE, AxorREF;
wire Abig, REFbig;//A is data, REF is header form
	
//genrating AxorREF data
genvar i;
generate
	for(i=0; i<16; i=i+1) begin: AXOREF
		assign AxorREF[i] = A[i] ^ REF[i];
	end
endgenerate

//performing priority encoding
always @(*) begin
	casez (AxorREF[15:0])
		16'b1???????????????: priorityEncoder = 16'b1000000000000000;
		16'b01??????????????: priorityEncoder = 16'b0100000000000000;
		16'b001?????????????: priorityEncoder = 16'b0010000000000000;
		16'b0001????????????: priorityEncoder = 16'b0001000000000000;
		16'b00001???????????: priorityEncoder = 16'b0000100000000000;
		16'b000001??????????: priorityEncoder = 16'b0000010000000000;
		16'b0000001?????????: priorityEncoder = 16'b0000001000000000;
		16'b00000001????????: priorityEncoder = 16'b0000000100000000;
		16'b000000001???????: priorityEncoder = 16'b0000000010000000;
		16'b0000000001??????: priorityEncoder = 16'b0000000001000000;
		16'b00000000001?????: priorityEncoder = 16'b0000000000100000;
		16'b000000000001????: priorityEncoder = 16'b0000000000010000;
		16'b0000000000001???: priorityEncoder = 16'b0000000000001000;
		16'b00000000000001??: priorityEncoder = 16'b0000000000000100;
		16'b000000000000001?: priorityEncoder = 16'b0000000000000010;
		16'b0000000000000001: priorityEncoder = 16'b0000000000000001;		
		default: priorityEncoder = 16'b0000000000000000;
	endcase
end

//A AND priorityEncoder, REF AND priorityEncoder
//e.g A = 4'b0100, priorityEncoder = 4'b1000, A & priorityEncoder = 4'b0000 
assign AandPE = A & priorityEncoder;
assign REFandPE = REF & priorityEncoder;

//单目运算c=&B;          //意思同c=((B[0]&B[1]) &B[2] ) & B[3];
//we need when A=REF headerDetected=1
assign Abig = |AandPE;
assign REFbig = |REFandPE;
assign headerDetected = !(Abig||REFbig);
endmodule

//-----------------------------------------------------------------------------------



module shiftReg13Bit (
	output wire out,
	output wire [11:0] data,
	input wire in,
	input wire clk,
	input wire globalReset
);

reg [12:0] current;
wire [12:0] next;

always @(posedge clk or posedge globalReset) begin
	if(globalReset) begin
		current <= 13'b0000000000000;
		//data <= 12'b000000000000;
	end else begin
		current <= next;
		//data <= {in, current[12:2]};
	end
end

assign next = {in, current[12:1]}; //检查
assign out = current[0];
assign data = current[12:1];
endmodule


//-----------------------------------------------------------------------------------

module shiftReg16Bit (
	output wire out,		
	//这里避免用reg，应为运行当中会遇到突然少了一个bit，原因是这个缺少的bit会寄存在这个reg里
	output wire [15:0] data,
	input wire in,
	input wire clk,
	input wire globalReset
);

reg [15:0] current;
wire [15:0] next;

always @(posedge clk or posedge globalReset) begin
	if(globalReset) begin
		current <= 16'b0000000000000000;
		//out <= 1'b0;
	end else begin
		//out <= current[0];
		current <= next;
	end
end

assign next = {in, current[15:1]};
//assign data = current;
assign data = current;
assign out = current[0];
endmodule

//----------------------------------------------------------------------------------------


module parallelShiftReg12Bit (
	output reg [11:0] data,
	input wire [11:0] in,
	input wire clk,
	input wire globalReset
);

always @(posedge clk or posedge globalReset) begin
	if(globalReset) begin
		data <= 12'b000000000000;
	end else begin
		data <= in[11:0];
	end
end

endmodule


//------------------------------------------------------------------------------------------------


module shiftAndRegBlock(
	output wire dataOut,
	output wire headerDetected,
	output wire [11:0] Bdata,
	output wire [11:0] Gdata,
	output wire [11:0] Rdata,
	input wire [15:0] REF,
	input wire reCLK,
	input wire reData,
	input wire globalReset,
	input wire gateCLK
);

wire reg1out, reg2out, reg3out;
wire [11:0] reg1Data, reg2Data, reg3Data;
wire [15:0] A;
 
shiftReg13Bit reg13BitB(reg1out, reg1Data[11:0], reData, reCLK, globalReset);
shiftReg13Bit reg13BitG(reg2out, reg2Data[11:0], reg1out, reCLK, globalReset);
shiftReg13Bit reg13BitR(reg3out, reg3Data[11:0], reg2out, reCLK, globalReset);
shiftReg16Bit reg16Bit1(dataOut, A[15:0], reg3out, gateCLK, globalReset);

Comparator16Bit comparator16Bit1(headerDetected, A[15:0], REF[15:0]);
 
parallelShiftReg12Bit Preg12BitB(Bdata[11:0], reg1Data[11:0], headerDetected, globalReset);
parallelShiftReg12Bit Preg12BitG(Gdata[11:0], reg2Data[11:0], headerDetected, globalReset);
parallelShiftReg12Bit Preg12BitR(Rdata[11:0], reg3Data[11:0], headerDetected, globalReset);

endmodule

