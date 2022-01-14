module jk_tb ;

 
    reg J;
    reg K;
    reg Clk,rst;
    wire Qbar ,Qout ; 
    parameter cycle =10 ; 
    
   
  
    
    jk dut (J,K,Clk,rst,Qout,Qbar );
        
    
initial begin
Clk=1'b0;
forever #(cycle/2) Clk=~Clk;
end
task resets();
begin 
rst=1'b1;
#10;
rst=1'b0;
end
endtask

task inp(input x,y);
begin
@(negedge Clk);
J=x;
K=y;
end
endtask
initial begin
resets;
inp(0,0);
inp(0,1);
inp(1,0);
inp(1,1);
inp(1,0);
inp(0,1);
inp(1,1);
inp(0,1);
#10;
end


   
 

initial $monitor ("time=%d ,J=%b , K =%b ,CLK=%b,Qout=%b ,Qbar=%B ",$time ,J,K,Clk,Qout,Qbar );  
  initial #1000 $finish   ;  

endmodule
 



/*module jk_tb ;

 
    reg J;
    reg K;
    reg Clk;
    reg R;
    reg S;
    reg CE;

   
    wire Qout;

   
    jk dut (
        .J(J), 
        .K(K), 
        .Clk(Clk), 
        .R(R), 
        .S(S), 
        .CE(CE), 
        .Qout(Qout)
    );
    
   
    initial Clk = 0;
    always #10 Clk = ~Clk;
 


    initial begin
       
        J = 0;
        K = 0;
        R = 1;
        S = 0;
        CE = 0;
        #30;
        
        R = 1;  #50;
        R = 0;
        S = 1;  #50;
        S = 0;
        J = 1;  K = 1;  #50;
        CE = 1; #50;
        J = 0;  K = 0;  #50;
        J = 0;  K = 1;  #50;
        J = 1;  K = 0;  #50;
        J = 1;  K = 1;  #50;
        CE = 0;
    end
initial $monitor ("time=%d ,J=%b , K =%b ,CLK=%b,R=%B ,S=%b  ,CE=%b ,Q=%B ",$time ,J,K,Clk,R,S,CE,Qout );  
  initial #1000 $finish   ;  

endmodule*/
 
