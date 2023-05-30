`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/19 16:52:42
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();
reg sI0,sI1,sI2,sI3,sX;
wire [1:0]sY;
encoder u(sI0,sI1,sI2,sI3,,sX,sY);
initial
begin
   {sI0,sI1,sI2,sI3}=4'b0000;
   sX=2'b00;
   repeat(3)
   #10 sX=sX+
   repeat(15)
   #10 {sI0,sI1,sI2,sI3} = {sI0,sI1,sI2,sI3}+1;
   #10 $finish;
   end
endmodule
