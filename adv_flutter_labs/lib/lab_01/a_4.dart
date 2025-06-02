abstract class Student {
  void display();
  // print("Name : Neel");
  // print("Roll No : 331");
  // print("Batch : B2");
}

class Demo extends Student {
  @override
  void display() {
    print("Hello from Demo class");
    // super.display();
  }
}

void main() {
  Demo student = Demo();
  student.display();
}
