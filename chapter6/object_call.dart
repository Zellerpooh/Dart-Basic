void main() {
  var person = new Person();
//  person.name = "Tom";
//  person.age = 20;

//  person.work();

  person("Tom", 18);
}

class Person {
  String name;
  int age;

  void call(String name, int age) {
    print("Name is $name,Age is $age");
  }
}
