`timescale 1ns / 1ps

module Bin_to_Gray_tb();
reg [3:0] a; 
wire [3:0] b;
Bin_to_Gray uut(a,b);

initial begin
a = 4'b0000; #10
a = 4'b0001; #10
a = 4'b0010; #10
a = 4'b0011; #10
a = 4'b1100; #10
a = 4'b1101; #10
a = 4'b1110; #10
a = 4'b1111; #10
$stop;
end

endmodule
