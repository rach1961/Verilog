`timescale 1ns / 1ps

module full_subtractor_tb();
reg a,b,bin;
wire bout,diff;

//full_subtractor_df uut(a,b,bin,diff,bout);
full_subtractor_fromHS uut(a,b,bin,diff,bout);
initial begin
a = 0; b = 0; bin = 0; #10
a = 0; b = 0; bin = 1; #10
a = 0; b = 1; bin = 0; #10
a = 0; b = 1; bin = 1; #10
a = 1; b = 1; bin = 0; #10
a = 1; b = 0; bin = 1; #10
a = 1; b = 1; bin = 0; #10
a = 1; b = 1; bin = 1; #10
$stop;
end
endmodule
