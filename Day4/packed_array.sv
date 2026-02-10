module packed_unpacked;
  logic [0:5][0:3]arr;
  
  
  initial 
    begin
      arr=32'd1;
      
      $display("number of bits in packed array=%0d",$bits(arr));
      $display("left element in packed array=%0d",$left(arr));
       $display("increment element in packed array=%0d",$increment(arr));
      $display("right element in packed array=%0d",$right(arr));
     
      $display("low element in packed array=%0d",$low(arr));
      $display("high element in packed array=%0d",$high(arr));
     
      
      
      
    end
endmodule


OUTPUT
number of bits in packed array=24
left element in packed array=0
increment element in packed array=-1
right element in packed array=5
low element in packed array=0
high element in packed array=5



