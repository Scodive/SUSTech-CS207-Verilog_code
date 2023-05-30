`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/30 14:42:19
// Design Name: 
// Module Name: a2t3_df
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


module a2t3_df(
input [3:0] x,
output [3:0] y
);
    assign y[3]=x[3]^(x[2]|x[1]|x[0]);
    assign y[2]=x[2]^(x[1]|x[0]);
    assign y[1]=x[1]^x[0];
    assign y[0]=x[0];
endmodule
