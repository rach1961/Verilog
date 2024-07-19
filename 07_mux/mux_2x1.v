`timescale 1ns / 1ps

module mux_2x1(
    input wire i0,
    input wire i1,
    input wire sel,
    output reg y
    );
    always@(*)
    begin
    if (sel)
    y = i1;
    else 
    y = i0;
    end
endmodule
