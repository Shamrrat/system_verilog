class packet;
  rand int data;
  
  constraint ran {data inside {[1:200]};
                   data%3==0;
                  data%9!=0;}
endclass

module ran;
  packet pkt;
  
  initial
    begin
      pkt=new();
      repeat(10) begin
      pkt.randomize();
      $display("data=%0d",pkt.data);
      end
    end
endmodule


OUTPUT
data=177
data=96
data=3
data=69
data=33
data=105
data=21
data=60
data=66
data=177
