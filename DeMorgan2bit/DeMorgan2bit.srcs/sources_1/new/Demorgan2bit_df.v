`timescale 1ns / 1ps


module Demorgan2bit_df(input [1:0]A ,[1:0]B ,output [1:0]z1 ,[1:0]z2,[1:0]z3,[1:0]z4 );
assign z1=~(A|B);
assign z2=~A&~B;
assign z3=~(A&B);
assign z4=~A|~B;
endmodule
