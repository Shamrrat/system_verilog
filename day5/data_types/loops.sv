module loops;
  int i;
  int arr[];
  
  
  initial
    begin
      // for loop
     for(i=1;i<5;i++)
        $display("loop runs %0d time",i);
      
      arr=new[5];
      // repeat
      repeat(3) begin
        // foreach 
        foreach(arr[i]) 
        arr[i]=$urandom_range(10,20);
        
        $display("array elements=%p",arr);
      end
      
       i=0;
      // while loop
       while(1)begin
       i= i+1;
        $display("integer increasing= %0d",i);
      if(i==6)
        break;
      end
      
      i=0;
      // do while
      do begin
      
        i++;
        if (i==3)
          continue;
        $display(" incresing value=%0d",i);
        
       
      end
      while (i<10);
          
          
    end
endmodule


//OUTPUT
//FOR LOOP
loop runs 1 time
loop runs 2 time
loop runs 3 time
loop runs 4 time
//REPEAT AND FOREACH
array elements='{15, 15, 16, 16, 15}
array elements='{16, 12, 10, 19, 13}
array elements='{14, 17, 11, 14, 20}
//WHILE
integer increasing= 1
integer increasing= 2
integer increasing= 3
integer increasing= 4
integer increasing= 5
integer increasing= 6
//DO WHILE
 incresing value=1
 incresing value=2
 incresing value=4
 incresing value=5
 incresing value=6
 incresing value=7
 incresing value=8
 incresing value=9
 incresing value=10

