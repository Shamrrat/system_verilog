module tb;

  bit [1:0] a;

  // Covergroup
  covergroup cg;
    coverpoint a {
      bins zero  = {0};
      bins one   = {1};
      bins two   = {2};
      bins three = {3};
    }
  endgroup

  cg c1 = new();

  initial begin
    repeat(10) begin
      a = $urandom_range(0,3);

      $display("Random value generated = %0d", a);

      c1.sample();   // sample the value

      $display("Current Coverage = %0.2f %%", c1.get_coverage());

      #10;
    end

    $display("Final Coverage = %0.2f %%", c1.get_coverage());
  end

endmodule

//OUTPUT
Random value generated = 2
Current Coverage = 25.00 %
Random value generated = 0
Current Coverage = 50.00 %
Random value generated = 1
Current Coverage = 75.00 %
Random value generated = 2
Current Coverage = 75.00 %
Random value generated = 3
Current Coverage = 100.00 %
Random value generated = 3
Current Coverage = 100.00 %
Random value generated = 0
Current Coverage = 100.00 %
Random value generated = 3
Current Coverage = 100.00 %
Random value generated = 2
Current Coverage = 100.00 %
Random value generated = 3
Current Coverage = 100.00 %
Final Coverage = 100.00 %
