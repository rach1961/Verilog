`timescale 1ns / 1ps


module half_subtractor_tb();
reg a,b;
wire diff,borrow;
half_subtractor_df uut(a,b,diff,borrow);
initial begin 
a = 0; b = 0; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
$stop;
end
endmodule
