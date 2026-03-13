module tb;

  bit [1:0] a;
  bit [1:0] b;

  covergroup cg;

    coverpoint a {
      bins a0 = {0};
      bins a1 = {1};
      bins a2 = {2};
      bins a3 = {3};
    }

    coverpoint b {
      bins b0 = {0};
      bins b1 = {1};
      bins b2 = {2};
      bins b3 = {3};
    }

    cross a,b;   // cross coverage

  endgroup

  cg c1 = new();

  initial begin
    repeat(15) begin
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);

      $display("Generated values  a = %0d , b = %0d", a, b);

      c1.sample();

      $display("Coverage = %0.2f %%", c1.get_coverage());

      #10;
    end

    $display("Final Coverage = %0.2f %%", c1.get_coverage());

  end

endmodule

//output
Generated values  a = 2 , b = 0
Coverage = 18.75 %
Generated values  a = 1 , b = 2
Coverage = 37.50 %
Generated values  a = 3 , b = 3
Coverage = 56.25 %
Generated values  a = 0 , b = 3
Coverage = 66.67 %
Generated values  a = 2 , b = 3
Coverage = 68.75 %
Generated values  a = 1 , b = 2
Coverage = 68.75 %
Generated values  a = 2 , b = 1
Coverage = 79.17 %
Generated values  a = 1 , b = 2
Coverage = 79.17 %
Generated values  a = 2 , b = 1
Coverage = 79.17 %
Generated values  a = 0 , b = 2
Coverage = 81.25 %
Generated values  a = 0 , b = 3
Coverage = 81.25 %
Generated values  a = 3 , b = 0
Coverage = 83.33 %
Generated values  a = 3 , b = 0
Coverage = 83.33 %
Generated values  a = 1 , b = 0
Coverage = 85.42 %
Generated values  a = 2 , b = 1
Coverage = 85.42 %
Final Coverage = 85.42 %
