`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:31 03/31/2015 
// Design Name: 
// Module Name:    CLA_64bits 
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
module CLA_64bits(
	input wire [63:0] A,
	input wire [63:0] B,
	input wire c,
	output wire [63:0] S,
	output wire P,
	output wire G
    );
	 wire [3:1] carry;
	 wire [3:0] pp;
	 wire [3:0] gg;
	 CLA_16bits c16b0(A[15:0],B[15:0],c,S[15:0],pp[0],gg[0]);
	 CLA_16bits c16b1(A[31:16],B[31:16],carry[1],S[31:16],pp[1],gg[1]);
	 CLA_16bits c16b2(A[47:32],B[47:32],carry[2],S[47:32],pp[2],gg[2]);
	 CLA_16bits c16b3(A[63:48],B[63:48],carry[3],S[63:48],pp[3],gg[3]);
	 CLA4bits c4b(pp,gg,c,carry,P,G);
	//wire [63:0] c_B;
	//wire [3:0][3:0] p;
	//wire [3:0][3:0] g;
	//wire [3:0] pp;
	//wire [3:0] gg;
	//wire [3:0][3:0]carry;
	//wire [
	
	/*xor (c_B[0], op, B[0]);
	xor (c_B[1], op, B[1]);
	xor (c_B[2], op, B[2]);
	xor (c_B[3], op, B[3]);
	xor (c_B[4], op, B[4]);
	xor (c_B[5], op, B[5]);
	xor (c_B[6], op, B[6]);
	xor (c_B[7], op, B[7]);
	xor (c_B[8], op, B[8]);
	xor (c_B[9], op, B[9]);
	xor (c_B[10], op, B[10]);
	xor (c_B[11], op, B[11]);
	xor (c_B[12], op, B[12]);
	xor (c_B[13], op, B[13]);
	xor (c_B[14], op, B[14]);
	xor (c_B[15], op, B[15]);
	xor (c_B[16], op, B[16]);
	xor (c_B[17], op, B[17]);
	xor (c_B[18], op, B[18]);
	xor (c_B[19], op, B[19]);
	xor (c_B[20], op, B[20]);
	xor (c_B[21], op, B[21]);
	xor (c_B[22], op, B[22]);
	xor (c_B[23], op, B[23]);
	xor (c_B[24], op, B[24]);
	xor (c_B[25], op, B[25]);
	xor (c_B[26], op, B[26]);
	xor (c_B[27], op, B[27]);
	xor (c_B[28], op, B[28]);
	xor (c_B[29], op, B[29]);
	xor (c_B[30], op, B[30]);
	xor (c_B[31], op, B[31]);
	xor (c_B[32], op, B[32]);
	xor (c_B[33], op, B[33]);
	xor (c_B[34], op, B[34]);
	xor (c_B[35], op, B[35]);
	xor (c_B[36], op, B[36]);
	xor (c_B[37], op, B[37]);
	xor (c_B[38], op, B[38]);
	xor (c_B[39], op, B[39]);
	xor (c_B[40], op, B[40]);
	xor (c_B[41], op, B[41]);
	xor (c_B[42], op, B[42]);
	xor (c_B[43], op, B[43]);
	xor (c_B[44], op, B[44]);
	xor (c_B[45], op, B[45]);
	xor (c_B[46], op, B[46]);
	xor (c_B[47], op, B[47]);
	xor (c_B[48], op, B[48]);
	xor (c_B[49], op, B[49]);
	xor (c_B[50], op, B[50]);
	xor (c_B[51], op, B[51]);
	xor (c_B[52], op, B[52]);
	xor (c_B[53], op, B[53]);
	xor (c_B[54], op, B[54]);
	xor (c_B[55], op, B[55]);
	xor (c_B[56], op, B[56]);
	xor (c_B[57], op, B[57]);
	xor (c_B[58], op, B[58]);
	xor (c_B[59], op, B[59]);
	xor (c_B[60], op, B[60]);
	xor (c_B[61], op, B[61]);
	xor (c_B[62], op, B[62]);
	xor (c_B[63], op, B[63]);*/
	//TopLevel tp0(A[0:3],c_B[0:3],op,S[0:3],p[0][0],g[0][0]);
	//TopLevel tp1(A[4:7],c_B[4:7],
	
endmodule
