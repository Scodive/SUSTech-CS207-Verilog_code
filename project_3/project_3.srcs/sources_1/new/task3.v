`timescale 1ns / 1ps

module task3(input A,B,C,D ,output z1,z2,z3);
assign z1= ~A&~B&~C&~D | ~A&~B&C&D | ~A&~B&C&~D | ~A&B&C&D | ~A&B&C&~D | A&B&~C&~D | A&B&~C&D | A&B&C&D | A&~B&C&D | A&~B&C&~D ;
assign z2= (A|B|C|~D) & (A|~B|C|D) & (A|~B|C|~D) & (~A|B|C|D) & (~A|B|C|~D) & (~A|~B|~C|D);
assign z3=  ~A&~B&~D | ~A&C | A&B&~C | A&C&D | A&~B&C;
endmodule
