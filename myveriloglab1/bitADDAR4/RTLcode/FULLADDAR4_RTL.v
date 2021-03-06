

module 4FULLADDAR_RTL(X, Y, Ci, S, Co);
  input A, B, Ci;
  output S, Co;
  wire w1,w2,w3;
 
  xor G1(w1, A, B);
  xor G2(S, w1, Ci);
  and G3(w2, w1, Ci);
  and G4(w3, A, B);
  or G5(Co, w2, w3);
endmodule
module rippe_adder(A, B, S, Co);
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

/*module 4FULLADDAR_RTL (A,B,Cin,S,Cout);
input [3:0]A,B;

output [3:0]S;
output Cout;
assign S [0] = A[ 0 ] ^ B [ 0 ] ^ Cin ;  
assign C0 = ((A[0]&B [ 0 ]) ^  (B[0]&Cin) ^ (Cin&A[0])) ; 
assign S [ 1 ] = A[ 1 ] ^ B [ 1 ] ^ C0 ;  
assign C1 = ((A[1]&B [ 1 ]) ^  (B[1]&C0) ^ (C[0]&A[1])) ; 
assign S [ 2 ] = A[ 2] ^ B [ 2 ] ^ C1 ;  
assign C2 = ((A[2]&B [ 2 ]) ^  (B[2]&C1) ^ (C1&A[2])) ; 
assign S [ 3 ] = A[ 3 ] ^ B [ 3] ^ C2;  
assign Cout = ((A[3]&B [ 3 ]) ^  (B[3]&C2) ^ (C2&A[3])) ; 

endmodule */

