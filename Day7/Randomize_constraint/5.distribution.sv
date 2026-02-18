class random;
  rand int mode;
  constraint distribution {mode dist {0:/40,1:/40,2:/20};
                           mode inside {0,1,2};}
  endclass

module test;
  random r;
  
  initial
    begin
      r=new();
      repeat(20) begin
      r.randomize();
        $display(" mode=%0d",r.mode);
      end
    end
endmodule

//OUTPUT
 mode=0
 mode=1
 mode=0
 mode=1
 mode=0
 mode=1
 mode=0
 mode=0
 mode=1
 mode=2
 mode=1
 mode=0
 mode=0
 mode=2
 mode=1
 mode=1
 mode=1
 mode=1
 mode=2
 mode=1
