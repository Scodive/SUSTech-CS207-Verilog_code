`timescale 1ns / 1ps

module task3_sim();
reg sa,sb,sc,sd;
wire sz1,sz2,sz3;
task3 u1(.A(sa),.B(sb),.C(sc),.D(sd),.z1(sz1),.z2(sz2),.z3(sz3));
initial begin
{sa,sb,sc,sd}=1'b0;
for(integer i=0 ; i<15 ;i= i+1)
begin
#10 {sa,sb,sc,sd}={sa,sb,sc,sd}+1;
end
#10 $finish();
end
endmodule
