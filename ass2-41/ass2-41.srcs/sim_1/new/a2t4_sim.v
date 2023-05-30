`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/01 17:08:36
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
a2t4_mux u2(sx,sy2);
initial begin
{sx}=5'b0;
repeat(31)
  begin
    #10 {sx}={sx}+1;
  end
  #10 $finish();
end
endmodule
