void main() {
  num a = 10;
  a = 12.5;

  int b = 20;
//  b = 11.2;
  double c = 12.5;
//  c = b;

  print(b + c);
  print(b - c);
  print(b * c);
  print(b / c);
  print(b ~/ c);
  print(b % c);

  print(0.0 / 0.0);

  print(b.isEven);
  print(b.isOdd);

  int d = 1;
  print(d.isEven);
  print(d.isOdd);

  int e = -100;
  print(e.abs());

  double f = 10.5;
  print(f.round());
  print(f.floor());
  print(f.ceil());

  print(f.toInt());
  print(d.toDouble());
}
