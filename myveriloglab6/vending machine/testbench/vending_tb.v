module vending_tb();
reg clk,rst;
reg[1:0] coin;
wire x,y;
parameter s0=2'b00,
 s1=2'b10,
 s2=2'b11;
 
reg[1:0] present,next;

vending DUT(clk,rst,coin,x,y);

initial begin
clk=1'b1;
forever #5 clk=~clk;
end

task initialize();
 begin
 coin = 0;
 end
 endtask
 //Delay task
 task delay(input integer i);
 begin
#i;
 end
 endtask
 
 //Reset task
 task RESET();
 begin
delay(5);
rst=1'b1;
delay(10);
rst=1'b0;
 end
 endtask
 
task stimulus(input[1:0] data);
 begin
 @(negedge clk);
 coin = data;
 end
 endtask
 
 
 initial
 begin
initialize;
RESET;
stimulus(00);
stimulus(10);
stimulus(00);
stimulus(01);
stimulus(10);
stimulus(11);
stimulus(10);
RESET;
stimulus(11);
stimulus(00);
stimulus(10);
stimulus(11);
delay(10);
 end
 
initial
$monitor("clk=%b,rst=%b,coin=%b,p=%b,c=%b",clk,rst,coin,x,
y);
initial #200 $finish;
endmodule 