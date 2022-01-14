module counter(clk,rstn,load,mode,in,out ) ; 
input clk , rstn ,load , mode ; 
input  [3:0] in ; 
output reg [3:0] out ; 

always @ (posedge clk )
begin 
if(rstn )
begin
out <= 0 ; 
end 
else if (load )
begin  
out <=in  ; 
end 

else if (mode)
     begin 
     out <= out+1 ; 
     end 
     else if (!mode ) 
     begin  
     out <= out-1 ;
     end 
     else 
     begin 
     out <= 4'b0000; 
     end 
end 

endmodule 

