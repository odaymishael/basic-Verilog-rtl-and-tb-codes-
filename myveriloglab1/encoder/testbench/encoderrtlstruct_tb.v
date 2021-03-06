module encoderrtlstruct_tb ();

reg  [7:0]A; 
wire [2:0]B ;
 wire idle ; 
integer i; 
encoderrtlstruct DUT(A,B,idle );


initial 
  begin 
   for (i=0;i<254;i=i+1)
       begin 
	   {A}=i;
	   #10 ;
        end 
  end
  initial #2000 $finish  ; 
 initial $monitor("Input A=%b ,Output B =%b, Idle=%b ", A,B,idle );
endmodule 

/*module encoderrtlstruct_tb ();
   reg [7:0] A;
   wire[2:0] B;
encoderrtlstruct DUT (A,B);
   initial
     begin
    A=8'b11001100;
    #10;
    A=8'b01100110;
    #10;
    A=8'b00110011; 
    #10;
    A=8'b00010010;
    #10;
    A=8'b00001001;
    #10;
    A=8'b00000100;
    #10;
    A=8'b00000011;
    #10;
    A=8'b00000001;
    #10;
    A=8'b00000000;
    # 10; 
    end // initial begin
 initial #200 $finish  ; 
endmodule*/