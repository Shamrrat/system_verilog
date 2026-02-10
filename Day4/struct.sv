module struct_data_type;
  
  typedef struct packed  {bit b; byte b1;}packet; //packed 
  packet pkt;
  
  typedef struct {bit b;string s;real r;} mixed_signals; //unpacked
  mixed_signals s;
  mixed_signals arr[];
  
  typedef struct {int i; mixed_signals m;} nested_s; //nested
  nested_s n;
  
  
  
  initial
    begin
      pkt=9'b101010101;
      $display("packed struct data=%p",pkt);
      
      s='{1,"working",3.14};
      $display("unpacked struct data =%p",s);
      
      
      n='{32,'{0,"nested signal",9.8}};
      $display("struct data =%p",n);
      
      arr=new[3]; //array of struct
      arr[0]='{0,"first element",1.23};
      arr[1]='{1,"second element",1.343};
      arr[2]='{1,"three element",3.234};
      foreach(arr[i])
        $display("arr[%0d]=%p",i,arr[i]);
      
    end 
endmodule


OUTPUT
packed struct data='{b:'h1, b1:'h55}
unpacked struct data ='{b:'h1, s:"working", r:3.14}
struct data ='{i:32, m:'{b:'h0, s:"nested signal", r:9.800000000000001}}
arr[0]='{b:'h0, s:"first element", r:1.23}
arr[1]='{b:'h1, s:"second element", r:1.343}
arr[2]='{b:'h1, s:"three element", r:3.234}
