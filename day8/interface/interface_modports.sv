//INTERFACE
interface intf();
  logic a,b,c;
  logic sum,carry;
  
  modport dut (output sum,carry, input a,b,c);
  
endinterface
//DESIGN
module full_adder(intf.dut add);
 
  assign {add.carry,add.sum}=add.a+add.b+add.c;
endmodule
//TESTBENCH
module testbench;
  intf add();
  full_adder dut(add.dut);
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
