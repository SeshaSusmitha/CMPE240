module counterC (num,en, Reset,clock);
output reg [4:0] num;
input Reset,clock;
input en;

always @ (posedge clock)
begin
	if (en)
		begin
		if(^num === 1'bx)
			num<=0;
		else
		//Incrementing num on enable signal
			num <= num + 5'b1 ;
		end
	else if (Reset)
	begin
	//Setting to 0 on Reset signal
	  num<=0;
	end
end
endmodule




