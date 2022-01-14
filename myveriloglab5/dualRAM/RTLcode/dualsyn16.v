module dualsyn16(clk,rst,wr,rd,rdaddr,wraddr,din,dout);
parameter depth =16,
 width =8,
 addr=4;
input clk,rst,wr,rd;
input[width-1:0] din;
input[addr-1:0] rdaddr,wraddr;
output reg[width-1:0] dout;
integer cv;
 
 reg [width-1:0]mem[depth-1:0];
 
 always@(posedge clk)
 begin
 if (rst)
begin
for(cv=0;cv<depth;cv=cv+1)
 mem[cv]<=0;
 dout<=0;

end
else
begin if(wr)
 mem[wraddr]<=din;
if(rd)
dout<=mem[rdaddr];
end
end
endmodule



/*module RAM (data ,adder ,we ,clk ,dataout ) ;

input [7:0 ] data ;
input [3:0 ] adder ; 
input we ,clk ; 
output [7:0 ] dataout ; 

reg  [7:0] ram [15:0 ] ; 
reg  [3:0 ] adder_reg ; 


always @ (posedge clk ) 
begin 
if (we ) 
ram [adder] <= data; 
else 
 adder_reg <= adder ; 
  end 
  assign dataout =ram[adder_reg];
  endmodule */ 