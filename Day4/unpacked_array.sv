module unpacked_array;
  logic [3:0]array[7:0];
  logic [3:0]uniq[3:0];
  
  
  initial 
    begin
      array='{2,4,6,4,6,3,2,3};
      $display("original arrayelements=%p",array);
      uniq=array.unique();
      $display("unique=%p",uniq);
      $display("size of array =%0d",$size(array));
    end
endmodule
      
  OUTPUT
 original arrayelements='{2, 4, 6, 4, 6, 3, 2, 3}
 unique='{2, 3, 4, 6}
 size of array =8
