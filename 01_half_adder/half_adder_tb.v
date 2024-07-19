`timescale 1ns / 1ps

module half_adder_tb();
reg a,b;
wire sum,carry;
//half_adder_str uut (a,b,sum,carry);
half_adder_bh uut (a,b,sum,carry);
initial begin
a = 0; b = 0; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
$stop;
end
endmodule
