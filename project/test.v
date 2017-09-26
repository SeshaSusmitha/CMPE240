module maintest;
reg clock1,Reset1;
wire [2:0] AddrA;
wire [7:0] DOut11,DOut21,ADDOut1,SUBOut1,DataInB1;
wire [1:0] AddrB1;
wire Sign1;
wire IncA1,WEA1,IncB1,WEB1;
wire [4:0] num1;
reg [7:0]DataInA1;





counterC  couC (.num(num1),.en(1), .Reset(Reset1),.clock(clock1));
controller con(.IncA(IncA1),.IncB(IncB1),.WEA(WEA1),.WEB(WEB1),.Reset(Reset1),.num(num1));
counterA  couA (.AddrA(AddrA), .IncA(IncA1), .Reset(Reset1),.clock(clock1));
memory_8x8 memA (.DOut1(DOut11), .AddrA(AddrA), .WEA(WEA1), .DataInA(DataInA1), .clock(clock1));
flipflop Dff (.DOut2(DOut21),.DOut1(DOut11),.clock(clock1));
subtractor sub(.SUBOut(SUBOut1),.sDOut2(DOut21),.sDOut1(DOut11));
adder add (.ADDOut(ADDOut1),.aDOut1(DOut11),.aDOut2(DOut21));
comparator comp(.Sign(Sign1) , .DOut1(DOut21), .DOut2(DOut11));
mux mu(.DataInB(DataInB1), .ADDOut(ADDOut1), .SUBOut(SUBOut1),.select(Sign1));
counterB couB(.AddrB(AddrB1), .IncB(IncB1), .Reset(Reset1),.clock(clock1));
memory_8x4 memB( .AddrB(AddrB1), .DataInB(DataInB1),.WEB(WEB1), .clock(clock1));



initial 
begin
$dumpfile("dump.vcd");
    $dumpvars(1,maintest);
clock1 = 0;
Reset1 = 1;


repeat (2) #10 clock1=~clock1;
		
Reset1 = 0;

forever #10 clock1=~clock1;

end

always @(posedge clock1)
begin


#30	DataInA1 = 8'hf;
#20	DataInA1 = 8'hc;
#20	DataInA1 = 8'ha;
#20	DataInA1 = 8'hd;
#20	DataInA1 = 8'he;
#20	DataInA1 = 8'hb;
#20	DataInA1 = 8'h0;
#20	DataInA1 = 8'h2;


end



endmodule

