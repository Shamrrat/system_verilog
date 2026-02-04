module array_types;
  int fixed[3] = '{10,20,30};
  int dynamic[];
  int queue[$];

  initial begin
    dynamic = new[2];
    dynamic = '{5,6};

    queue.push_back(1);
    queue.push_front(0);

    $display("fixed=%p dynamic=%p queue=%p", fixed, dynamic, queue);
  end
endmodule
