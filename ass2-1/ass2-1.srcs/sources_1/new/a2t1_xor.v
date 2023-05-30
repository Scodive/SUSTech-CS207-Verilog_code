`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 21:43:31
// Design Name: 
// Module Name: a2t1_xor
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
module a2t1_xor(
  input [3:0]x,
  output y
    );
    wire ou1,ou2;
        xor u1(ou1,x[3],x[2]);
        xor u2(ou2,ou1,x[1]);
        xor u3(y,ou2,x[0]);
endmodule
