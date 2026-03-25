module covgrp;
  bit [3:0]a;
  bit [3:0]b;  
  covergroup cvrgrp;
    c1:coverpoint a;
    c2:coverpoint b;
    cross a,b;
  endgroup
   cvrgrp c1=new();
  
  initial begin
   
    repeat(100)begin
      a=$random;
      b=$random;
      c1.sample();
      $display("a= %0d b=%0d coverare percentage=%0d",a,b,c1.get_inst_coverage());
    end
  end
endmodule
      

//output
# KERNEL: a= 4 b=1 coverare percentage=5
# KERNEL: a= 9 b=3 coverare percentage=10
# KERNEL: a= 13 b=13 coverare percentage=15
# KERNEL: a= 5 b=2 coverare percentage=20
# KERNEL: a= 1 b=13 coverare percentage=23
# KERNEL: a= 6 b=13 coverare percentage=25
# KERNEL: a= 13 b=12 coverare percentage=28
# KERNEL: a= 9 b=6 coverare percentage=31
# KERNEL: a= 5 b=10 coverare percentage=33
# KERNEL: a= 5 b=7 coverare percentage=36
# KERNEL: a= 2 b=15 coverare percentage=41
# KERNEL: a= 2 b=14 coverare percentage=43
# KERNEL: a= 8 b=5 coverare percentage=49
# KERNEL: a= 12 b=13 coverare percentage=51
# KERNEL: a= 13 b=5 coverare percentage=51
# KERNEL: a= 3 b=10 coverare percentage=54
# KERNEL: a= 0 b=0 coverare percentage=59
# KERNEL: a= 10 b=13 coverare percentage=61
# KERNEL: a= 6 b=3 coverare percentage=61
# KERNEL: a= 13 b=3 coverare percentage=62
# KERNEL: a= 11 b=5 coverare percentage=64
# KERNEL: a= 2 b=14 coverare percentage=64
# KERNEL: a= 13 b=15 coverare percentage=64
# KERNEL: a= 3 b=10 coverare percentage=64
# KERNEL: a= 10 b=12 coverare percentage=64
# KERNEL: a= 2 b=10 coverare percentage=64
# KERNEL: a= 1 b=8 coverare percentage=67
# KERNEL: a= 8 b=9 coverare percentage=70
# KERNEL: a= 11 b=6 coverare percentage=70
# KERNEL: a= 6 b=14 coverare percentage=70
# KERNEL: a= 12 b=10 coverare percentage=70
# KERNEL: a= 11 b=1 coverare percentage=70
# KERNEL: a= 5 b=15 coverare percentage=70
# KERNEL: a= 11 b=10 coverare percentage=70
# KERNEL: a= 14 b=5 coverare percentage=73
# KERNEL: a= 1 b=9 coverare percentage=73
# KERNEL: a= 2 b=12 coverare percentage=73
# KERNEL: a= 15 b=15 coverare percentage=75
# KERNEL: a= 8 b=7 coverare percentage=75
# KERNEL: a= 15 b=12 coverare percentage=75
# KERNEL: a= 11 b=9 coverare percentage=76
# KERNEL: a= 9 b=0 coverare percentage=76
# KERNEL: a= 7 b=1 coverare percentage=78
# KERNEL: a= 6 b=12 coverare percentage=78
# KERNEL: a= 2 b=8 coverare percentage=78
# KERNEL: a= 7 b=13 coverare percentage=78
# KERNEL: a= 2 b=14 coverare percentage=78
# KERNEL: a= 13 b=9 coverare percentage=79
# KERNEL: a= 15 b=3 coverare percentage=79
# KERNEL: a= 5 b=8 coverare percentage=79
# KERNEL: a= 11 b=9 coverare percentage=79
# KERNEL: a= 15 b=10 coverare percentage=79
# KERNEL: a= 8 b=6 coverare percentage=79
# KERNEL: a= 14 b=12 coverare percentage=79
# KERNEL: a= 10 b=6 coverare percentage=79
# KERNEL: a= 3 b=3 coverare percentage=79
# KERNEL: a= 15 b=3 coverare percentage=79
# KERNEL: a= 15 b=4 coverare percentage=82
# KERNEL: a= 7 b=11 coverare percentage=84
# KERNEL: a= 6 b=10 coverare percentage=84
# KERNEL: a= 9 b=13 coverare percentage=84
# KERNEL: a= 10 b=5 coverare percentage=84
# KERNEL: a= 5 b=15 coverare percentage=84
# KERNEL: a= 9 b=4 coverare percentage=85
# KERNEL: a= 0 b=10 coverare percentage=85
# KERNEL: a= 11 b=14 coverare percentage=85
# KERNEL: a= 12 b=10 coverare percentage=85
# KERNEL: a= 13 b=3 coverare percentage=85
# KERNEL: a= 6 b=14 coverare percentage=85
# KERNEL: a= 7 b=10 coverare percentage=85
# KERNEL: a= 6 b=8 coverare percentage=85
# KERNEL: a= 9 b=8 coverare percentage=85
# KERNEL: a= 4 b=3 coverare percentage=85
# KERNEL: a= 4 b=9 coverare percentage=85
# KERNEL: a= 11 b=13 coverare percentage=85
# KERNEL: a= 9 b=13 coverare percentage=85
# KERNEL: a= 6 b=10 coverare percentage=85
# KERNEL: a= 6 b=5 coverare percentage=85
# KERNEL: a= 6 b=4 coverare percentage=85
# KERNEL: a= 7 b=9 coverare percentage=85
# KERNEL: a= 4 b=8 coverare percentage=85
# KERNEL: a= 8 b=13 coverare percentage=86
# KERNEL: a= 7 b=14 coverare percentage=86
