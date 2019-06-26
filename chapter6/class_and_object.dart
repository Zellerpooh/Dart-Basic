import 'personl.dart';

void main() {
  var personal = Person();
  personal.name = "Tom";
  personal.age = 20;

  print(personal.name);
  personal.work();
  print(personal.address);
}
