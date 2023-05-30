`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/01 15:26:28
// Design Name: 
// Module Name: a2t4_sim
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


module a2t4_sim( );
reg [4:0]sx;
wire sy1,sy2;
a2t4_dc u1(sx,sy1);
initial begin
repeat(63)
  begin
    #10 {sx}={sx}+1;
  end
  #10 $finish();
end
endmodule
