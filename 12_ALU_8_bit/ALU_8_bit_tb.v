`timescale 1ns / 1ps

module ALU_tb();
reg [7:0]a;
reg [7:0]b;
reg [3:0]ctrl;
wire [7:0]out;
wire carry;
ALU uut(a,b,ctrl,out,carry);
initial begin
a = 8'hff; b = 8'hff;
ctrl = 4'b0000;#10
ctrl = 4'b0001;#10
ctrl = 4'b0010;#10
ctrl = 4'b0011;#10
ctrl = 4'b0100;#10
ctrl = 4'b0101;#10
ctrl = 4'b0110;#10
ctrl = 4'b0111;#10
ctrl = 4'b1000;#10
ctrl = 4'b1001;#10
ctrl = 4'b1010;#10
ctrl = 4'b1011;#10
ctrl = 4'b1100;#10
ctrl = 4'b1101;#10
ctrl = 4'b1110;#10
ctrl = 4'b1111;#10
$stop;
end
endmodule
