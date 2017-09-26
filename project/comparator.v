module comparator (Sign , DOut1, DOut2);
output Sign;
input wire[7:0] DOut1, DOut2;

assign Sign = (DOut2>DOut1) ? 1 : 0;

endmodule 