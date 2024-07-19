`timescale 1ns / 1ps

module decoder_2x4_tb();
reg [1:0] in;
wire [3:0] out;
decoder_2x4 uut(in,out);
initial begin
in = 2'b00; #10
in = 2'b01; #10
in = 2'b10; #10
in = 2'b11; #10
$stop;
end
endmodule
