module decoder_rtl_tb ();


reg [1:0]A;

wire   [3:0]Y  ;
integer i ;
decoder_rtl DUT(A,Y);

 
 
initial 

begin 
      for (i=0;i<4;i=i+1)
		    begin 
			    A=i ; 
				          #10 ; 
			end 
     

		
		
end  
initial #100 $finish; 
initial $monitor("Input A=%b ,Output Y =%b " , A,Y); 

endmodule 
