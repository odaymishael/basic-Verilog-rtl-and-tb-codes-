/*module decoder_rtl(A,B,Y1,Y2,Y3,Y4);

input A,B;
output reg  Y1,Y2,Y3,Y4 ; 

always @(*)
begin 
 Y1= ~A&~B;
 Y2=~A&B;
 Y3=A&~B;
 Y4=A&B;
end 
endmodule */

module decoder_rtl(A,B,Y1,Y2,Y3,Y4);

input A,B;
output   Y1,Y2,Y3,Y4 ; 

assign Y1=~A&~B;
assign Y2= ~A&B;
assign Y3= A&~B;
assign Y4=  A&B;

endmodule 

/*module decoder_rtl(A,Y);

input [1:0]A;
output  [3:0]Y  ;
reg  [3:0]Y ; 
 
 
 
always @(*)

begin 

     if  (A==00)
         begin
		   Y=1;
			end 
			
			
		else if (A==01)
		      begin 
				Y=2;
				end
				
		else if (A==2)
		      begin 
				Y=4;
				end 
			
		else if (A==3)
		      begin 
				Y=8;
				end 		
end      
endmodule */


/*module decoder_rtl(A,Y);

input [1:0]A;
output  [3:0]Y  ;
reg  [3:0]Y ; 
 
 
 
always @(*)

begin 

     case  (A) 
       2'b00 :begin Y=0001; end 
		   
		 2'b01 :begin Y=2; end 
			
		 2'b10 :begin Y=3; end 
			
		 2'b11 :begin Y=4; end 		  
		endcase	
			
		
end      
endmodule */








