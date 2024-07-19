`timescale 1ns / 1ps

module full_adder_tb();
reg a,b,cin;
wire sum,cout;

////full_adder_str uut(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));
////full_adder_df uut(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));
////full_adder_bh uut(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));

full_adder_fromHA uut (a,b,cin,sum,cout);

initial begin

a = 0; b = 0; cin = 0; #10
a = 0; b = 0; cin = 1; #10
a = 0; b = 1; cin = 0; #10
a = 0; b = 1; cin = 1; #10
a = 1; b = 0; cin = 0; #10
a = 1; b = 0; cin = 1; #10
a = 1; b = 1; cin = 0; #10
a = 1; b = 1; cin = 1; #10

$stop;
end
endmodule
