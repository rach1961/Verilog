`timescale 1ns / 1ps

module fulladder(input a,b,cin,output sum, carry);
assign {carry,sum} = a+b+cin; 
endmodule

module ripple_carry_adder(a,b,cin,sum,c,cout);
input[3:0] a,b;
input cin;
input [2:0] c;
output cout;
output [3:0] sum; 
wire [2:0] c;

fulladdder FA1(a[0], b[0],cin, sum[0], c[0]);
fulladdder FA2(a[1], b[1],c[0], sum[1], c[1]);
fulladdder FA3(a[2], b[2],c[1], sum[2], c[2]);
fulladdder FA4(a[3], b[3],c[2], sum[3], cout);

endmodule
