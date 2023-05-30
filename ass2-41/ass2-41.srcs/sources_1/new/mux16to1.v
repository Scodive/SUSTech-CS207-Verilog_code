`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/01 17:48:24
// Design Name: 
// Module Name: mux16to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux16to1(
input [15:0]x,[3:0]sel,
output reg y
    );
always @*
case(sel)
4'h0:y=x[0];
4'h1:y=x[1];
4'h2:y=x[2];
4'h3:y=x[3];
4'h4:y=x[4];
4'h5:y=x[5];
4'h6:y=x[6];
4'h7:y=x[7];
4'h8:y=x[8];
4'h9:y=x[9];
4'ha:y=x[10];
4'hb:y=x[11];
4'hc:y=x[12];
4'hd:y=x[13];
4'he:y=x[14];
4'hf:y=x[15];
endcase
endmodule
