`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/01 23:02:39
// Design Name: 
// Module Name: decoder_mux_sim
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


module decoder_mux_sim();
reg sne;
reg[1:0]sx1;
reg [15:0]sx2;
reg [3:0]sel;
wire [3:0]sy1;
wire sy2;
d74139 u1(sne,sx1,sy1);
mux16to1 u2(sx2,sel,sy2);
initial begin
{sx1}=2'b00;

{sne}=1;
repeat(4)
  begin
    #10 {sx1}={sx1}+1;
  end
  {sne}=0;
  {sx1}=2'b00;
repeat(4)
  begin
    #10 {sx1}={sx1}+1;
  end
  {sel}=4'h0;
  {sx2}=16'h01;
repeat(15)
  begin
    #10 {sel}={sel}+1;
    {sx2}={sx2}<<1;
  end
  #10 $finish();
end
endmodule
