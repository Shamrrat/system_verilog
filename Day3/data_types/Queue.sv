module dynamic_array;
  byte queue[$];
  
  initial begin
    $display("queue=%p size=%0d",queue,queue.size());
    //queue built-in function
    queue.push_back(5);
    queue.push_back(10);
    queue.push_back(15);
    queue.push_front(1);
    $display("queue=%p size=%0d",queue,queue.size());
    queue.delete(0);
    $display("queue=%p size=%0d",queue,queue.size());
    queue.delete(2);
    $display("queue=%p size=%0d",queue,queue.size());
  end
endmodule

OUTPUT
queue='{} size=0
queue='{1, 5, 10, 15} size=4
queue='{5, 10, 15} size=3
queue='{5, 10} size=2
