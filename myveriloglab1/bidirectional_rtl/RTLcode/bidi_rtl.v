


 
 


  
module bidi_rtl(A,B,control);
inout A,B ;
input control ;
bufif1 one(B,A,control);
bufif0 two(A,B,control); 
endmodule 
  
  

/*module  bidi_rtl(A,B,control ) ;

inout   A,B;

input  control ;

reg temp1,temp0;

always @(*)
begin 
A=temp1;
B=temp0;
end 

always @(*)
begin
     if (control==0)
     begin
     temp0= A;
     temp1=1'bz;
     end
else if (control==1)
begin
temp1=B;
temp0=1'bz;
end

end 
//assign A=(control)?B:1'bz;
//assign B=(control)?1'bz:A; 

endmodule  */



 
 
/*module  bidi_rtl(A,B,control ) ;

inout  A,B ;

input  control ;
assign A=(control)?B:1'bz;
assign B=(control)?1'bz:A; 

endmodule  */
