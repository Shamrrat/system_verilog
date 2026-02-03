module basic #(parameter WIDTH=12)() ;
  logic [WIDTH-1:0]a;
  initial begin
    a='b1;
    $display("a=%b",a);
    a='b0;
    $display("a=%b",a);
    a='bx;
    $display("a=%b",a);
  end
endmodule


// OUTPUT
a=111111111111
a=000000000000
a=xxxxxxxxxxxx
