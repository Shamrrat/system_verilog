class sta_non_sta;
  
  // static local variable
  function void increment_s();
    static int count_static;
    count_static++;
    $display("count static=%0d",count_static);
  endfunction
  
  //non static local variable 
  function void increment_n_s();
    int count_non_static;
    count_non_static++;
    $display("count non_static=%0d",count_non_static);
  endfunction
  endclass


module static_non_static;
    sta_non_sta p;
   initial
    begin
      p=new();
        repeat(5)
        p.increment_s();
       repeat(5)
        p.increment_n_s();
         end
endmodule
      
      
//OUTPUT
/* count static=1
   count static=2
   count static=3
   count static=4
   count static=5
   count non_static=1
   count non_static=1
   count non_static=1
   count non_static=1
   count non_static=1   */
  
