module sr_tb ();
wire qbar,q ; 
reg s,r ; 
integer i ; 

task initialise(); 
{s,r} = 1'b0; 
endtask 
 
 
task stimulu(input [1:0]i);  
      begin 
 {s,r}=i ; 
      end 
endtask 
 
task delay; 
  #30; 
endtask  
 




sr DUT (s,r,q,qbar ) ; 

initial 
  begin 
  initialise ;
   for (i=0;i<4;i=i+1)
       begin 
	stimulu( i);
	  delay ;
        end 
  end  
  initial #2000 $finish  ; 
 initial $monitor(" s=%b , r =%b, q=%b,qbar=%b ", s,r,q,qbar );
endmodule 