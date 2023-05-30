`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 10:43:20
// Design Name: 
// Module Name: adder
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


module adder (in1,in2,sum,overflow); input [2:0]in1,in2;
output [2:0] sum;
output overflow;
assign sum = in1 + in2; assign overflow =
//in verilog
( in1[2] & in2[2] & ~sum[2] ) | /* two +ve operands, get -ve operand*/ (~in1[2] & ~in2[2] & sum[2] ); /* two -ve operands, get +ve operand*/
endmodule