`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 10:44:13
// Design Name: 
// Module Name: adderTb
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


module adderTb( ); //verilog 
reg [2:0] in1,in2;
wire overflow;
wire [2:0] sum;
adder ua(in1,in2,sum,overflow);
initial begin
{in1,in2} = 6'b0;
repeat(63) #10 {in1,in2} = {in1,in2} + 1; 
#10 $finish;
end 
endmodule