module array_manipulation_methods;
  int arr[];
  
  initial
    begin
      arr=new[10];
     
      foreach(arr[i])
        arr[i]=$urandom_range(10,50);
      
       $display("elements of the array=%p",arr);
      
      //Array manipulation methods
       $display("sum of the array elements=%0d",arr.sum());
       $display("product of the array elements=%0d",arr.product());
       $display("AND of the array elements=%0d",arr.and());
       $display("OR of the array elements=%0d",arr.or());
       $display("XOR of the array elements=%0d",arr.xor());
       $display("max of the array elements=%0d",arr.max());
       $display("min of the array elements=%0d",arr.min());
       $display("unique of the array elements=%p",arr.unique());
      
       arr.sort();
      $display("elements in ascending=%p",arr);
       arr.rsort();
      $display("elements in descending=%p",arr);
       arr.reverse();
      $display("elements in reverse=%p",arr);
      
      repeat(5) begin
      arr.shuffle();
        $display("elements of the array shuffled=%p",arr);
      end
      
    end
endmodule



OUTPUT
# elements of the array='{28, 24, 41, 50, 43, 42, 17, 30, 42, 40}
# sum of the array elements=357
# product of the array elements=-2083303424
# AND of the array elements=0
# OR of the array elements=63
# XOR of the array elements=19
# max of the array elements=50
# min of the array elements=17
# unique of the array elements='{17, 24, 28, 30, 40, 41, 42, 43, 50}
# elements in ascending='{17, 24, 28, 30, 40, 41, 42, 42, 43, 50}
# elements in descending='{50, 43, 42, 42, 41, 40, 30, 28, 24, 17}
# elements in reverse='{17, 24, 28, 30, 40, 41, 42, 42, 43, 50}
# elements of the array shuffled='{17, 40, 28, 24, 43, 41, 42, 42, 50, 30}
# elements of the array shuffled='{42, 24, 17, 28, 40, 43, 30, 50, 41, 42}
# elements of the array shuffled='{28, 41, 30, 42, 24, 17, 50, 42, 43, 40}
# elements of the array shuffled='{40, 50, 41, 28, 17, 42, 43, 42, 24, 30}
# elements of the array shuffled='{40, 17, 43, 41, 42, 42, 24, 28, 30, 50}
