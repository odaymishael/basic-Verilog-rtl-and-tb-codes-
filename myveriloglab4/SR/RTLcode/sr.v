
module sr( s, r ,q, qbar);
  

	output q;
   output qbar;
   input  s;
   input  r;

   nor (qbar, s, q);
   nor (q, r, qbar);
endmodule 