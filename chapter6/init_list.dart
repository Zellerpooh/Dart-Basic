void main() {}

class Person {
  String name;
  int age;

  final String gender;

  Person(this.name, this.age, this.gender);

  Person.withMap(Map map): age = map["age"], gender = map["gender"] {
    this.name = map["name"];
  }

  void work() {
    print("Work...");
  }


}
