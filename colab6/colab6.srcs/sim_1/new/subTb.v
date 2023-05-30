`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 11:00:35
// Design Name: 
// Module Name: subTb
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


module subTb( ); //verilog 
reg [2:0] in1,in2;
wire [2:0] rO1, rO2,r03;
wire overflow;
wire [2:0] sum;
subO1 usubO1(in1,in2,rO1); 
subO2 usubO2(in1,in2,rO2);
subtraction usub03(in1,in2,result,r03);
initial begin
{in1,in2} = 6'b0;
$monitor( "%3b-%3b: ro1 = %3b(%d), ro2 =%3b(%d),ro3 =%3b(%d)",
in1,in2,rO1,$signed(rO1) ,rO2,$signed(rO2),r03,$signed(r03) );
repeat(63) #10 {in1,in2} = {in1,in2} + 1;
#10 $finish(); end
endmodule
