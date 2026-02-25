class counter_example;
 
  static int count = 0;   // shared variable


  task increment(string name);
  int temp;
  temp = count;     // read
  #1;               // delay creates overlap
  temp = temp + 1;  // modify
  count = temp;  //write
    
  $display("%s count=%0d", name, count);
endtask
endclass

module test;
  counter_example a1,a2,a3,a4;

  
  
  initial
    begin
     
      a1=new();
      a2=new();
      a3=new();
      a4=new();
      fork
      a1.increment("a1");
      a2.increment("a2");
      a3.increment("a3");
      a4.increment("a4");
      join
    end 

  
  //OUTPUT
# a1 count=1
# a2 count=1
# a3 count=1
# a4 count=1
