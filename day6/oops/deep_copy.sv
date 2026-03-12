class Header;
   int id;

   function new(int id);
      this.id = id;
   endfunction
endclass


class Packet;
   int addr;
   int data;
   Header hdr;

   function new(int addr, int data, int id);
      this.addr = addr;
      this.data = data;
      hdr = new(id);
   endfunction

   // Deep copy function
   function void copy(Packet p);
      this.addr = p.addr;
      this.data = p.data;

      // Create new header object (deep copy)
      this.hdr = new(p.hdr.id);
   endfunction

   function void display(string name);
      $display("[%s] addr=0x%0h data=0x%0h id=%0d",
               name, addr, data, hdr.id);
   endfunction
endclass


module tb;
   Packet p1,p2;

   initial begin

      // Create original packet
      p1 = new(32'hface_cafe, 32'h1234_5678, 32'h1a);
      p1.display("p1");

      // Create second packet
      p2 = new(1,2,3);
      p2.copy(p1);
      p2.display("p2");

      // Modify p1
      p1.addr = 32'habcd_ef12;
      p1.data = 32'h5a5a_5a5a;
      p1.hdr.id = 32'h11;
      p1.display("p1");

      // p2 remains unchanged
      p2.display("p2");

   end
endmodule

//output
# [p1] addr=0xfacecafe data=0x12345678 id=26
# [p2] addr=0xfacecafe data=0x12345678 id=26
# [p1] addr=0xabcdef12 data=0x5a5a5a5a id=17
# [p2] addr=0xfacecafe data=0x12345678 id=26
