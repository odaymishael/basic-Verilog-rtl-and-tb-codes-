
module mux2_rtl_tb();
reg [0:1]d,s1;
 wire  out;
integer i;
mux2_rtl DUT(d,s,Y);
 

initial 
begin 
for (i=0;i<8;i=i+1)
begin 
{s,d}=i;
#10;
end  
end 
initial #200 $finish  ; 
 
endmodule 

/*module mux2_rtl_tb();
wire out;
reg d0, d1, s;
mux2_rtl DUT (d0,d1,s,out);
initial
begin
d0=1'b0;
d1=1'b0;
s=1'b0;
#200 $finish;
end
always #5 d0=~d0;
always #2 d1=~d1;
always #2 s=~s;

endmodule;*/
