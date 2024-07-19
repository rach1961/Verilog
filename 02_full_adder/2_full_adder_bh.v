`timescale 1ns / 1ps

module full_adder_bh(
    input wire a,
    input wire b,
    input wire cin,
    output reg sum,
    output reg cout
    );
    
    always@(*)
    begin
    {cout,sum} = a+b+cin;
    end
    
endmodule
