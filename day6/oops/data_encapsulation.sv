class Parent;

  // Public (default) = accessible everywhere
  int public_var;

  // Protected = accessible in this class + child class
  protected int protected_var;

  // Local = accessible only inside this class
  local int local_var;

  function new();
    public_var    = 10;
    protected_var = 20;
    local_var     = 30;
  endfunction

  function void display_parent();
    $display("Inside Parent:");
    $display("public_var    = %0d", public_var);
    $display("protected_var = %0d", protected_var);
    $display("local_var     = %0d", local_var);
  endfunction

endclass



class Child extends Parent;

  function void display_child();
    $display("Inside Child:");
    $display("public_var    = %0d", public_var);     
    $display("protected_var = %0d", protected_var);  
    // $display("local_var = %0d", local_var);       //  NOT allowed==ERROR
  endfunction

endclass

Parent p;
Child  c;

initial begin

  p = new();
  c = new();

  p.display_parent();
  c.display_child();

  $display("Outside class:");
  $display("public_var = %0d", p.public_var);       
  // $display("protected_var = %0d", p.protected_var); //  NOT allowed==ERROR
  // $display("local_var = %0d", p.local_var);         //  NOT allowed==ERROR

end
