`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/01 17:47:30
// Design Name: 
// Module Name: a2t4_mux
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


module a2t4_mux(
input [4:0]x,
output y
);
wire a,b,c,d,e,f;
mux16to1 u1(16'b0000_0001_0001_0111,x[3:0],a);
mux16to1 u2(16'b0000_0001_0001_0111,x[4:1],b);
or u3(c,x[1],x[2],x[3]);
and u4(d,~x[0],~x[1],~x[2],~x[3],x[4]);
and u5(f,x[0],~x[1],~x[2],~x[3],~x[4]);
and u6(e,b,a,c);
or u7(y,e,d,f);
endmodule
