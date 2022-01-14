module decoder8*3_rtl(A,Y);

input [2:0]A;
output reg [8:0]Y  ;

 
 
 
always @(*)

begin 

     if  (A==3'b000)
         begin
		   Y=8'b00000001;
			end 
			
			
		else if (A==3'b001)
		      begin 
				Y=8'b00000010;
				end
				
		else if (A==3'b010)
		      begin 
				Y=8'b00000100;
				end 
			
		else if (A==3'b011)
		      begin 
				Y=8'b00001000;
				end 

                else if  (A==3'b100)
                   begin
		        Y=8'b00010000;
			end 
			
			
		else if (A==3'b101)
		      begin 
				Y=8'b00100000;
				end
				
		else if (A==3'b110)
		      begin 
				Y=8'b01000000;
				end 
			
		else if (A==3'b111)
		      begin 
				Y=10000000;
				end 		
end      
endmodule 


