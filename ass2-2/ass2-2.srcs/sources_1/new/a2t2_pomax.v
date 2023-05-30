`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 19:10:53
// Design Name: 
// Module Name: a2t2_pomax
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


module a2t2_pomax(
input [3:0]x,
output y
    );
    wire ou1,ou2,ou3,ou4,ou5;
    not u1(ou1,x[1]);
    not u2(ou2,x[2]);
    not u3(ou3,x[3]);
    or u4(ou4,ou3,ou2);
    or u5(ou5,ou3,ou1);
    and u6(y,ou4,ou5);
endmodule
