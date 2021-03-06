

module mux2_rtl(d1,d0,s,Y);
input d1,d0 ;
input  s;
output reg Y;

always @(*)

  begin 
   case (s)
   1'b0 :Y=d0;
   1'b1 :Y=d1;

   endcase 
   end



endmodule 

module mux4_rtl(s1,s0,d3,d2,d1,d0,Y);
input   s0,s1 ;
input  d3,d2,d1,d0;
output  Y;

wire w1,w2;
 
mux2_rtl muxone(
.d0(d0),
.d1(d1),
.s(s0),
.Y(w1)
 );
mux2_rtl muxtwo(
.d0(d2),
.d1(d3),
.s(s0),
.Y(w2)
 )  ;
mux2_rtl muxthree(
.d0(w1), 
 .d1(w2)  ,
 .s(s1), 
 .Y(Y)
 ) ; 


endmodule 


/*module mux4_rtl(d,s,Y);
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
endmodule  */


/*module mux4_rtl(d,s,Y);
input [1:0]s ;
input  [3:0]d;
output reg Y;

wire w1,w2;
 
mux2_rtl muxone((.d[0](d[0]),.d[1](d[1]),.s(s[1]),.Y(w1) );
mux2_rtl muxtwo((.d[0](d[2]),.d[1](d[2]),.s(s[1]),.Y(w2) )  ;
mux2_rtl muxthree((.d[0](w1),  .d[1](w2)  ,  .s(s[0]),  .Y(Y)) ; 


endmodule*/  