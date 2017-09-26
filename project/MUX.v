module mux (DataInB, ADDOut, SUBOut,select);
output [7:0] DataInB; 
input [7:0] ADDOut, SUBOut;
input wire select;
assign DataInB = (select) ? ADDOut : SUBOut;
endmodule