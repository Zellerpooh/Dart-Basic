/**
 * 闭包
 */
void main() {
  var func = a();

  func();
  func();
  func();
  func();
  func();
}

a() {
  int count = 0;
//  printCount() {
//    print(count++);
//  }
//
//  return printCount;

  return () {
    print(count++);
  };
}
