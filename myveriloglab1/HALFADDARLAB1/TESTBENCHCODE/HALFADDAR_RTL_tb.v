
/*module HALFADDAR_RTL_tb ();

reg A,B ; 

wire C , S ;

integer i;
HALFADDAR_RTL DUT (A,B,C,S ); 
 
  
initial 
       begin 
            for (i=0;i<4;i=i+1)	   
			   begin 
			        {A,B}=i ;
					#10 ;
				end 
		end 
initial $monitor("Input A=%b, B=%b, Output S =%b, C=%b", A,B,S,C); 
	
initial #100 $finish; 

endmodule */


module HALFADDAR_RTL_tb ();
  
				 
reg [1:0] in_1 ; 

wire C , S ;

integer i;
HALFADDAR_RTL DUT (in_1,C,S ); 
 
  
initial 
       begin 
       in_1 =2'b00;
        #10;
         in_1 =2'b01;
        #10;
         in_1 =2'b10;
        #10;
         in_1 =2'b11;
         end 
	
initial #100 $finish; 

endmodule

