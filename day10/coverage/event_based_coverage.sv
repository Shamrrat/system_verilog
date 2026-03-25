
class bus_transaction;
  rand bit [1:0] addr;
  rand bit [1:0] mode;

  function void display();
    $display("ADDR = %0d, MODE = %0d", addr, mode);
  endfunction
endclass



class coverage_collector;

  bus_transaction pkt;

  
  covergroup cg_bus @(sample_trigger);

    cp_addr: coverpoint pkt.addr {
      bins low  = {0,1};
      bins high = {2,3};
    }

    cp_mode: coverpoint pkt.mode {
      bins mode0 = {0};
      bins mode1 = {1};
      bins mode2 = {2};
      bins mode3 = {3};
    }

    cross_addr_mode: cross cp_addr, cp_mode;

  endgroup

  event sample_trigger;

  function new();
    cg_bus = new();
  endfunction

endclass



module test;

  bus_transaction tr;
  coverage_collector cov;

  initial begin
    cov = new();

    repeat (10) begin
      tr = new();

      if (!tr.randomize())
        $display("Randomization failed");

      cov.pkt = tr;
     tr.display();
      #1;
      -> cov.sample_trigger;
    end

    $display("Coverage = %0.2f %%", cov.cg_bus.get_inst_coverage());
  end

endmodule

//output
# KERNEL: ADDR = 1, MODE = 2
# KERNEL: ADDR = 1, MODE = 0
# KERNEL: ADDR = 0, MODE = 3
# KERNEL: ADDR = 2, MODE = 1
# KERNEL: ADDR = 0, MODE = 2
# KERNEL: ADDR = 1, MODE = 3
# KERNEL: ADDR = 2, MODE = 2
# KERNEL: ADDR = 2, MODE = 1
# KERNEL: ADDR = 3, MODE = 1
# KERNEL: Coverage = 87.50 %
