class random;
  rand int mode[5];
  constraint distribution {foreach(mode[i])
                           mode[i] inside {[1:20]};
                           mode.sum()==30;}
  endclass

module test;
  random r;
  
  initial
    begin
      r=new();
      repeat(5) begin
      r.randomize();
        $display(" mode=%p",r.mode);
      end
    end
endmodule

//OUTPUT
 mode='{6, 9, 2, 12, 1} 
 mode='{8, 3, 13, 4, 2} 
 mode='{7, 3, 9, 5, 6} 
 mode='{6, 2, 9, 8, 5} 
 mode='{6, 7, 6, 6, 5} 
 
