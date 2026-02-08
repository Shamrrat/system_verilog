module tb;

  int dyn_arr[];

  initial begin
    dyn_arr = new[4];

    dyn_arr[0] = 5;
    dyn_arr[1] = 15;
    dyn_arr[2] = 25;
    dyn_arr[3] = 35;

    foreach (dyn_arr[i])
      $display("dyn_arr[%0d] = %0d", i, dyn_arr[i]);

    dyn_arr = new[6](dyn_arr);

    dyn_arr[4] = 45;
    dyn_arr[5] = 55;

    foreach (dyn_arr[i])
      $display("dyn_arr[%0d] = %0d", i, dyn_arr[i]);
  end

endmodule
