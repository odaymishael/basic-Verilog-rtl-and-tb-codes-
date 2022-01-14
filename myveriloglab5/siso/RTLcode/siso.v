module siso (clk,si ,sout ); 
input clk,si ; 

output sout  ; 

reg [3:0]innternal ; 

always@(posedge clk )
begin 

innternal [3]<=si ; 
innternal [2]<=innternal [3] ; 
innternal [1]<=innternal [2] ; 
innternal [0]<=innternal [1] ; 

end 
assign sout = innternal[0]; 

endmodule 