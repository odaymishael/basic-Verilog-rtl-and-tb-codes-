


module   df(d,clk,q,qbar,clear); 
input clear ,d,clk ; 
output reg  q ;

output  qbar ; 
always @(posedge clk)
   begin 
	
     if (clear)
      
     q <= 1'b0 ; 
   
      
     
     else
     
     q<=d ; 
    
      

end 
 assign    qbar = ~q ; 

endmodule 