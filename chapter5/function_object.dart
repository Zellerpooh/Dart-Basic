void main() {
  Function func = printHello;
  func(20);

  var list = [1, 2, 3, 4];
  list.forEach(func);
}

void printHello(int num) {
  print("Hello:$num");
}
