module flipflop(DOut2,DOut1,clock);
output [7:0] DOut2;
input [7:0] DOut1;
input clock;
reg [7:0] DOut2;
always @ (posedge clock )
begin
	//Assigning input of FlipFlop to output
	DOut2<=DOut1;
end
endmodule
