module queue_ex;
  int q[$];  

  initial begin
    q.push_back(10);
    q.push_back(20);
    q.push_front(5);

    $display("pop_front = %0d", q.pop_front());
    $display("queue = %p", q);
  end
endmodule
