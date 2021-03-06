 () ;
wire [7:0 ] data ; 
reg [3 :0 ] adder ; 
reg we ,clk ; 

reg [7:0 ] data_reg ;

assign  data =(we)?data_reg:8'hzz;
RAM  DUT (data ,adder ,we ,clk   ) ;



initial 
begin 
clk =1'b1; 
forever #50 clk =~clk ; 


end 


initial 
begin 

we =1'b1 ; 
data_reg =8'b00000001 ;
adder =4'b1110 ; 

#100 ; 

data_reg =8'b00000011 ;
adder =4'b1101 ; 
#100 ;

data_reg =8'b00000111 ; 
adder =4'b1100 ; 
#100 

we=1'b0 ; 
adder =4'b1110 ;

#100 ; 
adder =4'b1101 ; 
//we=1'b0 ; 
#100 ; 

adder =4'b1100; 
//we=1'b0 ; 
#100 ; 

$finish ;

end 
initial 
 begin 
$monitor ("adder=%d , data = %d ",adder,data ); 
end 
endmodule 

/*module RAM_tb () ;
reg [7:0 ] data ; 
reg [3 :0 ] adder ; 
reg we ,clk ; 
wire [7:0 ] dataout ; 
RAM  DUT (data ,adder ,we ,clk ,dataout  ) ;



initial 
begin 
clk =1'b1; 
forever #50 clk =~clk ; 


end 


initial 
begin 

we =1'b1 ; 
data =8'b00000001 ;
adder =4'b1110 ; 

#100 ; 

data =8'b00000011 ;
adder =4'b1101 ; 
#100 ;

data =8'b00000111 ; 
adder =4'b1100 ; 
#100 

we=1'b0 ; 
adder =4'b1110 ;

#100 ; 
adder =4'b1101 ; 
//we=1'b0 ; 
#100 ; 

adder =4'b1100; 
//we=1'b0 ; 
#100 ; 



end 

endmodule */