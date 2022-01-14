module muxlll_rtl_tb();
wire  Y;
reg [3:0]d;
reg [1:0]s; 
integer i;


muxlll_rtl DUT(d,s,Y);

 task initialize;
      begin
{d,s}=0;
      end
   endtask

 
   task stimulus(input [6:0]i);
      begin
 {s,d}=i;
   
      end
   endtask

task delay;
  #10;
endtask 


initial 
begin 
initialize;
for (i=0;i<128;i=i+1)
begin 
 stimulus (i);
 delay;
end  
end 
initial $monitor("Input d=%b, s=%b,y=%b ", d,s,Y); 
initial #1000 $finish  ; 
 
endmodule 