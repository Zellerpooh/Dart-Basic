void main() {
  var student = new Student("Tom","Male");
  print(student.name);
}

class Person {
  String name;

  Person(this.name);

  Person.withName(this.name);
}

class Student extends Person {
  int age;

  final String gender;

  //如果有初始化列表在父类的构造函数之前执行
  Student(String name, String g)
      : gender = g,
        super.withName(name);
}
