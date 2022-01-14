module clkbuf(mclk,bclk);
input mclk ;
output bclk;
buf(bclk,mclk);
endmodule