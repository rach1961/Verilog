`timescale 1ns / 1ps


module full_subtractor_df(
    input a,
    input b,
    input bin,
    output diff,
    output bout
    );
    assign diff = a+b+bin;
    assign bout = (~(a+b)&bin)+ (~a&b);
endmodule
