module counterA (AddrA, IncA, Reset,clock);
output reg [2:0] AddrA;
input wire IncA,Reset,clock;

always @ (posedge clock)
begin
if (Reset)
	begin
	//Resetting to 0 on Reset signal
	AddrA <=3'b0;	
	end
else if (IncA)
	begin 
	if(^AddrA === 1'bx)
	AddrA<=0;
	else
	//Incrementing address on Inc signal
    AddrA <= AddrA + 3'b1 ;	
	end
end
endmodule