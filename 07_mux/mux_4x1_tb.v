`timescale 1ns / 1ps

module mux_4x1_tb();
reg [3:0] i;
reg [1:0] sel;
wire y;
mux_4x1 uut(i,sel,y);
initial begin
i = 4'b0101; sel = 2'b00; #10
 sel = 2'b01; #10
 sel = 2'b10; #10
 sel = 2'b11; #10
$stop;
end
endmodule
