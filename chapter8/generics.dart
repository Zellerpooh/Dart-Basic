void main() {
  var list = new List<String>();

  list.add("1");

  var utils = new GenericsUtils<String>();

  utils.put("1");

  var func = new Funcgenerics();
  func.put<int>(1);
}

class Funcgenerics {
  void put<T>(T element) {
    print(element);
  }
}

class GenericsUtils<T> {
  T element;

  void put(T element) {
    this.element = element;
  }
}

class Utils {
  int element;
  String elementStr;

  void putInt(int element) {
    this.element = element;
  }

  void putString(String element) {
    this.elementStr = element;
  }
}
