`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:35 11/18/2020 
// Design Name: 
// Module Name:    red_square 
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
module GP_square(
    input Ai,
    input Bi,
    output P,
    output G
	 );
	
	and and_0 (G, Ai, Bi);
	xor xor_0 (P, Ai, Bi);

endmodule
