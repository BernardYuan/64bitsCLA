`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:54:35 03/31/2015
// Design Name:   CLA_64bits
// Module Name:   I:/adders/carry_look_ahead_adder_64bits/vtf_64bitCLA.v
// Project Name:  carry_look_ahead_adder_64bits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_64bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vtf_64bitCLA;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;
	reg c;

	// Outputs
	wire [63:0] S;
	wire P;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	CLA_64bits uut (
		.A(A), 
		.B(B), 
		.c(c), 
		.S(S), 
		.P(P), 
		.G(G)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
	initial begin 
		A=16'h000000000000000F;
		B=16'h000000000000000A;
		c=0;
		#200;
		A=16'h0FFFFFFFFFFFFFFF;
		B=16'h0000000000000001;
		c=0;
		#300;
	end
      
endmodule

