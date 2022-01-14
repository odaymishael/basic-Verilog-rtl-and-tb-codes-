module FULLADDAR_RTL_tb ();

reg A,B,Cin; 
wire  S,Cout;
integer i ; 

FULLADDAR_RTL DUT (A,B,Cin,S,Cout);
 
 initial 
  begin 
        for (i=0;i<8;i=i+1)
		    begin 
			     {A,B,Cin}=i ; 
				          #10 ; 
			end 
 end 

	
initial #100 $finish; 
initial $monitor("Input A=%b, B=%b,Cin=%b ,Output S =%b, Cout=%b", A,B,Cin,S,Cout);
endmodule 
