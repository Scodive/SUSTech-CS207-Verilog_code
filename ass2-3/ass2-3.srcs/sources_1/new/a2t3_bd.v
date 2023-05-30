`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/30 14:46:56
// Design Name: 
// Module Name: a2t3_bd
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


module a2t3_bd(
input [3:0]x,
output reg[3:0]y
);
always @*
case(x)
4'h0:y=4'b0000;
4'h1:y=4'b1111;
4'h2:y=4'b1110;
4'h3:y=4'b1101;
4'h4:y=4'b1100;
4'h5:y=4'b1011;
4'h6:y=4'b1010;
4'h7:y=4'b1001;
4'h8:y=4'b1000;
4'h9:y=4'b0111;
4'ha:y=4'b0110;
4'hb:y=4'b0101;
4'hc:y=4'b0100;
4'hd:y=4'b0011;
4'he:y=4'b0010;
4'hf:y=4'b0001;
endcase
endmodule
