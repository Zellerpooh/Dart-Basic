void main() {
  String language = "Java";

  switch (language) {
    D:
    case "Dart":
      print("Dart is my favorite");
      break;
    case "Java":
      print("Java is my favorite");
      continue D;
    case "Python":
      print("Python is my favorite");
      break;
    default:
      print("None");
      break;
  }
}
