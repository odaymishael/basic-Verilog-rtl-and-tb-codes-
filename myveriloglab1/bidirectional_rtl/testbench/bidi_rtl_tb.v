module bidi_rtl_tb();
wire A,B ;
reg control ;
reg tempA,tempB ;
integer i ; 

bidi_rtl DUT(A,B,control);
 
 initial 
 
 begin
 
 for (i=0;i<8;i=i+1)
 
   begin 
        {control,tempA,tempB}=i;
		#10;
             
   end 
 
 end 
 assign A=(control)?tempA:1'bz ;
 assign B=(control)?1'bz:tempB ;


 initial #100 $finish ; 
endmodule 