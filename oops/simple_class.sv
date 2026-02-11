class packet;
  int a;
  string str;
  
  function new(int a,string str);
    this.a=a;
    this.str=str;
  endfunction
  
  function void display();
    $display("a=%0d  string=%s",a,str);
  endfunction
  
endclass

module test;
  packet pkt;
  
  initial 
    begin
      pkt=new(5,"system verilog");
      
      pkt.display();
    end
endmodule


//OUTPUT
a=5  string=system verilog
