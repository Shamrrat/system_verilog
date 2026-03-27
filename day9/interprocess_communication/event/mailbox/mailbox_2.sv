module mail_box;
  
  mailbox #(int) mbx;
  
  initial 
    begin
      
      mbx=new(3);
      
      fork
        producer();
        consumer();
      join_none
      #4; $finish();
    end
  task producer();
    int data;
    //for (int i=1;i<=5;i++)
    forever
      begin
        #1;
        data=$urandom_range(1,67);
        $display("[%0t]proucer data=%0d",$time,data);
        mbx.put(data);
      end
  endtask
  
  task consumer();
    int rec_data;
    
    forever begin
      
      mbx.get(rec_data);
      $display("[%0t]consumer data=%0d",$time,rec_data);
      if(rec_data==10)
   break;
    end
      endtask
      endmodule
//output
[1]proucer data=54
[1]consumer data=54
[2]proucer data=47
[2]consumer data=47
[3]proucer data=30
[3]consumer data=30
[4]proucer data=32
[4]consumer data=32
[5]proucer data=17
[5]consumer data=17
[6]proucer data=49
[6]consumer data=49
[7]proucer data=2
[7]consumer data=2
[8]proucer data=42
[8]consumer data=42
[9]proucer data=67
[9]consumer data=67
[10]proucer data=46
[10]consumer data=46
[11]proucer data=51
[11]consumer data=51
[12]proucer data=27
[12]consumer data=27
[13]proucer data=42
[13]consumer data=42
[14]proucer data=35
[14]consumer data=35
[15]proucer data=10
[15]consumer data=10
[16]proucer data=33
[17]proucer data=34
[18]proucer data=49
[19]proucer data=35
      
      
      
