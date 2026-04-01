module data_validator (
    input  logic        clk,
    input  logic        rst_n,
    input  logic        valid_in,
    input  logic [31:0] data_in
);

  always_ff @(posedge clk) begin
    if (rst_n && valid_in) begin
      assert (data_in >= 0 && data_in <= 255)
        else $error("Data out of range: %0d", data_in);
    end
  end

endmodule

module tb_top;
  logic clk = 0;
  logic rst_n = 0;
  logic valid_in = 0;
  logic [31:0] data_in;

  always #5 clk = ~clk;

  data_validator dut (.*);

  initial begin
    #10 rst_n = 1;
    valid_in=1;
    
    repeat(10)@(posedge clk)
      begin
        data_in=$urandom_range(288,500);
      end
   
    
    #20 $finish;
  end

endmodule


// output 
 Error: testbench.sv (11): Data out of range: 340
# KERNEL: Error: testbench.sv (11): Data out of range: 328
# KERNEL: Error: testbench.sv (11): Data out of range: 435
# KERNEL: Error: testbench.sv (11): Data out of range: 334
# KERNEL: Error: testbench.sv (11): Data out of range: 359
# KERNEL: Error: testbench.sv (11): Data out of range: 456
# KERNEL: Error: testbench.sv (11): Data out of range: 465
# KERNEL: Error: testbench.sv (11): Data out of range: 446
# KERNEL: Error: testbench.sv (11): Data out of range: 475
# KERNEL: Error: testbench.sv (11): Data out of range: 290
