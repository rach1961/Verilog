`timescale 1ns / 1ps

module encoder_4x1_tb();
reg [3:0] in;
wire [1:0] out;
encoder_4x1 uut(in,out);
initial begin
in = 4'b1000; #10
in = 4'b0100; #10
in = 4'b0010; #10
in = 4'b0001; #10
$stop;
end
endmodule
