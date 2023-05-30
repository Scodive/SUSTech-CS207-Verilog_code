`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 22:17:09
// Design Name: 
// Module Name: a2t1_sim
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


module a2t1_sim();
reg [3:0] sx;
wire sy1,sy2;
a2t1_xor u1(sx,sy1);
a2t1_nand u2(sx,sy2);
initial begin
    {sx}=4'b0;
 repeat(15) 
    begin
      #10 {sx}={sx}+1;
    end
#10 $finish();
end
endmodule
