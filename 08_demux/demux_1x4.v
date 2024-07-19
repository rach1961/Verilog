`timescale 1ns / 1ps

module demux_1x4(
    input wire din, [1:0]sel,
    output reg [0:3] y
    );
    always@(*)
    begin
    y = (sel == 2'b00)? {din,3'b000}:
        (sel == 2'b01)? {1'b0,din,2'b00}:
        (sel == 2'b10)? {2'b00,din,1'b0}:
                        {3'b000,din};
         
    end
endmodule
