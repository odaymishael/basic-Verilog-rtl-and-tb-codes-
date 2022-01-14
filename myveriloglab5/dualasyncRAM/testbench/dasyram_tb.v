module dasyram_tb();
parameter depth =8,
 width =16,
 addr=3;
reg rst,wrclk,rdclk,wr,rd;
reg[width-1:0] din;
reg[addr-1:0] rdaddr,wraddr;
wire[width-1:0] dout;

dasynram DUT(rst,wrclk,rdclk,wr,rd,rdaddr,wraddr,din,dout);
initial begin
wrclk=1'b1;

forever #5 wrclk=~wrclk;
end
initial begin
rdclk=1'b1;
forever #5 rdclk=~rdclk;
end
task resets();
begin
rst=1'b1;
#10;
rst=1'b0;
end
endtask
 //Understand the various tasks used in this testbench
 task write(input[2:0] j);
 begin
wr=1'b1;
rd=1'b0;
#20;
din={$random}%65536;
wraddr=j;
end
endtask

task read(input[2:0] i);
 begin
 rd=1'b1;
rdaddr=i;
#10;
end
endtask
initial begin
resets;

write(3'd1);
write(3'd2);
write(3'd3);
#10;
read(3'd1);
read(3'd2);
read(3'd3);
end
initial
$monitor("rst=%b,wrclk=%b,rdclk=%b,wr=%b,rd=%b,rdaddr=%b,wrad
dr=%b,din=%d,dout=%d",rst,wrclk,rdclk,wr,rd,rdaddr,wraddr,din,dout);
initial #300 $finish;
endmodule 