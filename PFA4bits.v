`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:55 03/31/2015 
// Design Name: 
// Module Name:    PFA4bits 
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
module TopLevel(
	input wire [3:0] A,
	input wire [3:0] B,
	input wire c,
	output wire [3:0] R,
	output wire P,
	output wire G
    );
	 wire [3:0]pp;
	 wire [3:0]gg;
	 wire [3:1]carry;
	 
	PFA pfa0(A[0], B[0],c,R[0],pp[0],gg[0]);
	PFA pfa1(A[1],B[1], carry[1],R[1],pp[1],gg[1]);
	PFA pfa2(A[2],B[2], carry[2], R[2],pp[2], gg[2]);
	PFA pfa3(A[3], B[3], carry[3], R[3],pp[3],gg[3]);
	CLA4bits cla(pp,gg,c,carry,P,G);
endmodule
