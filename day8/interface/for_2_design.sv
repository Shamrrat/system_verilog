// INTERFACE
interface intf;
  logic clk;
  logic [11:0] temp;
  logic fan_on;
endinterface

// TEMP SENSOR
module temp_sen(intf fan);
  always @(posedge fan.clk) begin
    fan.temp <= $urandom_range(25,35);  // one reading per cycle
    $display("temperature=%0d", fan.temp);
  end
endmodule

// FAN CONTROLLER
module fan_con(intf fan);
  parameter int threshold = 28;  // fixed threshold
  always @(posedge fan.clk) begin
    if (fan.temp > threshold) begin
      fan.fan_on <= 1;
      $display("temp is high fan is on");
    end else begin
      fan.fan_on <= 0;
      $display("temp is low fan is off");
    end
  end
endmodule

// TOP MODULE
module top;
  intf fan();  // instantiate interface

  initial fan.clk = 0;
  always #5 fan.clk = ~fan.clk;  // clock generator

  temp_sen uu1(fan);
  fan_con uu2(fan);
  initial begin
    #50; $finish();
  end
endmodule

//OUTPUT
temperature=x
temp is low fan is off
temperature=31
temp is high fan is on
temperature=31
temp is high fan is on
temperature=32
temp is high fan is on
temperature=29
temp is high fan is on
