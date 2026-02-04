module assoc_array;
  int score[string];

  initial begin
    score["Ajay"] = 95;
    score["VLSI"] = 100;

    foreach (score[i])
      $display("%s : %0d", i, score[i]);
  end
endmodule
