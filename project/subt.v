module subtractor (SUBOut,sDOut2,sDOut1);
output [7:0] SUBOut;
input [7:0] sDOut1, sDOut2;
assign {SUBOut} = sDOut2-sDOut1;
endmodule


