// Wap to create static variable and call it from two different classes.

class Student1 extends Student {
  void display() {
    Student.name = "From Student 1";
    print("Name : ${Student.name}");
  }
}

class Student2 extends Student {
  void display() {
    Student.name = "From Student 2";
    print("Name : ${Student.name}");
  }
}

void main() {
  Student1 s1 = Student1();
  Student2 s2 = Student2();
  s1.display();
  s2.display();
}

class Student {
  static String name = "Neel";
}
