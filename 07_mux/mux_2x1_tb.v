`timescale 1ns / 1ps

module mux_2x1_tb();
reg sel,i0,i1;
wire y;
mux_2x1 uut(i0,i1,sel,y);
initial begin
i0= 0 ; i1 = 1; sel = 0;#10
$display ("The value of output at sel = 0 is: %b", y);
i0= 0 ; i1 = 1; sel = 1;#10
$display ("The value of output at sel = 1 is: %b", y);
$stop;
end
endmodule
