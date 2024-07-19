`timescale 1ns / 1ps

module half_subtractor_df(
    input a,
    input b,
    output diff,
    output borrow
    );
    assign diff = a+b;
    assign borrow = (~a)&b;
endmodule
