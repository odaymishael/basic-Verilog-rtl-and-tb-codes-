module fifo_tb();
reg clk,rst,we,re;
reg[7:0] di;
wire[7:0] dout;
wire full,empty;
wire fifo_cnt ; 


integer l; 

parameter depth = 16;
fifo DUT(clk,rst,we,re,di,dout,full,empty,fifo_cnt);

//clock 
initial begin
clk=1'b1;
forever #50 clk=~clk;
end

task initialize;

begin
we=0;
re=0;
di=0;

end
endtask

task resets();


begin
@(negedge clk);
rst=1'b1;
@(negedge clk);
rst=1'b0;
end
endtask

 task write(input y,z);
begin

@(negedge clk);
we=y ;
re=z;
di={$random }%256 ;
end
endtask

task read(input n,m);
begin
@(negedge clk);
we=n;
re=m;
end
endtask

initial
 begin
initialize;
resets;
write( 1,0);
#1500
read(0,1);


end

initial $monitor("clk=%b,rst=%b,we=%b,re=%b,di=%b,dout=%b,full=%b,em
pty=%b",clk,rst,we,re,di,dout,full,empty);
initial #8000 $finish;
endmodule

