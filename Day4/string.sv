module str;
  string char,char2,substr;
  int i;
  
  initial 
    begin
      char="systemverilog is easy";
      char2="sastemverilog";
      $display("length of string=%0d",char.len());
      
      $display("get character=%c",char.getc(1));
      char.putc(1,"a");
      $display(" after inserting a  character=%s",char);
      char= char.toupper();
      $display(" uppercase character=%s",char);
      char=char.tolower();
      $display(" lowercase character=%s",char);
      substr=char.substr(0,12);
      $display("substr of char =%s",substr);
      i=char.atoi();
      $display("string to integer=%0d",i);
     
     end
endmodule

OUTPUT
length of string=21
get character=y
 after inserting a  character=sastemverilog is easy
 uppercase character=SASTEMVERILOG IS EASY
 lowercase character=sastemverilog is easy
substr of char =sastemverilog
string to integer=0
