`timescale 1ns / 1ps

module comparator(
    input wire [3:0] a,
    input wire [3:0] b,
    output reg equal,
    output reg less,
    output reg greater
    );
    always@(a,b)begin
    equal = (a==b)? 1'b1 : 1'b0;
    less = (a<b)? 1'b1 : 1'b0;
    greater = (a>b)? 1'b1 : 1'b0;
    end
endmodule
