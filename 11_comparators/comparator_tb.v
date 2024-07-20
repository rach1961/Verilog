`timescale 1ns / 1ps

module comparator_tb();
reg [3:0] a;
reg [3:0] b;
wire equal,less,greater;
comparator uut(a,b,equal,less,greater);
initial begin
a = 4'b0000; b = 4'b0000;#10
a = 4'b1000; b = 4'b0000;#10
a = 4'b0000; b = 4'b0100;#10
a = 4'b1111; b = 4'b1111;#10
a = 4'b1000; b = 4'b0101;#10
a = 4'b0100; b = 4'b1100;#10
$stop;
end
endmodule
