module memory_8x8(DOut1, AddrA, WEA, DataInA, clock);

output reg [7:0] DOut1;
input wire [2:0] AddrA;
input wire WEA;
input wire [7:0] DataInA;
input clock;

reg [7:0] memory_8x8 [7:0];

always @(posedge clock)
begin
	if(WEA)
	begin
		memory_8x8[AddrA] <= DataInA;
	end
	else
	begin
		DOut1 <= memory_8x8[AddrA];
	end
end

endmodule
