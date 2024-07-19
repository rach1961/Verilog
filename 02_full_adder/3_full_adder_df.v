`timescale 1ns / 1ps

module full_adder_df(
    input a,
    input b,
    input cin,
    input sum,
    input cout
    );
    
    //assign sum = a+b+cin;
    //assign cout = (a&b) | (b&cin) | (a&cin);
    //assign cout = ((a^b)&c) | (a&b);
    assign {cout,sum} = a+b+cin;
endmodule
