`timescale 1ns / 1ps

module full_adder_str(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
    //sum = a^b^c
    //cout = (a ^ b)c | ab
    
    wire w1,w2,w3;
    xor(sum, a, b, cin);
    and(w1,a,b);
    xor(w2,a,b);
    and(w3,cin,w2);
    or(cout,w1,w3);
    
endmodule
