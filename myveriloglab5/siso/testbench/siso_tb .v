module siso_tb () ; 
reg clk ; 
reg si ; 

wire [3:0]internal ; 
always #5 clk=~clk ; 
siso DUT (clk,si,sout ) ;

initial 
begin 
clk =0 ; 
si=1; 
#10 ; 
si =0 ; 
#10 ; 
si=0; 
#10 ; 
si =1 ; 

end 
initial $monitor ("clk=%b,si=%b,so=%b ",clk,si,sout ); 
initial #100 $finish ; 
endmodule 
 


