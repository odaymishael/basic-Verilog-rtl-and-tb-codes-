module FULLADDAR_RTL (A,B,Cin,S,Cout);

input A,B,Cin; 
output S,Cout;

assign S=Cin ^ A ^ B ;
assign Cout=(((A^B)&Cin)|(A&B));

endmodule 

/*module FULLADDAR_RTL (A,B,Cin,S,Cout);

input wire A,B,Cin; 
output reg S,Cout;

always @(A or B or Cin) 
 begin 
 S <= Cin ^ A ^ B ;
 Cout<=(((A^B)&Cin)|(A&B));
 end 
endmodule */ 

/*module HALFADDAR_RTL(A,B,C,S);
				 
   input A,B;
   output S,C; 

   assign S=A ^ B;
   assign C=A & B;

endmodule

module FULLADDAR_RTL (A,B,Cin,S,Cout);


    input A;
    input B;
     input Cin;
    output S;
     output Cout;
     wire w1,w2,w3;
     

    HALFADDAR_RTL  HA1	(
        .A(A),
        .B(B),
        .S(w1),
        .C(w2)
    );
    
    HALFADDAR_RTL  HA2(
        .A(w1),
        .B(Cin),
        .S(S),
        .C(w3)
    );
	 or OR1(Cout,w3,w2); 
	 
	 

endmodule*/


