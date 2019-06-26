void main() {
//  var d = new D();
//  d.a();
//  d.b();
//  d.c();
}

abstract class Engine {
  void work();
}

class OilEngine implements Engine {
  @override
  void work() {
    print("Work with oil...");
  }
}

class ElectricEngine implements Engine {
  @override
  void work() {
    print("Work with electric...");
  }
}

class Tyre {
  String name;

  void run() {}
}

class Car = Tyre with ElectricEngine;

class Bus = Tyre with OilEngine;

//class Car extends Tyre with ElectricEngine {
//  String name;
//}

//class A {
//  void a() {
//    print("A.a()...");
//  }
//}
//
//class B {
//  void a() {
//    print("B.a()...");
//  }
//
//  void b() {
//    print("B.b()...");
//  }
//}
//
//class C {
//
//
//  void a() {
//    print("C.a()...");
//  }
//
//  void b() {
//    print("C.b()...");
//  }
//
//  void c() {
//    print("C.c()...");
//  }
//}
//
//class D extends A with B, C {
//
//}
