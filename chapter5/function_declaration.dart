void main() {
  print(getPerson("张三", 18));
  printPerson("李四", 30);
}

//String getPerson(String name, int age) {
//  return "name=$name,age=$age";
//}

//箭头表达式
//getPerson(name, age) => "name=$name,age=$age";
int gender = 1;

getPerson(name, age) => gender == 1 ? "name=$name,age=$age" : "Test";

printPerson(name, age) {
  print("name=$name,age=$age");
}
