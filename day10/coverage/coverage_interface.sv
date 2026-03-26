interface bus_if (input logic clk);
  logic [7:0] data;
  logic       valid;
endinterface

class bus_monitor;
  logic [7:0]sample_data;
  event sample_trigg;
  
  covergroup covgrp @(sample_trigg);
    option.per_instance =1;
    
    c1: coverpoint sample_data {
      bins low = {[0:50]};
      bins d = {12,45};
    }
  endgroup
  
  function new();
    covgrp=new();
  endfunction
  
  task run(virtual bus_if vif);
    forever begin
      @(posedge vif.clk)
      if(vif.valid) begin
        this.sample_data =vif.data;
        ->sample_trigg;
        
    $display("[%0t] valid data observed :%0d | coverage %0.2f%%",$time,sample_data,covgrp.get_inst_coverage());
      end
    end
  endtask
endclass

    
module top;
  logic clk=0;
  always #5 clk=~clk;
  
  bus_if b_if(clk);
  bus_monitor mon;
  
  initial begin
    mon=new();
    
    b_if.valid=1;
    
    fork
        mon.run(b_if);
    join_none
         
    
    repeat(20) begin
      @(posedge b_if.clk);
      b_if.data<=$urandom_range(0,50);
      end
   
    #10;
    $display("Total Coverage Achieved: %0.2f%%", mon.covgrp.get_inst_coverage());
    $finish;
  end
endmodule
    

//output
# [5] valid data observed :x | coverage 0.00%
# [15] valid data observed :28 | coverage 50.00%
# [25] valid data observed :32 | coverage 50.00%
# [35] valid data observed :41 | coverage 50.00%
# [45] valid data observed :44 | coverage 50.00%
# [55] valid data observed :14 | coverage 50.00%
# [65] valid data observed :34 | coverage 50.00%
# [75] valid data observed :27 | coverage 50.00%
# [85] valid data observed :0 | coverage 50.00%
# [95] valid data observed :43 | coverage 50.00%
# [105] valid data observed :40 | coverage 50.00%
# [115] valid data observed :47 | coverage 50.00%
# [125] valid data observed :50 | coverage 50.00%
# [135] valid data observed :46 | coverage 50.00%
# [145] valid data observed :49 | coverage 50.00%
# [155] valid data observed :19 | coverage 50.00%
# [165] valid data observed :41 | coverage 50.00%
# [175] valid data observed :35 | coverage 50.00%
# [185] valid data observed :20 | coverage 50.00%
# [195] valid data observed :49 | coverage 50.00%
# Total Coverage Achieved: 50.00%
