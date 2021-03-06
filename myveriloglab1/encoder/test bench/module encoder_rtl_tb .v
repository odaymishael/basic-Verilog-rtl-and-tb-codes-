module encoder_rtl_tb();

   //Step1 : Write down the variables required for testbench
    wire [2:0] B;
   reg [7:0] A;
   integer i;
   //Step2 : Instantiate the Design 
   encoder_rtl DUT(y,d);

   //Step3 : Declare a task to initialize inputs of DUT to 0 
   task initialize;
      begin
   {d} = 0;
      end
   endtask

   //Step4 : Declare  tasks with arguments for driving stimulus to DUT 
   task stimulus(input [7:0]i);
      begin
   A = i;
   
      end
   endtask

task delay;
  #10;
endtask 

   //Step5 : Call the tasks from procedural process 

   initial
      begin
   initialize;
   for(j=1;j<=256;j=j+1)
    stimulus(j);
    delay ; 
      end

   //Step6 : Use $monitor task to display inputs and outputs
   initial
      begin
   $monitor("Values of A=%b, Output=%b",A,B);
      end

   //Step7 : Use $finish task to terminate the simulation at 100ns
   initial
      begin
   #100 $finish;
      end
endmodul




/*module encoder_rtl_tb ();

reg  [7:0]A; 
wire [2:0]B ;
 
integer i ; 

encoder_rtl DUT (A,B);

initial 
  begin 
   for (i=0;i<254;i=i+1)
       begin 
	   {A}=i ;
	   #10 ;
        end 
  end
  initial #2000 $finish  ; 
 initial $monitor("Input A=%b ,Output B =%b", A,B);
endmodule */




/*module encoder_rtl_tb ();
   reg [7:0] A;
   wire[2:0] B;
encoder_rtl DUT (A,B);
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