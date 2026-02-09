module array;
  logic [7:0][7:0] arr_1; //Packed array
  logic [7:0] arr_2[8];  //Unpacked array
  
  initial
    begin
    
   arr_1=64'habcdabcd;
      $display(" before reverse packed array arr_1=%p unpacked array arr_2=%p",arr_1,arr_2);
    
    
    foreach (arr_2[i])
      arr_2[i]=8'hFF;
      
      arr_1={<<8{arr_1}}; // reversing the packed array
    
      $display("After reverse packed array arr_1=%p unpacked array arr_2=%p",arr_1,arr_2);
  end
endmodule

OUTPUT
 before reverse packed array arr_1='{0, 0, 0, 0, 171, 205, 171, 205} unpacked array arr_2='{x, x, x, x, x, x, x, x}
 After reverse packed array arr_1='{205, 171, 205, 171, 0, 0, 0, 0} unpacked array arr_2='{255, 255, 255, 255, 255, 255, 255, 255}
    
