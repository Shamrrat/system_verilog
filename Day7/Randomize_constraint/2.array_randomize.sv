class array;
  rand int arr[5];
  
  constraint ran {foreach(arr[i])arr[i] inside {[1:50]};
                  foreach (arr[i])
                    if (i<arr.size()-1)
                    arr[i]<arr[i+1];}
endclass

module test;
  array a;
  
  initial
    begin
      a=new();
      repeat(10) begin
       
      a.randomize();
        $display("array a=%p",a.arr);
      end
    end
endmodule


//OUTPUT
array a='{2, 5, 31, 34, 45} 
array a='{22, 29, 30, 33, 45} 
array a='{2, 6, 7, 44, 48} 
array a='{10, 11, 13, 18, 45} 
array a='{2, 7, 21, 35, 38} 
array a='{14, 16, 17, 25, 27} 
array a='{2, 4, 19, 21, 37} 
array a='{5, 10, 14, 15, 26} 
array a='{10, 17, 20, 43, 44} 
array a='{3, 4, 23, 33, 44} 

