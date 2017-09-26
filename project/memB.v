module memory_8x4(DataInB, AddrB, WEB, clock);

input wire [7:0] DataInB;
input wire [1:0] AddrB;
input wire WEB;
input wire clock;

reg [7:0] memory_8x4 [3:0];

always @(posedge clock)
begin
	if(WEB)
		begin
			memory_8x4[AddrB] <= DataInB;
		end
end

endmodule