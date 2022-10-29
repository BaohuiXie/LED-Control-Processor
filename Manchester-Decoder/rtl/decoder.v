// =============================================================================
// Filename: decoder.v
// Author: XIE, Baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file implements a ManchesterDecoder.
// =============================================================================
`timescale 1 ns / 1 ps



//------------------------------------------------------------------------------------------------

module decoder(
	output wire recoveredData,
	output wire recoveredCLK,
	output wire balancedCLK,
	input wire ManchesterCode,
	input wire osc,
	input wire [3:0] REF,
	input wire globalReset
);

wire delayPulse;


xor x1(recoveredCLK, ManchesterCode, recoveredData);
delayBlock db1(delayPulse, recoveredCLK, REF[3:0], globalReset, osc);
DFF_decoder dff1(recoveredData, ManchesterCode, delayPulse, globalReset);		//disable the reset
balanceBlock bb1(balancedCLK, globalReset, osc, REF[3:0], recoveredCLK);

endmodule

//----------------------------------------------------------------------------------

//OUTPUT IS HIGH WHEN A<=REF
module Comparator4BitInverted (
	output wire Vout, 
	input wire [3:0] A,
	input wire [3:0] REF
);
//initial and define REF
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
		4'b1???: priorityEncoder = 4'b1000;
		4'b01??: priorityEncoder = 4'b0100;
		4'b001?: priorityEncoder = 4'b0010;
		4'b0001: priorityEncoder = 4'b0001;
		default: priorityEncoder = 4'b0000;
	endcase
end

//A AND priorityEncoder, REF AND priorityEncoder
//e.g A = 4'b0100, priorityEncoder = 4'b1000, A & priorityEncoder = 4'b0000 
assign AandPE = A & priorityEncoder;
//assign REFandPE = B & priorityEncoder;

//单目运算c=&B;          //意思同c=((B[0]&B[1]) &B[2] ) & B[3];
//we need when A>REF Vout=1
assign Vout = !(|AandPE);
endmodule

//-----------------------------------------------------------------------------------------

/* //4'b1100=12
module Counter (
	output reg [3:0] count,
	output reg out,
	input wire clk,
	input wire globalReset,
	input wire EN
);

reg Ld;


always @(posedge clk  or posedge globalReset) begin
	if(globalReset) begin
		count <= 4'b1100;
		out <= 1'b0;
	end else begin
	Ld <= out;
		if(Ld) begin
			count <= 4'b1100;
			out <= 1'b0;
		end else begin
			if(EN) begin
				if(count > 3'b001) begin
					count <= count - 1'b1;
				end else begin //go to here when count = 4'b0001
					count <= 4'b0000;//count to zero
					out <= 1'b1;
				end
			end else begin
				count <= 4'b1100;
				out <= 1'b0;
			end
		end
	end
end
endmodule */
module Counter (
	output reg [3:0] count,
	output reg out,
	input wire clk,
	input wire globalReset,
	input wire EN
);
reg Ld;
always @(posedge clk or posedge globalReset) begin
	if(globalReset) begin
		count <= 4'b1100;
		out <= 1'b0;
		Ld <= 1'b0;
	end else begin
		if(EN) begin
			if(count == 0) begin
				count <= 4'b1100;
				out <= 1'b0;
				Ld <= 1'b0;
			end else if (count == 1) begin
				out <= 1'b1;
				Ld <= 1'b1;
				count <= count - 1;
			end else begin
				count <= count - 1;
			end
		end else begin
			count <= 4'b1100;
			out <= 1'b0;
		end
		
	end
end

endmodule

//-----------------------------------------------------------------------------------

module delayBlock(
	output wire delayPulse,
	input wire reCLK,
	input wire [3:0] REF,
	input wire globalReset,
	input wire osc
);

wire [3:0] counterOut;
wire compOut, EN;

assign EN = reCLK||(compOut);

Counter counter1 (counterOut[3:0], delayPulse, osc, globalReset, EN); //因为comparator设计时A>REF输出高，所以为了变成A<=REF输出高，要在输出端反一下
Comparator4BitInverted comp1 (compOut, counterOut[3:0], REF[3:0]);

endmodule


//------------------------------------------------------------------------
//OUTPUT IS HIGH WHEN A>REF
module Comparator4Bit (
	output wire Vout, 
	input wire [3:0] A,
	input wire [3:0] REF
);
//initial and define REF
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
		4'b1???: priorityEncoder = 4'b1000;
		4'b01??: priorityEncoder = 4'b0100;
		4'b001?: priorityEncoder = 4'b0010;
		4'b0001: priorityEncoder = 4'b0001;
		default: priorityEncoder = 4'b0000;
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


//----------------------------------------------------------------------------------------


module Counter4b (
	output reg [3:0] count,
	input wire RST,
	input wire globalReset,
	input wire clk
);

always @(posedge clk or negedge RST or posedge globalReset) begin
	if(globalReset) begin 
		count <= 4'b1111;
	end else begin
		if(!RST) begin
			count <= 4'b0000;
		end else begin
			count <= (&count[3:0]) ? count : count + 1'b1;	//count=4'b1001 (9) 就比REF大，comparator输出1，但counter本身不reset
		end
	end
end
endmodule


//-------------------------------------------------------------------------------------

module modifiedDFF(
	output reg Q,
	input wire R,
	input wire clk
);

always @(*) begin
	if(!clk) begin	
		Q <= 1'b0;
	end else begin	
		if(!R) begin	
			Q <= 1'b1;
		end else begin
			Q <= 1'b0;
		end
	end 
end

endmodule


//-------------------------------------------------------------------------------------------

module balanceBlock (
	output wire balanceCLK,
	input wire globalReset,
	input wire osc,
	input wire [3:0] REF,
	input wire reCLK	//recovered clock
);
wire [3:0] countOut;
wire compOut;
Counter4b counter2(countOut[3:0], reCLK, globalReset, osc);
Comparator4Bit comparator2(compOut, countOut[3:0], REF[3:0]);		//reference is 8
modifiedDFF	modifiedDFF1(balanceCLK, compOut, reCLK);

endmodule

//--------------------------------------------------------------------------------------

module DFF_decoder(
	output reg Q,
	input wire D,
	input wire clk,
	input wire reset
);

always @(posedge clk or posedge reset) begin
	Q <= (reset) ? 1'b0 : D;  
end
endmodule
