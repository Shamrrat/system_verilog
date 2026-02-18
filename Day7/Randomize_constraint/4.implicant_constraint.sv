class random;
  rand bit write;
  rand bit [7:0] data;
  constraint condition {write==0 -> data%2==0;
                       write==1 -> data%2==1;
                        data inside  {[1:50]};
                       solve write before data;}
  endclass

module test;
  random r;
  
  initial
    begin
      r=new();
      repeat(10) begin
      r.randomize();
        $display("write=%b data=%0d",r.write,r.data);
      end
    end
endmodule

//OUTPUT
write=1 data=23
write=0 data=40
write=1 data=1
write=0 data=40
write=0 data=24
write=0 data=28
write=0 data=8
write=0 data=30
write=0 data=32
write=1 data=23

