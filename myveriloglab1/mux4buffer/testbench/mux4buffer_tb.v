module mux4buffer_tb ();

reg  s1,s0,d3,d2,d1,d0 ;
wire y;
integer i; 
reg [3:0]d;
reg [1:0]s; 
mux4buffer DUT (s1,s0,d3,d2,d1,d0,y);
 
 initial 
  begin 
        for (i=0;i<64;i=i+1)
		    begin 
			     {s1,s0,d3,d2,d1,d0}=i ; 
                                d={d3,d2,d1,d0} ;
                                s={s1,s0};
				          #10 ; 
			      
			end 
 end 
initial $monitor("Input d=%b, s=%b,y=%b ", d,s,y); 

	
initial #10000 $finish; 

endmodule 
