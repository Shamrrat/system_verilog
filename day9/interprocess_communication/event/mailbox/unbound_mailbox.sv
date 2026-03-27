module unbounded_generic;
  mailbox mbx;

  initial begin
    mbx = new(); 

    for (int i = 1; i <= 5; i++) begin
      mbx.put(i * 10);
      $display("[%0t] Put %0d (Mailbox count: %0d)", $time, i*10, mbx.num());
    end

    $display("--- Starting Retrieval ---");

    while (mbx.num() > 0) begin
      int val;
      mbx.get(val);
      $display("[%0t] Retrieved: %0d", $time, val);
    end
  end
endmodule

//output
[0] Put 10 (Mailbox count: 1)
[0] Put 20 (Mailbox count: 2)
[0] Put 30 (Mailbox count: 3)
[0] Put 40 (Mailbox count: 4)
[0] Put 50 (Mailbox count: 5)
--- Starting Retrieval ---
[0] Retrieved: 10
[0] Retrieved: 20
[0] Retrieved: 30
[0] Retrieved: 40
[0] Retrieved: 50
