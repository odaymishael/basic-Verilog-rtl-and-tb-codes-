module decoder_rtl(A,B,Y1,Y2,Y3,Y4);

input A,B;
output reg  Y1,Y2,Y3,Y4 ; 

always @(*)
begin 
 Y1= ~A&~B;
 Y2=~A&B;
 Y3=A&~B;
 Y4=A&B;
end 
endmodule 


module mux4buffer_rtl(d3,d2,d1,d0,s1,s1,y);
input s1,s0 ;
input  d3,d2,d1,d0;
output reg y;

wire w1,w2,w3,w4;
 
decoder_rtl decoderone(.A(s0),.B(s1),.Y1(w1),.Y2(w2),.Y3(w3),.Y4(w4) );
bufif1  tribufferone((y),(w1),(d0));
bufif1  tribuffertwo((y),(w2),(d1));
bufif1  tribufferthree((y),(w3),(d2));
bufif1  tribufferfour((y),(w4),(d3));

endmodule  

