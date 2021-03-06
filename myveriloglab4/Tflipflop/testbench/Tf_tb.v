
module Tf_tb ();  
reg t, clk ,rst ; 
wire q  ;  
integer i ;  
 
parameter cycle =10 ;  
Tf DUT(t,clk,rst,q ) ;  
 
initial  
begin  
clk =0 ;  
forever #(cycle/2)  clk =~clk ;  
 
end  
 
task initialise(); 
t = 1'b0; 
endtask 
 
 
task rst_dut(); 
      begin 
         @(negedge clk); 
           rst=1'b1; 
           
         @(negedge clk); 
           rst=1'b0; 
           
      end 
endtask 
 
 
task inputd(input i);  
      begin 
    t=i;
 
      end 
endtask 
 
task delay; 
  #30; 
endtask  
 
initial 
begin  
  initialise ;  
  rst_dut; 
  for(i=0;i<2;i=i+1) 
  begin 
  inputd(i); 
  delay ;  
  end  
     
end 
 
initial $monitor ("clear =%b , T=%b  ,q=%b " ,rst ,t,q );  
initial #1000 $finish ;  
  
endmodule
