module enum_data_types;
 enum {RED,YELLOW,GREEN}colour;
  enum {ORANGE[5]}fruit;

  
  
  initial
    begin
      // ENUM built-in funcion
    
      $display("number of elements in enum(colour)=%0d",colour.num());
      colour=YELLOW;
      $display("name of the element=%s",colour.name());
      colour=colour.next();
      $display("next element of colour[%0d]:%s",colour.next(),colour.name());
      colour=colour.prev();
      $display("previous element of colour[%0d]:%s",colour.prev(),colour.name());
      colour=colour.first();
      $display("first element of colour[%0d]:%s",colour.first(),colour.name());
      colour=colour.last();
      $display("last element of colour[%0d]:%s",colour.last(),colour.name());
      
      
      $display("number of elements in enum(fruit)=%0d",fruit.num());
     // $display("munber of elements in enum=%0d",fruit.num());
   
        for (fruit = fruit.first();fruit.first()<=fruit.last() ; fruit = fruit.next()) begin
          $display("colour = %s (%0d)", fruit.name(), fruit);
          if (fruit == fruit.last())
        break;
    end
      
    end
endmodule
  
  
OUTPUT
number of elements in enum(colour)=3
name of the element=YELLOW
next element of colour[0]:GREEN
previous element of colour[0]:YELLOW
first element of colour[0]:RED
last element of colour[2]:GREEN
number of elements in enum(fruit)=5
colour = ORANGE0 (0)
colour = ORANGE1 (1)
colour = ORANGE2 (2)
colour = ORANGE3 (3)
colour = ORANGE4 (4)
