module fulladder4_tb ();



wire Cout;
reg [3:0]A;
reg [3:0]B;
wire [3:0]S;
integer i ; 

fulladder4 DUT (A,B,S,Cout); 
 initial 
  begin 
        for (i=0;i<255;i=i+1)
		    begin 
			     {A,B}=i ; 


				 #10 ; 
						
			end 
 end 

initial $monitor("Input A=%b, B=%b,Output S =%b", A,B,S);	
initial #1000 $finish; 

endmodule