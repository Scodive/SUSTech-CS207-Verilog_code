`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/19 16:47:32
// Design Name: 
// Module Name: encoder
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


module encoder(
   input I0,
   input I1,
   input I2,
   input I3,
   input X,
   output reg[1:0] Y
       );
       always @*
       begin
       if(X==3)
         casex({I0,I1,I2,I3})
         4'bxxx0: Y=2'b00;
         4'bxx01: Y=2'b01;
         4'bx011: Y=2'b10;
         4'b0111: Y=2'b11;
         endcase
         else if(X==2)
         casex({I0,I1,I2,I3})
                  4'bxxx0: Y=2'b01;
                  4'bxx01: Y=2'b10;
                  4'bx011: Y=2'b11;
                  4'b0111: Y=2'b00;
                  endcase
         else if(X==1)
                           casex({I0,I1,I2,I3})
                                    4'bxxx0: Y=2'b10;
                                    4'bxx01: Y=2'b11;
                                    4'bx011: Y=2'b00;
                                    4'b0111: Y=2'b01;
                                    endcase
                                    else 
                                                               casex({I0,I1,I2,I3})
                                                                        4'bxxx0: Y=2'b11;
                                                                        4'bxx01: Y=2'b00;
                                                                        4'bx011: Y=2'b01;
                                                                        4'b0111: Y=2'b10;
                                                                        endcase
         end
endmodule
