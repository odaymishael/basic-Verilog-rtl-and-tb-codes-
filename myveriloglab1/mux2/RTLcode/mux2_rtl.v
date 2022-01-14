
module mux2_rtl(d,s,Y);
input [1:0]d ;
input  s;
output reg Y;

always @(*)
begin 
case (s)
1'b0 :Y=d[0];
1'b1 :Y=d[1];

endcase 
end
endmodule 

/*module mux2_rtl( d0, d1, s, out);
input wire d0, d1, s;
output reg out;

always @(d0 or d1 or s)
begin

if(s==1'b1) 
out= d1;
else
out=d0;

end

endmodule*/