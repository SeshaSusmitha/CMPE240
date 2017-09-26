module controller(IncA,IncB,WEA,WEB,Reset,num);
output WEA,WEB,IncA,IncB;
input Reset;
reg WEA,WEB,IncA,IncB;
input[4:0] num;

initial
if(Reset)
	begin
		WEA <=0;WEB <=0;IncA<=0;IncB<=0;
	end
 

always @ (num)
	//Case select based on value of num
	case (num)
		5'd0:
		begin
			WEA <=0; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd1: 
		begin
			WEA <=1; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd2: 
		begin
			WEA <=1; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd3: 
		begin
			WEA <=1; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd4: 
		begin
			WEA <=1; WEB <=0;IncA<=1;IncB<=0;
		end 
		5'd5: 
		begin
			WEA <=1; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd6: 
		begin
			WEA <=1; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd7: 
		begin
			WEA <=1; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd8: 
		begin
			WEA <=1; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd9: 
		begin
			WEA <=0; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd10: 
		begin
			WEA <=0; WEB <=0;IncA<=1;IncB<=0;
		end
		5'd11:
		begin
			WEA<=0; WEB<=1; IncA<=1; IncB<=0;
		end
		5'd12:
		begin
			WEA<=0; WEB<=0; IncA<=1; IncB<=1;
		end
		5'd13:
		begin
			WEA<=0; WEB<=1; IncA<=1; IncB<=0;
		end
		5'd14:
		begin
			WEA<=0; WEB<=0; IncA<=1; IncB<=1;
		end
		5'd15:
		begin
			WEA<=0; WEB<=1; IncA<=1; IncB<=0;
		end
		5'd16:
		begin
			WEA<=0; WEB<=0; IncA<=1; IncB<=1;
		end
		5'd17:
		begin
			WEA<=0; WEB<=1; IncA<=1; IncB<=0;
		end
		5'd18:
		begin
			WEA<=0; WEB<=0; IncA<=1; IncB<=1;
		end

		default:
		begin
			WEA <=0; WEB <=0; IncA<=0; IncB<=0;
		end 

	endcase


endmodule

