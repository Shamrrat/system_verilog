module test;
  logic clk;
  logic rst;
  logic [3:0] counter;

  always @(posedge clk) begin
    if (rst)
      assert(counter == 0)
        else $error("Counter not zero during reset!");
  end
endmodule
