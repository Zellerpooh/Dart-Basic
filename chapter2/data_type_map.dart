void main() {
  var map1 = {"first": "Dart", 1: true};
  print(map1);

  print(map1["first"]);

  map1[1] = false;
  print(map1);

  var map2 = const {"first": "Dart", 1: true};
//  map2[1] = "Python";
  var map3 = new Map();

  var map = {"first": "Dart", "Second": "Jva", "third": "Python"};
  print(map.length);
  print(map.isNotEmpty);
  print(map.keys);
  print(map.values);

  print(map.containsKey("first"));
  print(map.containsValue("C"));

  map.remove("third");
  print(map);
  map.forEach(f);

  var lsit = ["1", "2", "3"];
  print(lsit.asMap());
}

void f(key, value) {
  print("key=$key,value=$value");
}
