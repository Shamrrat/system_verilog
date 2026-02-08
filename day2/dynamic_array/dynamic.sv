module tb;

  int dyn_arr[];

  initial begin
    dyn_arr = new[5];

    foreach (dyn_arr[i])
      dyn_arr[i] = i * 10;

    foreach (dyn_arr[i])
      $display("dyn_arr[%0d] = %0d", i, dyn_arr[i]);

    dyn_arr = new[8](dyn_arr);

    foreach (dyn_arr[i])
      if (i >= 5)
        dyn_arr[i] = i * 10;

    foreach (dyn_arr[i])
      $display("dyn_arr[%0d] = %0d", i, dyn_arr[i]);
  end

endmodule
