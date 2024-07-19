`timescale 1ns / 1ps

module demux_1x8_tb();
reg din;
reg [0:2]sel;
wire [0:7] y;
demux_1x8 uut(din,sel,y);

initial begin
din = 1;
sel = 3'b000; #10
$display("%b",y);
sel = 3'b001; #10
sel = 3'b010; #10
sel = 3'b011; #10
sel = 3'b100; #10
sel = 3'b101; #10
sel = 3'b110; #10
sel = 3'b111; #10
$stop;
end

endmodule
