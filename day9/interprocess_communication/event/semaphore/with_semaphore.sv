class counter_example;
 semaphore sem;
  static int count = 0;   // shared variable

  function new(semaphore sem);
     this.sem = sem;
   endfunction

  task increment(string name);
  int temp;
    sem.get();
  temp = count;     // read
  #1;               // delay creates overlap
  temp = temp + 1;  // modify
  count = temp;  
    sem.put();// write
  $display("%s count=%0d", name, count);
endtask
endclass

module test;
  counter_example a1,a2,a3,a4;
  semaphore sem;
  
  
  initial
    begin
      sem=new(1);
      a1=new(sem);
      a2=new(sem);
      a3=new(sem);
      a4=new(sem);
      fork
      a1.increment("a1");
      a2.increment("a2");
      a3.increment("a3");
      a4.increment("a4");
      join
    end 
endmodule

//OUTPUT
# a1 count=1
# a2 count=2
# a3 count=3
# a4 count=4
