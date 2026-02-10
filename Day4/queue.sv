module queue_array;
  int queue[$];
  int i;
  
  initial 
    begin
      queue.push_front(1);
      queue.push_front(2);
      queue.push_front(3);
      queue.push_front(4);
      queue.push_front(5);
      queue.push_back(6);
      queue.push_back(7);
      queue.push_back(8);
      queue.push_back(9);
      queue.push_back(10);
      
       $display("queue elements=%p",queue);
      $display("queue size=%0d",queue.size());
      
      
      queue.insert(3,22);
      $display("queue elements after insert=%p",queue);
      $display("queue size=%0d",queue.size());
      
      queue.delete(3);
      $display("queue elements after delete=%p",queue);
      $display("queue size=%0d",queue.size());
      
      i=queue.pop_front();
      $display("poped element=%0d",i);
      $display("queue elements=%p",queue);
      $display("queue size=%0d",queue.size());
      
      queue.delete();
      $display("queue elements=%p",queue);
      $display("queue size=%0d",queue.size());
 
    end
endmodule

OUTPUT
# queue elements='{5, 4, 3, 2, 1, 6, 7, 8, 9, 10}
# queue size=10
# queue elements after insert='{5, 4, 3, 22, 2, 1, 6, 7, 8, 9, 10}
# queue size=11
# queue elements after delete='{5, 4, 3, 2, 1, 6, 7, 8, 9, 10}
# queue size=10
# poped element=5
# queue elements='{4, 3, 2, 1, 6, 7, 8, 9, 10}
# queue size=9
# queue elements='{}
# queue size=0


