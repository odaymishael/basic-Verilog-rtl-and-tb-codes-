module clkbuf_tb();
reg mclk;
wire bclk;
real t0;
real t1;
real t2;
real t3;
real t6;
real t5;
clkbuf DUT(mclk,bclk);
initial begin
mclk=1'b1;
forever #5 mclk=~bclk;
end
initial begin
@(posedge mclk) t0=$realtime;
@(posedge mclk) t1=$realtime;
@(posedge bclk) t2=$realtime;
@(posedge bclk) t3=$realtime;
t5=(t1-t0);
t6=(t3-t2);

$display("result for t5==t6:%0d",t5==t6);
$display("result for t0==t2:%0d",t0==t2);
end

initial #100 $finish;
endmodule


/*module clkbuf_tb();
reg mclk;
wire bclk;
reg t1,t2,t3,t4,t5,t6 ; 
parameter T=3.90625;

 clkbuf dut(mclk,bclk); 
 
 initial
 begin mclk=1'b0; 
 forever #(T/2) mclk=~mclk;
 end 
 
 task master; 
 begin @(posedge mclk) 
 t1=$realtime; 
 @(posedge mclk)
 t2=$realtime; 
 t3=t2-t1; 
 end 
 endtask
 
 task bufout; 
 begin @(posedge bclk) 
 t4=$realtime;
 @(posedge bclk)
 t5=$realtime; 
 t6=t5-t4; 
 end 
 endtask
 
 task freq_phase;
 realtime f,p;
 begin
 f=t6-t3; 
 p=t4-t1;
 $display("freq_diff=%0t, phase_diff=%0t", f,p); 
 end 
 endtask 
 
 initial 
 begin
 fork 
 master; 
 bufout; 
 join 
 freq_phase;

$display("result for t3==t6:%0d",t3==t6);
$display("result for t1==t4:%0d",t1==t4);
end

initial #100 $finish;



 endmodule*/ 