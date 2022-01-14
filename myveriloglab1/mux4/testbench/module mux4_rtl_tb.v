module mux4_rtl_tb();
reg d3,d2,d1,d0;
reg s1,s0 ;
wire  Y;
integer i;
mux4_rtl DUT(s1,s0,d3,d2,d1,d0,Y);
initial 
begin 
for (i=0;i<64;i=i+1)
begin 
{s1,s0,d3,d2,d1,d0}=i; 
#10;
end  
end 
initial #1000 $finish  ; 
 
endmodule 

