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


module muxbuffer(s1,s0,d3,d2,d1,d0,y);
input s1,s0 ;
input  d3,d2,d1,d0;
output wor  y;

wire w1,w2,w3,w4;
 
decoder_rtl decoderone(.A(s1),.B(s0),.Y1(w1),.Y2(w2),.Y3(w3),.Y4(w4) );
bufif1  tribufferone((y),(d0),(w1));
bufif1  tribuffertwo((y),(d1),(w2));
bufif1  tribufferthree((y),(d2),(w3));
bufif1  tribufferfour((y),(d3),(w4));

endmodule  

