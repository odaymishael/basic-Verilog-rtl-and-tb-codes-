module vending(clk,rst,coin,x,y);
input clk,rst;
input[1:0] coin;
output reg x,y;

parameter s0=2'b00,
 s1=2'b10,
 s2=2'b11;
 
reg[1:0] present,next;

always@(posedge clk)
begin
if(rst)
present<=s0;
else
present<=next;
end

always@(*)
begin
next=s0;
case (present)
s0 : if(coin==1)
next=s1;
else if(coin==2)
next=s2;
s1: if(coin==1)
next=s2;
else if(coin==2)
next=s0;
else
next=s1;
s2: if((coin==1)||(coin==2))
next=s0;
else
next=s2;
endcase
end

always@(posedge clk)
begin
x<=0;
y<=0;
case(present)
s1 :if(coin==2)
x<=1;
s2: if(coin==1)
x<=1;
else if(coin==2)
begin
x<=1;
y<=1;
end
endcase
end
endmodule
