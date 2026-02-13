class parent;
  int id,data;
  
  function new(int id,int data); // when arguments and data member has same variable name
   this.id=id;
   this.data=data;
  endfunction
  
  function void display();
    $display("id=%0d  data=%0d",id,data);
  endfunction
  endclass

module test;
    parent c;
  
  initial begin
   c=new(2,45);
    c.display();
     end
endmodule

//OUTPUT
id=2  data=45

