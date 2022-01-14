module dualsyn16_tb();
parameter depth =16,
 width =8,
 addr=4;
reg clk,rst,wr,rd;
reg[width-1:0] din;
reg[addr-1:0] rdaddr,wraddr;
wire[width-1:0] dout;
integer i,j,k;
dualsyn16 DUT(clk,rst,wr,rd,rdaddr,wraddr,din,dout);
initial
begin

clk=1'b1;
forever #5 clk=~clk;
end
task resets();
begin
rst=1'b1;
#10;
rst=1'b0;
end
endtask
 
 task write(input[3:0] j);
 begin
wr=1'b1;
#10;
din={$random }%256;
wraddr=j;
end
endtask
 task read(input[3:0] i);
 begin
 rd=1'b1;
rdaddr=i;

#10;
end
endtask
initial begin
resets;


write(4'd5);
write(4'd6);
write(4'd7);
#10;
read(4'd5);
read(4'd6);
read(4'd7);
end
initial
$monitor("clk=%b,rst=%b,wr=%b,rd=%b,,rdaddr=%b,wraddr=%b,din=
%b,dout=%b",clk,rst,wr,rd,rdaddr,wraddr,din,dout);
initial #300 $finish;
endmodule