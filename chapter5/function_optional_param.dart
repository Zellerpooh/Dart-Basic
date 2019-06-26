void main() {
  printPerson("张三");
  printPerson("张三", age: 20);
  printPerson("张三", age: 20, gender: "Male");

  printPerson2("李四");
  printPerson2("李四", 18);
  printPerson2("李四", 18, "Female");
//  printPerson2("李四", "Female");

  printPerson3("王五");
  printPerson3("王五", age: 20);
}

printPerson(String name, {int age, String gender}) {
  print("name=$name,age=$age,gender=$gender");
}

printPerson2(String name, [int age, String gender]) {
  print("name=$name,age=$age,gender=$gender");
}

printPerson3(String name, {int age = 30, String gender = "Female"}) {
  print("name=$name,age=$age,gender=$gender");
}
