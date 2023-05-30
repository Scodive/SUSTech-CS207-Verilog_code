`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/01 17:07:21
// Design Name: 
// Module Name: a2t4_dc
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


module a2t4_dc(
input [4:0]x,
output y
    );
wire [3:0]a,b;
wire c,d,e,f,g;
d74139 u1(0,x[3:2],a);   
d74139 u2(0,x[1:0],b); 

and u3(c,~x[4],a[3],a[2],a[1],~a[0],b[3],b[2],~b[1],b[0]);
and u4(d,~x[4],a[3],a[2],a[1],~a[0],b[3],~b[2],b[1],b[0]);
and u5(e,~x[4],a[3],a[2],~a[1],a[0],b[3],b[2],b[1],~b[0]);
and u6(f,~x[4],a[3],~a[2],a[1],a[0],b[3],b[2],b[1],~b[0]);
and u7(g,x[4],a[3],a[2],a[1],~a[0],b[3],b[2],b[1],~b[0]);
or u8(y,c,d,e,f,g);


endmodule
