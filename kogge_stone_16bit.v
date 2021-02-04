`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:08 11/18/2020 
// Design Name: 
// Module Name:    kogge_stone_16bit 
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
module kogge_stone_16bit(
	 input [15:0] Ai,
    input [15:0] Bi,
    output [16:0] S
);

	wire Cin = 1'b0;
	wire [15:0] C;
	wire [15:0] P1, G1;
	GP_square gp_sq[15:0](Ai[15:0], Bi[15:0], P1[15:0], G1[15:0]);

	wire [15:1] P2, G2;
	Ci_circle ci_c0(G1[0], C[0]);
	GP_circle gp_c0[15:1](P1[15:1], G1[15:1], P1[14:0], G1[14:0], P2[15:1], G2[15:1]);

	wire [15:3] P3, G3;
	Ci_circle ci_c1[2:1](G2[2:1], C[2:1]);
	GP_circle gp_c1[15:3](P2[15:3], G2[15:3], P2[13:1], G2[13:1], P3[15:3], G3[15:3]);

	wire [15:7] P4, G4;
	Ci_circle ci_c2[6:3](G3[6:3], C[6:3]);
	GP_circle gp_c2[15:7](P3[15:7], G3[15:7], P3[11:3], G3[11:3], P4[15:7], G4[15:7]);

	wire [15:15] P5, G5;
	Ci_circle ci_c3[14:7](G4[14:7], C[14:7]);
	GP_circle gp_c3(P4[15], G4[15], P4[7], G4[7], P5[15], G5[15]);  

	Ci_circle ci_c4(G5[15], C[15]);

	Si_triangle t_0(P1[0], Cin, S[0]);
	Si_triangle t_1[15:1](P1[15:1], C[14:0], S[15:1]);

	Ci_circle ci_c5(C[15], S[16]);

endmodule
