import 'dart:core';

class Point {
  int x;
  int y;

  Point(this.x, this.y);

  add(Point point) {
    this.x = point.x + this.x;
    this.y = point.y + this.y;
  }

  getX() {
    return x;
  }

  getY() {
    return y;
  }

  setX(int x) {
    this.x = x;
  }

  setY(int y) {
    this.y = y;
    {}
  }
}

void main() {
  print("heelo");
  var now = new DateTime.now();
  print("${now}");

  var meikenList = [];
  meikenList.add("ZS");
  meikenList.add("LS");
  meikenList.add("WW");

  for (int i = 0; i < meikenList.length; i++) {
    print("${meikenList[i]}");
    print("${meikenList.length}");
  }

  Map<String, int> map = <String, int>{};
  map['age'] = 2;
  map['money'] = 10;
  for (String key in map.keys) {
    print(key);
  }

  // Point a = Point(1, 1);
  // Point b = Point(2, 2);
  //
  // print("${a.getX()}");
  // print("${a.getY()}");
}
