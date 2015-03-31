`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:24:48 03/31/2015 
// Design Name: 
// Module Name:    CLA_16bits 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CLA_16bits(
	input wire [15:0] A,
	input wire [15:0] B,
	input wire c,
	output wire [15:0] R,
	output wire P,
	output wire G
    );
	 wire [3:1] carry;
	 wire [3:0] pp;
	 wire [3:0] gg;
	TopLevel tp0(A[3:0],B[3:0],c,R[3:0],pp[0],gg[0]);
	TopLevel tp1(A[7:4],B[7:4],carry[1],R[7:4],pp[1],gg[1]);
	TopLevel tp2(A[11:8],B[11:8],carry[2],R[11:8],pp[2],gg[2]);
	TopLevel tp3(A[15:12],B[15:12],carry[3],R[15:12],pp[3],gg[3]);
	CLA4bits cfb(pp,gg,c,carry,P,G);

endmodule
