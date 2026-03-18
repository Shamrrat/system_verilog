module fork_join_example;

  initial begin
    $display("Start");

    fork
      begin
        #5  $display("Thread 1 finished at time %0t", $time);
      end

      begin
        #10 $display("Thread 2 finished at time %0t", $time);
      end

      begin
        #2  $display("Thread 3 finished at time %0t", $time);
      end
    join

    $display("End at time %0t", $time);
  end

endmodule


//OUTPUT
 Start
# Thread 3 finished at time 2
# Thread 1 finished at time 5
# Thread 2 finished at time 10
# End at time 10
