`timescale 1ns / 1ps

module half_adder( input x, y, output add, carry);
assign add = x+y;
assign carry = x&y;
endmodule

module full_adder_fromHA(input a,b,cin, output sum, cout);
wire c1,c2,s1;
half_adder ha1(a,b,s1,c1);
half_adder ha2(s1,cin,sum,c2);
assign cout = c1|c2;
endmodule 