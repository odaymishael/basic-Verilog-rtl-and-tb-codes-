module  muxlll_rtl(d,s,Y);
input [1:0]s ;
input  [3:0]d;
output reg Y;

always @(*)
begin 
case (s)
2'b00 :Y=d[0];
2'b01 :Y=d[1];
2'b10 :Y=d[2];
2'b11 :Y=d[3];
endcase 
end
endmodule  