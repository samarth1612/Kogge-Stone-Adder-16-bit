`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:11 11/18/2020 
// Design Name: 
// Module Name:    yellow_circle 
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
module GP_circle(
    input Pi,
    input Gi,
    input Pi_prev,
    input Gi_prev,
    output P,
    output G
    );

	wire w;
	
	and and_0 (P, Pi, Pi_prev);
	and and_1 (w, Pi, Gi_prev);
	or or_0 (G, Gi, w);

endmodule
