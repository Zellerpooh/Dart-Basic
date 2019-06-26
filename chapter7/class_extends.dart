import 'person.dart';

void main() {
  var student = new Student();
  student.study();

  student.name = "Tom";
  student.age = 16;

  print(student.isAdult);
  student.run();
}

class Student extends Person {
  void study() {
    print("Student study...");
  }

  @override
  bool get isAdult => age > 15;

  void run() {
    print("Student run ...");
  }
}
