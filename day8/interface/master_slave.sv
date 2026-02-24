//INTERFACE
interface intf(input logic clk);
  logic rst;
  logic req;
  logic gnt;
  logic [7:0]data;
  
  modport m (input gnt,clk, output req,data);
  modport s (input req,data,clk, output gnt);
endinterface

//MASTER
module master(intf.m mas);
  
  always@(posedge mas.clk) 
    begin
      mas.req=$random;
      $display("request=%b",mas.req);
      
    if(mas.gnt)
      begin
        mas.data=$random;
        $display("grand=%b\ndata transferred=%0d",mas.gnt,mas.data);
  end
  else begin
    mas.data=0;
  end
    end
endmodule


//SLAVE
module slave(intf.s sla);
  
  always@(posedge sla.clk) begin
    if(sla.req)
      sla.gnt=1;
  else
    sla.gnt=0;
 
    $display("data received=%0d ",sla.data);
  end
endmodule

//TOP MODULE
module top;
  logic clk;
  intf mas(clk);
  
  
  initial begin
    clk=0; end
    always begin #5;  clk=~clk; end
    
  master uut(mas.m);
  slave uut1(mas.s);
  
    
    initial #50 $finish;
endmodule

//OUTPUT
request=0
data received=0 
request=1
data received=0 
request=1
grand=1
data transferred=99
data received=99 
request=1
grand=1
data transferred=141
data received=141 
request=1
grand=1
data transferred=18
data received=18     
  
  
