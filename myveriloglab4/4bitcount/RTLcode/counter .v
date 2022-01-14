module counter (clk,rstn,out ) ; 
input clk , rstn ; 
output reg [3:0] out ; 

always @ (posedge clk )
begin 
if(!rstn )
out <= 0 ; 
else 
out <=out +1 ; 
end 
endmodule 

initial $monitor ("clk=%b ,rstn =%b , out =%b ",clk ,rstn , out ) ; 
initial #200 $finish  ; 


