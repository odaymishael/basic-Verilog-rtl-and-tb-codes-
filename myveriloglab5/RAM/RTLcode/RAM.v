module RAM (data ,adder ,we ,clk  ) ;

inout [7:0 ] data ;
input [3:0 ] adder ; 
input we ,clk ; 

reg  [7:0] ram [15:0 ] ; 


always @ (posedge clk ) 
begin 
if (we ) 
ram [adder] <=  data ; 
end

assign  data =(!we)?ram[adder]:8'hzz;

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