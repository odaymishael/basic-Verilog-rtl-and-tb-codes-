module encoder_rtl (A,B);

input [7:0]A; 
output reg [2:0]B ; 

always @(*) 
  begin 

if(A == 8'b00000001)
   
   B = 3'b000 ;
   
      
  else if(A == 8'b00000010)
   
   B = 3'b001 ;
   
  else if(A == 8'b00000100)
    
   B = 3'b010;
    
  else if(A == 8'b00001000)
   
   B = 3'b011 ;
  
    
  else if(A == 8'b00010000)
   
   B = 3'b100 ;
    
  else if(A == 8'b00100000)
   
   B = 3'b101 ;
   
    
  else if(A == 8'b01000000)
  
   B = 3'b110 ;
    
  else if(A == 8'b10000000)
  
   B = 3'b111 ;
    
  else
  B = 3'bxxx;
  
end

endmodule