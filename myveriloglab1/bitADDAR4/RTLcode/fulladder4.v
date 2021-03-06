



module fulladder(A, B, Ci, S, Co);
  input A, B, Ci;
  output S, Co;
  wire w1,w2,w3;
 
  xor G1(w1, A, B);
  xor G2(S, w1, Ci);
  and G3(w2, w1, Ci);
  and G4(w3, A, B);
  or G5(Co, w2, w3);
endmodule

module fulladder4(A, B, S, Co);
 input [3:0] A, B;// Two 4-bit inputs
 output [3:0] S;
 output Co;
 wire w1, w2, w3;
 // instantiating 4 1-bit full adders in Verilog
 fulladder u1(A[0], B[0], 1'b0, S[0], w1);
 fulladder u2(A[1], B[1], w1, S[1], w2);
 fulladder u3(A[2], B[2], w2, S[2], w3);
 fulladder u4(A[3], B[3], w3, S[3], Co);
 
endmodule


/*module  fulladder4(A0,A1,A2,A3,B0,B1,B2,B3,S0,S1,S2,S3,Cout);
input A0,A1,A2,A3;
input B0,B1,B2,B3;
wire   C0,C1,C2 ;
output S1,S2,S3,S0;
output Cout;
assign S0= ((A0) ^ (B0) ^ (0) );  
assign C0 = ((A0&B0) ^  ((B0)&(0)) ^ ((0)&(A0))) ; 
assign S1 = ((A1) ^ (B1)^ (C0));  
assign C1 = (((A1)&(B1)) ^  ((B1)&(C0)) ^ ((C0)&(A1))) ; 
assign S2 = ((A2) ^( B2 )^ (C1)) ;  
assign C2 = (((A2)&(B2)) ^  ((B2)&(C1)) ^ ((C1)&(A2))) ; 
assign S3 = (A3) ^ (B3) ^ (C2);  
assign Cout = (((A3)&(B3)) ^  ((B3)&(C2)) ^ ((C2)&(A3))) ; 

endmodule*/