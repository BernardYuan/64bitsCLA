`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:07 03/25/2015 
// Design Name: 
// Module Name:    carry_lookahead_adder 
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
module CLA4bits(
			input wire [3:0] P,
			input wire [3:0] G,
			input wire c,
			output wire [3:1] carry,
			output wire PP,
			output wire GG);
	wire m0;
	wire [1:0] m1;
	wire [2:0] m2;
	wire [2:0] m3;
	
	and (m0,P[0],c);
	or (carry[1],m0,G[0]);
	
	and (m1[0],P[1],G[0]);
	and (m1[1],P[1],P[0],c);
	or  (carry[2],G[1],m1[0],m1[1]);
	
	and (m2[0],	P[2], G[1]);
	and (m2[1], P[2], P[1],G[0]);
	and (m2[2], P[2], P[1], P[0], c);
	or  (carry[3], G[2], m2[0], m2[1], m2[2]);
	
	and (PP,P[3],P[2],P[1],P[0]);
	
	
	and (m3[0], P[3], G[2]);
	and (m3[1], P[3], P[2], G[1]);
	and (m3[2], P[3], P[2], P[1], G[0]);
	or (GG, G[3],m3[0],m3[1],m3[2]); 
	

endmodule
