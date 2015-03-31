`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:59 03/25/2015 
// Design Name: 
// Module Name:    partial_full_adder 
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
module PFA(input wire A, input wire B, input wire C, output wire R, output wire P, output wire G);
	xor(P,A,B);
	and(G,A,B);
	xor(R,P,C);
endmodule
