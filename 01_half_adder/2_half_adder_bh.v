`timescale 1ns / 1ps

module half_adder_bh(
    input wire a,
    input wire b,
    output reg sum,
    output reg carry
    );
    always @(*)
    begin
    {carry,sum} = a+b; 
    end
    
endmodule
