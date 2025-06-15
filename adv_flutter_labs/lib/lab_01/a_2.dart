class Student {
  void display() {
    print("Name : Neel");
    print("Roll No : 331");
    print("Batch : B2");
  }
}

class Demo extends Student {
  void display() {
    print("Hello from Demo class");
  }
}

void main() {
  Demo student = Demo();
  student.display();
}
