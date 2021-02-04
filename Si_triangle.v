`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:12 11/18/2020 
// Design Name: 
// Module Name:    Si_triangle 
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
module Si_triangle(
    input Pi,
    input Ci_prev,
    output Si
	 );
	
	xor xor_0 (Si, Pi, Ci_prev);

endmodule
