`timescale 1ns / 1ps

module half_adder_str(
    input a,
    input b,
    output sum,
    output carry);
    
   xor x1(sum,a,b);
   and a1(carry,a,b);
   
endmodule
