class transaction;
  int id;
 
  function new(int id);
    this.id=id;
    $display("base constructor called");
   endfunction
  
endclass

class write_transaction extends transaction;
  int data;
  
  
  function new (int i,int d);
    super.new(i);
    data=d;
    $display("derived constructor called");
  endfunction
  
  function void display();
    $display("id=%0d  data=%0d",id,data);
  endfunction
  
endclass

module packet;
  
  write_transaction wt;
  
  initial
    begin
      wt=new(1,234);
      wt.display();
    end
endmodule
  

  //output
base constructor called
derived constructor called
id=1  data=234
  
