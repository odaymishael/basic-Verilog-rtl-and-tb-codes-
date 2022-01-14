


module   df(d,clk,rst,q); 
input rst ,d,clk ; 
output reg  q ;


always @(posedge clk)
   begin 
	
     if (rst) 
     q <= 1'b0 ; 

     else
     q<=d ; 

   end 

endmodule 

module Tf(t,clk,rst,q);
input t,clk,rst;
output q;
wire w1;
assign w1=t^q;
df d1(w1,clk,rst,q);
endmodule 