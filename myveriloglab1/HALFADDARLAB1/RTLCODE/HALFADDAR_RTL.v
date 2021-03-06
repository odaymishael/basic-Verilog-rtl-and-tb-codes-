//data flow level coding style one 
module HALFADDAR_RTL(ha_A,ha_B,ha_C,ha_S);
				 
   input ha_A,ha_B;
   output ha_S,ha_C; 

   assign ha_S=ha_A ^ ha_B;
   assign ha_C=ha_A & ha_B;

endmodule
 
//data flow level coding style two 
/*module HALFADDAR_RTL(A,B,C,S);
				 
   input wire A,B;
   output reg S,C; 
 always @(A,B) 
 begin 
  C=A&B ;
  S=A^B ;
 end 
endmodule */

//structural level
/*module HALFADDAR_RTL(A,B,C,S);
				 
   input A,B;
   output C,S; 

   xor (S, A ,B) ;
   and (C, A , B);

endmodule */

//Behaverial level case sTyle
/*module HALFADDAR_RTL(input [1:0] in_1 ,   output reg S,C );
				 
   

  always @(*) 
  begin 
       case (in_1) 
		 2'b00 :begin S=0; C=0; end 
		   
		 2'b01 :begin S=1; C=0; end 
			
		 2'b10 :begin S=1; C=0; end 
			
		 2'b11 :begin S=0; C=1; end 
		endcase 	
			
	end 
	
		   
		

endmodule  */

//Behaverial level if style
/*module HALFADDAR_RTL(A,B,C,S); 
      
   input wire A,B; 
   output reg C,S;  
 
  always @(A or B)  
  begin  
        if (A==0 && B==0) 
         begin  
         S=0; 
         C=0; 
         end  
      
        else if(A==0 && B==1) 
         begin  
         S=1; 
         C=0; 
         end  
    
        else if(A==1 && B==0) 
         begin  
         S=1; 
         C=0; 
         end  
    
        else if(A==1 && B==1) 
         begin  
         S=0; 
         C=1; 
         end  
    
  end  
  
      
   
 
endmodule */






