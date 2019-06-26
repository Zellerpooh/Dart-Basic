void main() {
  Person person;
  // ?. 为空的话就不往下执行了
  person?.work();

  var person2;
  person2 = "";
  person2 = new Person();

  (person2 as Person).work();

  if (person2 is Person) {
    person2.work();
  }

  new Person()
    ..name = "Tom"
    ..age = 20
    ..work();
}

class Person {
  String name;
  int age;

  void work() {
    print("Work...$name,$age");
  }
}
