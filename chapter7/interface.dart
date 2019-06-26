void main() {
  var student = new Student();
}

class Person {
  String name;

  int get age => 18;

  void run() {
    print("Person run...");
  }
}

class Student implements Person {
  @override
  String name;

  @override
  int get age => 15;

  @override
  void run() {
    print("student");
  }
}
