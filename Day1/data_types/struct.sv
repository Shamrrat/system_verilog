typedef struct {
  int id;
  string name;
} student_t;

module struct_example;
  student_t s;

  initial begin
    s = '{101, "Ajay"};
    $display("ID=%0d Name=%s", s.id, s.name);
  end
endmodule
