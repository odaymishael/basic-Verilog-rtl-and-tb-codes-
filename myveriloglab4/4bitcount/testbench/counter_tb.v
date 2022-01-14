module counter_tb ();
reg clk , rstn ,load ,mode ; 
 reg [3:0] in ; 
 wire  [3:0] out ; 
integer m,n,l,i ;
 parameter cycle =10 ; 
initial begin
clk=1'b0;
forever #(cycle/2) clk=~clk;
end 

counter DUT(clk,rstn,load,mode,in,out  ); 

initial 
  begin

//initialize 
{rstn} = 1'b1; 


//stimulus 
#20 for(m=0;m<2;m=m+1)
	    begin
            
              
	       for(n=0;n<2;n=n+1)
	          begin 
                  for(l=0;l<2;l=l+1)
                   begin
                    load=n;
                     rstn=m ;
                     mode=l;
		     for(i=0;i<16;i=i+1) 
                     begin 
                    in=i; 
                     #10 ; 
                      end  
                     end
	          end
            end  
 #40 rstn = 0 ; load= 0 ; 
in = 4'b0011; 

end 
initial $monitor ("clk=%b ,rstn =%b , out =%b ",clk ,rstn , out ) ; 
initial #2000 $finish  ; 

endmodule 

