`timescale 1ns / 1ps

module mux_8x1(
    input wire [7:0] i, [2:0] sel,
    output reg y
    );
    always@(*)
    y = (sel == 3'b000)? i[0]:
        (sel == 3'b001)? i[1]:
        (sel == 3'b010)? i[2]:
        (sel == 3'b011)? i[3]:
        (sel == 3'b100)? i[4]:
        (sel == 3'b101)? i[5]:
        (sel == 3'b110)? i[6]:
                         i[7];
    begin
    end
endmodule
