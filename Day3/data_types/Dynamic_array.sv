module dynamic_array;
  int arr[];
  
  initial begin
    arr=new[5];
    $display("dynamic_arr: before initialization=%p",arr);
    arr='{20,23,24,55,44};
    $display("dynamic_arr: after initialization=%p",arr);
    arr=new[8](arr);
    $display("dynamic_arr: resized=%p",arr);
    arr.delete();
    $display("dynamic_arr: after delete=%p",arr);
  end
endmodule


OUTPUT
 dynamic_arr: before initialization='{0, 0, 0, 0, 0}
 dynamic_arr: after initialization='{20, 23, 24, 55, 44}
 dynamic_arr: resized='{20, 23, 24, 55, 44, 0, 0, 0}
 dynamic_arr: after delete='{}
