`timescale 1ns / 1ps

module demux_1x8(
    input wire din,[0:2] sel,
    output reg [0:7] y = 0
    );
    always@(*)
    begin 
    y = (sel == 3'b000)? {din,7'b0000000}:
        (sel == 3'b001)? {1'b0,din,6'b000000}:
        (sel == 3'b010)? {2'b00,din,5'b00000}:
        (sel == 3'b011)? {3'b000,din,4'b0000}:
        (sel == 3'b100)? {4'b0000,din,3'b000}:
        (sel == 3'b101)? {5'b00000,din,2'b00}:
        (sel == 3'b110)? {6'b000000,din,1'b0}:
                         {7'b0000000,din}; 
end 
endmodule
