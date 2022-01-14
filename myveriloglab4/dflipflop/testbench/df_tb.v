
module df_tb ();  
reg d , clk ,clear ; 
wire q , qbar ;  
integer i ;  
 
parameter cycle =10 ;  
df DUT (d,clk,q,qbar,clear ) ;  
 
initial  
begin  
clk =0 ;  
forever #(cycle/2)  clk =~clk ;  
 
end  
 
task initialise(); 
{clk,d} = 1'b0; 
endtask 
 
 
task rst_dut(); 
      begin 
         @(negedge clk); 
           clear=1'b1; 
           
         @(negedge clk); 
           clear=1'b0; 
           
      end 
endtask 
 
 
task inputd(input i);  
      begin 
//  @(posedge clk); 
    d=i; 
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
 
initial $monitor ("clear =%b , d=%b ,q=%b , qbar = %b ",clear ,d,q,qbar );  
initial #1000 $finish ;  
  
endmodule

