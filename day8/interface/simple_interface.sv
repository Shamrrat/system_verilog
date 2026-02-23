interface intf();  //INTERFACE
  logic a,b,c;
  logic sum,carry;
endinterface

//DESIGN 
module full_adder(intf adder);
 
  assign {adder.carry,adder.sum}=adder.a+adder.b+adder.c;
endmodule
//TESTBENCH
module testbench;
  intf add(); INTERFACE INSTANCE
 full_adder dut(add);
   initial 
    begin
    repeat(10)
        begin
        add.a=$random;
        add.b=$random;
        add.c=$random;  
          
          #1;
          $display ("a=%b b=%b c=%b sum=%b carry=%b",add.a,add.b,add.c,add.sum,add.carry);
        end
    end
endmodule

//OUTPUT
a=0 b=1 c=1 sum=0 carry=1
a=1 b=1 c=1 sum=1 carry=1
a=1 b=0 c=1 sum=0 carry=1
a=1 b=0 c=1 sum=0 carry=1
a=1 b=0 c=1 sum=0 carry=1
a=0 b=1 c=0 sum=1 carry=0
a=1 b=1 c=0 sum=0 carry=1
a=1 b=0 c=0 sum=1 carry=0
a=0 b=1 c=0 sum=1 carry=0
a=1 b=1 c=1 sum=1 carry=1
