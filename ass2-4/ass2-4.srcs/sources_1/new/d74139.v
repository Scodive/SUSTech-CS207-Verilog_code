`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/31 21:41:57
// Design Name: 
// Module Name: d74139
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


module d74139(
input ne,[1:0]x,
output reg[3:0]y
    );
always @*
if(ne==1)
   y=4'hf;
else
   case(x)
   2'b00:y=4'b1110;
   2'b01:y=4'b1101;
   2'b10:y=4'b1011;
   2'b11:y=4'b0111;    
endcase
endmodule
