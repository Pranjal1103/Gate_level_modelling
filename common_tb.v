//common testbench for all gates
module tb;
  reg a,b;
  //reg a;[for not gate]
  wire y;
  xor_g m1(.a(a),.b(b),.y(y));
  //not_g m1(.a(a),.b(b),.y(y));
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    //a=0;#10;a=1;#10;[for not gate]
    
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10
    a=1;b=1;
    #10;
    
    $finish;
    
  end
endmodule
