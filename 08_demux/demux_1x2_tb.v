`timescale 1ns / 1ps

module demux_1x2_tb();
reg sel,din;
wire [1:0] y;
demux_1x2 uut(sel,din,y);
initial begin 
din = 1;
sel = 0; #10
sel = 1; #10
$stop;
end
endmodule
