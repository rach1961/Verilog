`timescale 1ns / 1ps

module half_subtractor(input x,y, output d,b);
assign d = x+y;
assign b = ~x&y;
endmodule
module full_subtractor_fromHS(input a,b,bin, output diff, bout);
wire b1,b2,d1;
half_subtractor hs1(a,b,d1,b1);
half_subtractor hs2(d1,bin,diff,b2);
assign bout = b1|b2;
endmodule
