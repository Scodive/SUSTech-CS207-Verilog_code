`timescale 1ns / 1ps

module DeMorgan2bit_sim();
reg [1:0] a,b;
wire[1:0] z1,z2,z3,z4,z5,z6,z7,z8;
Demorgan2bit_df u1(.A(a),.B(b),.z1(z1),.z2(z2),.z3(z3),.z4(z4));
Demorgan2bit_sd ual(.A(a),.B(b),.z1(z5),.z2(z6),.z3(z7),.z4(z8));
initial begin
{a,b}=2'b0;
for(integer i=0 ; i<15 ; i=i+1)
begin
#10 {a,b}={a,b}+1;
end
#10 $finish();
end
endmodule
