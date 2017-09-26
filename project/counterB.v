module counterB (AddrB, IncB, Reset,clock);
output reg [1:0] AddrB;
input wire IncB,Reset,clock;

initial 
begin
AddrB <=2'b0;
end

always @ (posedge clock)
begin
	if (Reset)
	begin
	//Resetting to 0 on Reset signal
	AddrB <=2'b0;
	end
else if (IncB)
	begin
	//Incrementing address on Inc signal
		AddrB <= AddrB + 2'b1 ;
	end
end
endmodule
