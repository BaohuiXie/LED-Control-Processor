// =============================================================================
// Filename: encoder.v
// Author: XIE, Baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file implements a encoder.
// =============================================================================
`timescale 1 ns / 1 ps
module encoder(
	output wire out,
	input wire balanceCLK,
	input wire [3:0] REF4Bits,
	input wire reData,
	input wire clk,
	input wire globalReset
);
wire DIV8_CLK, metaData, IDLE, q1, balanceCLK_delayed;

DFF_encoder dff9(q1, balanceCLK, DIV8_CLK, globalReset);
DFF_encoder dff10(balanceCLK_delayed, q1, DIV8_CLK, globalReset);
DIV8CLK DIV8CLK1(DIV8_CLK, globalReset, clk);
metastablility_corrected_reData metastablility_corrected_reData1(metaData, reData, globalReset, DIV8_CLK);
IDLEdetection IDLEdetection1(IDLE, balanceCLK_delayed, clk, REF4Bits[3:0], globalReset);
/* DFF_encoder dff9(q1, IDLE, DIV8_CLK, globalReset);
DFF_encoder dff10(IDLE_delayed, q1, DIV8_CLK, globalReset); */
FSM FSM1(out, metaData, IDLE, DIV8_CLK, globalReset);

endmodule

//三段式状态机--------------------------------------------------------------
module FSM(
	output reg out,
	input wire metaData,
	input wire IDLE,
	input wire DIV8_CLK,
	input wire globalReset
);
//definition of each state of Finite State Machine
parameter IDLE_state = 3'b000, A = 3'b001, B = 3'b010, C = 3'b011, D = 3'b100; 

reg [2:0] state, next_state;
//状态记忆
always @(posedge globalReset or posedge DIV8_CLK) begin
	if(globalReset) begin
		state <= IDLE_state;
	end else begin
		state <= next_state;
	end
end


//状态转移
always @(metaData or IDLE or state or globalReset)begin	//电平敏感
	if(globalReset) begin
		next_state = IDLE_state;	//这里马上赋值,不用<=
	end else begin
		case(state)
		IDLE_state: begin
			if(IDLE) begin
				next_state = IDLE_state;
			end else begin
				next_state = (metaData) ? A : C;
			end
		end
		A: next_state = B;
		B: begin
			if(IDLE) begin
				next_state = IDLE_state;
			end else begin
				next_state = (metaData) ? A : C;
			end
		end
		C: next_state = D;
		D: begin
			if(IDLE) begin
				next_state = IDLE_state;
			end else begin
				next_state = (metaData) ? A : C;
			end
		end
		default: next_state = IDLE_state;
	endcase
	end
end


//逻辑输出
always @(*)begin
	if(globalReset) begin
		out <= 1'b0;
	end else begin
		case(next_state)					//这里是next_state
			IDLE_state: out <= 1'b0;
			A: out <= 1'b1;
			B: out <= 1'b0;
			C: out <= 1'b0;
			D: out <= 1'b1;
			default: out <= 1'b0;
		endcase
	end
end

endmodule





//以下生成DIV8_clock
//----------------------------------------------------------------------------------------

module DIV8CLK (
	output reg reverse,
	//output reg [2:0] count,
	input wire globalReset,
	input wire clk
);

reg [2:0] count;
always @(posedge clk or posedge globalReset) begin
	if(globalReset) begin 
		count <= 3'b001;
		reverse <= 1'b0;
	end else begin
		if(count[2]&&(!(count[1]||count[0]))) begin
			count <= 3'b001;
		end else begin
			count <= (&count[2:0]) ? count : count + 1'b1;	//count=3'b100 (4) 
		end
		reverse <= (count[2]&&(!(count[1]||count[0]))) ? !reverse : reverse;
	end
end

endmodule
//--------------------------------------------------------------------

module DFF_encoder(
	output reg Q,
	input wire D,
	input wire clk,
	input wire globalReset
);

always @(posedge clk or posedge globalReset) begin
	if(globalReset) begin
		Q <= 1'b0;
	end else begin 
		Q <= D;
	end
end

endmodule


//-------------------------------------------------------------------------------------------

module metastablility_corrected_reData(
	output wire data,
	input wire reData,
	input wire globalReset,
	input wire DIV8
);

wire w1;
DFF_encoder dff7(w1, reData, DIV8, globalReset);
DFF_encoder dff8(data, w1, DIV8, globalReset);

endmodule








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

