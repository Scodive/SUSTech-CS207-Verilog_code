`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/30 14:50:17
// Design Name: 
// Module Name: a2t3_sim
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


module a2t3_sim();
reg [3:0]sx;
wire [3:0]sy1;
wire [3:0]sy2;
a2t3_df u1(sx,sy1);
a2t3_bd u2(sx,sy2);
initial begin
  {sx}=4'b0;
   repeat(15) 
     begin
        #10  {sx}={sx}+1;
     end
   #10 $finish();
end
endmodule
