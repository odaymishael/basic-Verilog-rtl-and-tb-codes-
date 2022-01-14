module encoder_rtl (A,B);

input [7:0]A; 
output reg [2:0]B ; 

always @(*) 
  begin 
    if (A[7]==1'b1)
	 
	B=3'b111 ;
	 
	
	else if (A[6]==1'b1)
     
	B=3'b110;
	 
	
	else if (A[5]==1'b1)
     
	B=3'b101;
	 
	
    else if (A[4]==1'b1)
     
	B=3'b100;
	 
	
	else if (A[3]==1'b1)
     
	B=3'b011;
	 
	
	else if (A[2]==1'b1)
     
	B=3'b010; 
	 
	
	else if (A[1]==1'b1)
     
	B=3'b001 ;
	 
	else if (A[0]==1'b1)
     
	B=3'b000 ;
	 
	else 
	B=3'bxxx ;
	 
	
  
  end
 
endmodule 