void main() {
  int a = 10;
  int b = 5;

  b ??= 10;
  //如果为空进行赋值，不为空直接使用它的值
  print(b);

  a += 2;
  print(a);

  a -= 5;
  print(a);


}
