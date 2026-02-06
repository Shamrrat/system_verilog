module unpacked_array;
  logic [7:0] mem [0:15]; 

  initial begin
    mem[0] = 8'h11;
    mem[1] = 8'h22;

    $display("mem[0]=%h mem[1]=%h", mem[0], mem[1]);
  end
endmodule
