`timescale 1ns / 1ps

module ripple_carry_adder_tb();
reg [3:0] a,b;
reg cin;
wire cout;
wire [3:0] sum;
ripple_carry_adder uut(cin, a, b, cout, sum);

initial begin
a = 4'b0000; b = 4'b0000; cin = 0; #10
a = 4'b0000; b = 4'b0000; cin = 1; #10
a = 4'b0010; b = 4'b0010; cin = 0; #10 
a = 4'b1000; b = 4'b1000; cin = 0; #10
a = 4'b0000; b = 4'b1111; cin = 0; #10
$stop;
end

endmodule
