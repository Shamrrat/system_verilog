module static_array;
  int a[5];   

  initial begin
    foreach (a[i])
      a[i] = i * 10;

    foreach (a[i])
      $display("a[%0d] = %0d", i, a[i]);
  end
endmodule
