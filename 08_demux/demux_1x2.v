`timescale 1ns / 1ps

module demux_1x2(
    input wire sel,din,
    output reg [1:0]y
    );
    always@(*)
    begin
    y[0] = (sel)? 1'b0:din;
    y[1] = (sel)? din:1'b0;
    end
endmodule
