class trans;
  rand bit [3:0] addr;
  rand bit [7:0] data;
  
  
  function void display(string tag);
    $display("[%0t] addr=%0d data=%0d tag=%s",$time,data,addr,tag);
  endfunction
  
endclass

module mail_box;
  mailbox #(trans)mbx;
  
  initial begin
    mbx=new(2);
    
    
    fork
      producer();
      consumer();
    join
    
    $display("[%0t] simulation finished",$time);
    $finish();
  end
  
  task producer();
    trans tr;
    repeat(4) begin
      tr=new();
      if(!tr.randomize())
      $error("randomization failed");
      tr.display("producer");
      mbx.put(tr);
    end
  endtask
  
  task consumer();
    trans tr_received;
    repeat(4) begin
     
      mbx.get(tr_received);
      
      tr_received.display("CONSUMER");
    end
  endtask
      
endmodule


//output
[0] addr=106 data=5 tag=producer
[0] addr=242 data=4 tag=producer
[0] addr=218 data=5 tag=producer
[0] addr=106 data=5 tag=CONSUMER
[0] addr=242 data=4 tag=CONSUMER
[0] addr=218 data=5 tag=CONSUMER
[0] addr=108 data=4 tag=producer
[0] addr=108 data=4 tag=CONSUMER
[0] simulation finished

