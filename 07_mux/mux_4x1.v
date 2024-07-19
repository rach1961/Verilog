`timescale 1ns / 1ps

module mux_4x1(
    input wire [3:0]i,[1:0]sel,
    output reg y
    );
    
    always@(*)
    begin
    y = (sel == 2'b00)? i[0]:
        (sel == 2'b01)? i[1]:
        (sel == 2'b10)? i[2]:
                        i[3];        
    end
    
endmodule
