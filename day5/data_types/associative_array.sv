module associative_array;
  string array[int];
  int i;
  
  initial
    begin
      array[2]="ajay";
      array[4]="umesh";
      array[3]="guru";
      array[8]="arun";
      array[29]="siva";
      array[11]="sham";
      
      $display("array elements=%p",array);
      
      $display("total space of it=%0d",array.size());
     
      array.first(i);
      $display("first  index=%0d",i);
      array.last(i);
      $display("last array=%0d",i);
      array.prev(i);
      $display("previous array=%0d",i);
      array.next(i);
      $display("next array=%0d",i);
     
      if(array.exists(2))
        $display("array index (2) exist");
      else
        $display("not exist");
      
      array.delete(11);
      $display("array elements after deleting index 11=%p",array);
      
      array.delete();
      $display("array elements after delete=%p",array);
      
    end
endmodule 



OUTPUT
#array elements='{2:"ajay", 3:"guru", 4:"umesh", 8:"arun", 11:"sham", 29:"siva" }
# total space of it=6
# first  index=2
# last array=29
# previous array=11
# next array=29
# array index (2) exist
# array elements after deleting index 11='{2:"ajay", 3:"guru", 4:"umesh", 8:"arun", 29:"siva" }
# array elements after delete='{ }
