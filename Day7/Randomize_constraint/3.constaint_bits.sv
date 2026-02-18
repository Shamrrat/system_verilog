class random;
  rand bit [7:0] data;
  constraint two_0 {$countones(data)==6;}
  endclass

module test;
  random r;
  
  initial
    begin
      r=new();
      repeat(10) begin
      r.randomize();
        $display("data=%0b",r.data);
      end
    end
endmodule

//OUTPUT
data=10111101
data=1110111
data=11101101
data=1101111
data=1111101
data=1101111
data=10011111
data=111111
data=11100111
data=10111101
