module immediate_assertion;

  int a = 5;
  int b = 5;

  initial begin
    assert (a == b)
      $display("PASS: a equals b");
    else
      $error("FAIL: a not equal to b");
  end

endmodule
