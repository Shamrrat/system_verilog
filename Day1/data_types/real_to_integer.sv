module data_types_real_to_integer;
  real freq1,freq2,product;
  int a,b,c;
  
  
  initial begin
    freq1=3.6e3;
    freq2=7.2e-4;
    product=freq1*freq2;
    $display("product=%f",product);
    
    // real to int data type
    a=product; //direct assignment
    c=$rtoi(product);
    $display("a=%p b=%p c=%p",a,int'(product),c);// csting
  end
endmodule

//OUTPUT
product=2.592000
a=3 b=3 c=2
