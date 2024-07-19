`timescale 1ns / 1ps

module half_adder_df(
    input a,
    input b,
    output sum,
    output carry
    );
    assign {carry,sum} = a+b;
endmodule
