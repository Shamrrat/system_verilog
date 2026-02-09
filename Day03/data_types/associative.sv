module associative;
  int array[string];
  
  initial 
    begin
      array["ajay"]=32'd99;
      array["rahul"]=32'd98;
      array["neha"]=32'd97;
     
      // display using loop
      foreach (array[i])  
        $display("array{%s}=%0d",i,array[i]);
      
      if(array.exists("ajay"))
        $display("ajay exists");
      else
        $display("ajay not exist");
    end 
endmodule
      
      

OUTPUT

 array{ajay}=99
 array{neha}=97
 array{rahul}=98
 ajay exists
