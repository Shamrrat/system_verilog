module sv_data_type;
  logic [15:0] a;
   bit  b;
  
  initial begin
    $display("Default values of a=%b and b=%b",a,b); // Default values
    
    a='1; // initializinf all bits to 1
    
    $display("Default values of a=%b and  b=%b",a,b);
    
    b=1'bx;  // not possible default value=0 (2 state)
    
    $display("Default values of a=%b and b=%b",a,b);
    
  end
endmodule

OUTPUT
Default values of a=xxxxxxxxxxxxxxxx and b=0
Default values of a=1111111111111111 and  b=0
Default values of a=1111111111111111 and b=0
