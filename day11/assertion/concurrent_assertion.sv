module concurrent_assertion;

  logic clk = 0;
  logic req, ack;

  always #5 clk = ~clk;

  // Property: If req is high, ack must be high in next cycle
  property req_ack_check;
    @(posedge clk)
    req |-> ##1 ack;
  endproperty

  assert property (req_ack_check);

endmodule
