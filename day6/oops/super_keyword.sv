class parent;
 function void display();
    $display("parent display");
  endfunction
endclass

class child extends parent;
   function void display();
    super.display();
    $display("child display");
  endfunction
endclass

module test;
 child c;
  initial begin
      c=new();
    c.display();
    end
endmodule

//OUTPUT
parent display
child display
