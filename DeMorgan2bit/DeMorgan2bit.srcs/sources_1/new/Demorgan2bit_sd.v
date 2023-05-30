`timescale 1ns / 1ps

module Demorgan2bit_sd(input [1:0]A ,[1:0]B ,output [1:0]z1 ,[1:0]z2, [1:0]z3, [1:0]z4  );
wire ou1,ou2,ou3,ou4,ou5,ou6,ou7,ou8,ou9,ou10;
nor u1(z1[0],A[0],B[0]);//(A+B)'  
nor u10(z1[1],A[1],B[1]);
not u2(ou1,A[0]);//A'B'
not u11(ou6,A[1]);
not u3(ou2,B[0]);
not u12(ou7,B[1]);
and u4(z2[0],ou1,ou2);
and u13(z2[1],ou6,ou7);
and u5(ou3,A[0],B[0]);//(AB)'
and u14(ou8,A[1],B[1]);
not u6(z3[0],ou3);
not u15(z3[1],ou8);
not u7(ou4,A[0]);
not u16(ou9,A[1]);
not u8(ou5,B[0]);
not u17(ou10,B[1]);
or u9(z4[0],ou4,ou5);
or u18(z4[1],ou9,ou10);

endmodule
