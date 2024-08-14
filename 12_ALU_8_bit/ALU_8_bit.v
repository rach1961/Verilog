`timescale 1ns / 1ps
module ALU(input wire [7:0]a,[7:0]b,[3:0]ctrl, output reg [7:0]out, carry);
always@(*)
begin
case(ctrl)
4'b0000 : {carry,out} = a+b;
4'b0001 : {carry,out} = a-b;
4'b0010 :  out        = a*b;
4'b0011 :  out        = a/b;
4'b0100 :  out        = a<<1;
4'b0101 :  out        = a>>1;
4'b0110 :  out        = {a[6:0],a[7]};
4'b0111 :  out        = {a[0],a[6:1]};
4'b1000 :  out        = a&b;
4'b1001 :  out        = a|b;
4'b1010 :  out        = a^b;
4'b1011 :  out        = ~(a&b);
4'b1100 :  out        = ~(a^b);
4'b1101 :  out        = ~(a|b);
4'b1110 :  out        = (a>b)   ? 8'b11111111 : 8'b00000000;
4'b1111 :  out        = (a == b)? 8'b11111111 : 8'b00000000;
endcase
end
endmodule
