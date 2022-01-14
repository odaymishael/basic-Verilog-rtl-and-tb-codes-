

module pr_circuit(i,h,idle);
input [7:0]i;
output [7:0]h;
output idle;
assign h[7]=i[7];
assign h[6]=i[6]&~i[7];
assign h[5]=i[5]&~i[6]&~i[7];
assign h[4]=i[4]&~i[5]&~i[6]&~i[7];
assign h[3]=i[3]&~i[4]&~i[5]&~i[6]&~i[7];
assign h[2]=i[2]&~i[3]&~i[4]&~i[5]&~i[6]&~i[7];
assign h[1]=i[1]&~i[2]&~i[3]&~i[4]&~i[5]&~i[6]&~i[7];
assign h[0]=i[0]&~i[1]&~i[2]&~i[3]&~i[4]&~i[5]&~i[6]&~i[7];
assign idle=~i[0]&~i[1]&~i[2]&~i[3]&~i[4]&~i[5]&~i[6]&~i[7];
endmodule

module encoder_asl (A,B);

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

module encoderrtlstruct  (A,B,idle ); 

input [7:0] A ;  
output [2:0] B; 
output    idle ;
wire [7:0]w   ;

pr_circuit c1(.i(A),.h(w),.idle (idle));
encoder_asl c2(.A(w),.B(B));
 

endmodule


