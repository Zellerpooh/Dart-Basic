void main() {
  var person = new Person("Tom", 20, "Female");

//  new Person.withAge(20);

  const constPerson = const ConstPerson("Bob", 20, "Male");
  constPerson.work();
}

class Person {
  String name;
  int age;

  final String gender;

//  Person(String name, int age) {
//    this.name = name;
//    this.age = age;
//  }

  //语法糖形式  在构造方法执行前对属性进行赋值的，所以可以对final属性进行赋值
  Person(this.name, this.age, this.gender) {
    print(gender);
  }

//  Person.withName(String name) {
//    this.name = name;
//  }

//  Person.withAge(this.age);

  void work() {
    print("Work...");
  }
}

class ConstPerson {
  final String name;
  final int age;
  final String gender;

  const ConstPerson(this.name, this.age, this.gender);

  void work() {
    print("Work...");
  }
}

class Logger {
  final String name;
  static final Map<String, Logger> _cache = <String, Logger>{};

  //工厂构造方法
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name){}

  void log(String msg) {
    print(msg);
  }
}
