`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 18:37:26
// Design Name: 
// Module Name: a2t2_somin
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


module a2t2_somin(
input [3:0]x,
output y
    );
    wire ou1,ou2,ou3,ou4;
    not u1(ou1,x[2]);
    not u2(ou2,x[1]);
    not u3(ou4,x[3]);
    and u4(ou3,ou2,ou1);
    or u5(y,ou3,ou4);
endmodule
