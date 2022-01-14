module dasynram(rst,wrclk,rdclk,wr,rd,rdaddr,wraddr,din,dout);
parameter depth =8,
 width =16,
 addr=3;
input rst,wrclk,rdclk,wr,rd;
input[width-1:0] din;

input[addr-1:0] rdaddr,wraddr;
output reg[width-1:0] dout;
integer i;
 
 reg [width-1:0]mem[depth-1:0];
 
 always@(posedge wrclk,posedge rst)
 begin
 if (rst)
begin
for(i=0;i<depth;i=i+1)
 mem[i]<=0;
 
end
else
begin if(wr)
 mem[wraddr]<=din;
 end
end
always@(posedge rdclk,posedge rst)
 begin
 if (rst)
begin

 dout<=0;
end

else
begin
if(rd)
dout<=mem[rdaddr];
end
end
endmodule