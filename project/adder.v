module adder (ADDOut,aDOut1,aDOut2);
output [7:0] ADDOut;
input [7:0] aDOut1, aDOut2;
assign {ADDOut} = aDOut1+aDOut2;
endmodule


