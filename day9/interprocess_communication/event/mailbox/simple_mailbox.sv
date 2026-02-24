class transaction;
  rand bit [7:0]data;
  
  function void display(string name);
    $display("%s:data=%0d",name,data);
  endfunction
  
endclass

class generator;
  mailbox gen2drv;
  
  function new(mailbox gen2drv);
    this.gen2drv=gen2drv;
  endfunction
  
  task run();
    transaction tr;
    
    repeat(5) begin
      tr=new();
      tr.randomize();
      tr.display("Generator");
      gen2drv.put(tr);
      #10;
    end 
  endtask
endclass
  
  
  class driver;
    
    mailbox gen2drv;
    
    function new(mailbox gen2drv);
      this.gen2drv=gen2drv;
    endfunction
    
    task run();
      transaction tr;
      
      forever begin
        gen2drv.get(tr);
        tr.display("driver");
      end
    endtask
  endclass
  
  
  
  module tb;
    
    mailbox mbox;
    generator gen;
    driver drv;
    
    initial
      begin
        mbox=new();
        gen=new(mbox);
        drv=new(mbox);
        
        fork
          gen.run();
          drv.run();
        join_none
        
        #200 $finish;
      end
  endmodule

//output
Generator:data=40
driver:data=40
Generator:data=223
driver:data=223
Generator:data=184
driver:data=184
Generator:data=17
driver:data=17
Generator:data=92
driver:data=92
