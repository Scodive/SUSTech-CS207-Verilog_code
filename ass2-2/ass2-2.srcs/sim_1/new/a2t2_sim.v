`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 18:43:08
// Design Name: 
// Module Name: a2t2_sim
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


module a2t2_sim();
reg [3:0]sx;
wire sy1,sy2;
a2t2_somin u1(sx,sy1);
a2t2_pomax u2(sx,sy2);
initial begin
{sx}=4'b0;
repeat(15) 
    begin
      #10 {sx}={sx}+1;
    end
#10 $finish();
end
endmodule
