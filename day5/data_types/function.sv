class func;
  logic[7:0] a,b,sum;
  
  function new (logic[7:0] a,b);
    this.a=a;
    this.b=b;
  endfunction
  
  function void add();
    sum=a+b;
    $display("a=%0d  b=%0d  sum=%0d",a,b,sum);
  endfunction
  endclass

module function_test;
    func p;
  initial
    begin
      p=new(3,4);
      p.add();
    end
endmodule

    
//  OUTPUT
//  a=3  b=4  sum=7
