
   module decoderlll_rtl_tb ();


reg [2:0]A;

wire   [7:0]Y  ;
integer i ;
decoderlll_rtl DUT(A,Y);

 
 
initial 

begin 
      for (i=0;i<8;i=i+1)
		    begin 
			    A=i ; 
				          #10 ; 
			end 
     

		
		
end  
initial #100 $finish; 
initial $monitor("Input A=%b ,Output Y =%b " , A,Y); 

endmodule  
 
