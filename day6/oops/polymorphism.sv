class Transaction;

  int id;

  function new(int id);
    this.id = id;
  endfunction

  // Virtual method (REQUIRED for polymorphism)
  virtual function void execute();
    $display("Base Transaction, id = %0d", id);
  endfunction

endclass



class ReadTransaction extends Transaction;

  function new(int id);
    super.new(id);
  endfunction

  function void execute();
    $display("Read Transaction, id = %0d", id);
  endfunction

endclass



class WriteTransaction extends Transaction;

  function new(int id);
    super.new(id);
  endfunction

  function void execute();
    $display("Write Transaction, id = %0d", id);
  endfunction

endclass



module test;

  Transaction t; 
  ReadTransaction rt;
  WriteTransaction wt;// Base class handle

  initial begin

    rt = new(1);
    t=rt;
    t.execute();   // Calls ReadTransaction version

    wt = new(2);
    t=wt;
    t.execute();   // Calls WriteTransaction version

  end

endmodule


// output
Read Transaction, id = 1
Write Transaction, id = 2
