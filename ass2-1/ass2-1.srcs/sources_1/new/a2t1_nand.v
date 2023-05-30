`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 17:15:38
// Design Name: 
// Module Name: a2t1_nand
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


module a2t1_nand(
input [3:0]x,
output y
    );
    wire ou1,ou2,ou3,ou4,ou5,ou6,ou7,ou8,ou9,ou10,ou11;
    nand u1(ou1,x[3],x[2]);
    nand u2(ou2,x[3],ou1);
    nand u3(ou3,x[2],ou1);
    nand u4(ou4,ou3,ou2);
    nand u5(ou5,ou4,x[1]);
    nand u6(ou6,x[1],ou5);
    nand u7(ou7,ou4,ou5);
    nand u8(ou8,ou6,ou7);
    nand u9(ou9,ou8,x[0]);
    nand u10(ou10,x[0],ou9);
    nand u11(ou11,ou8,ou9);
    nand u12(y,ou11,ou10);
endmodule
