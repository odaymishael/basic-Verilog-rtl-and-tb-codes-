module fifo(clk,rst,we,re,di,dout,full,empty,fifo_cnt);
parameter depth=16;
input clk , rst , we , re ;
input[7:0] di;
output reg[7:0] dout;
output full,empty;
output reg [3:0] fifo_cnt; 
integer i ;
reg [7:0]mem[depth-1:0];
reg[3:0] wrptr=0;
reg[3:0] rdptr=0;
assign full=(fifo_cnt==15);
assign empty=(fifo_cnt==0);

//reset
always@(posedge clk)
begin
if(rst)
begin
for(i=0;i<depth;i=i+1)
mem[i]=0;
end
end 

//wriren
always@(posedge clk) 
begin 
if(we && !full)
mem[wrptr]<=di;
//wrptr<=wrptr+1;
else if(we&& re)
mem[wrptr]<=di;
//wrptr<=wrptr+1;
end


//read 
always @(posedge clk) 
begin
if(re==1 && !empty)
 begin
dout<=mem[rdptr];
//rdptr<=rdptr+1;
end
else if (re&&we)
dout<=mem[rdptr];
end

//pointer 
always@(posedge clk ) 
begin 
if (rst) 
begin 
wrptr <=0 ; 
rdptr <=0; 
end 
else 
begin 
wrptr <= ((we&&!full)||(we&&re))?wrptr+1:wrptr ; 
rdptr <= ((re&&!empty)||(we&&re))?rdptr+1:rdptr ; 
end 
end 


//count 
always@(posedge clk ) 
begin 
if (rst)
 fifo_cnt<=0 ; 
else 
begin 
case ({we , re }) 
2'b00 :fifo_cnt <= fifo_cnt ;
2'b01 :fifo_cnt <= (fifo_cnt ==0)?0:fifo_cnt -1 ;
2'b10 :fifo_cnt <= (fifo_cnt ==16)?16:fifo_cnt +1 ;
2'b11 :fifo_cnt <= fifo_cnt ;
default :fifo_cnt<=fifo_cnt ; 
endcase 
end 
end 

endmodule