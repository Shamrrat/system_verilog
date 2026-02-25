module test;

  event done;

  initial begin
    #10;
    -> done;   // Trigger the event
  end

  initial begin
    $display("Waiting...");
    @(done);   // Wait for event
    $display("Event triggered at %0t", $time);
  end

endmodule

//OUTPUT
Waiting...
Event triggered at 10
