
   module encoderlab2_rtl_tb();
reg [7:0] A;
wire [2:0] B;
integer i;
encoderlab2_rtl DUT(A,B);
task initialize;
  A=0;
endtask

task stimulus(input [7:0] i);
begin
  A=i;
end
endtask

task delay;
  #10;
endtask 

initial 
begin
initialize;

for(i=0;i<256;i=i+1)
begin
  stimulus(i);
  delay;
end

end 
initial $monitor("Input A=%b ,Output B =%b " , A,B );
 initial #2000 $finish  ; 
 
endmodule
