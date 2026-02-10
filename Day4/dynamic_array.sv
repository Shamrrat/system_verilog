module dynamic_array;
  int array[],copy[];
  
  
  initial 
    begin
      array=new[5];
      //copy=new[array.size()];
      
      
      foreach(array[i])
        array[i]=$urandom_range(20,40);
      
      $display("original array=%p",array);
      $display("array size=%0d",array.size());
      
      copy=new[3](array);
      $display("copied was succesfull=%p",copy);
      
      array=new[10](array);
      $display("original array=%p",array);
      $display("array size=%0d",array.size());
      
       array.delete();
       $display("original array=%p",array);
       $display("array size=%0d",array.size());
      
    end
endmodule


OUTPUT
# original array='{24, 31, 37, 35, 28}
# array size=5
# copied was succesfull='{24, 31, 37}
# original array='{24, 31, 37, 35, 28, 0, 0, 0, 0, 0}
# array size=10
# original array='{}
# array size=0
      
  
