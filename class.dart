import 'variable.dart';

class MyBaseClass {
  var name;
  var age;

  sayInfo() {
    print("name:${name},age: ${age}");
  }
}

class OneClass extends MyBaseClass {
  var name;
  var age;

  // 1. construct format -> new ExampleClass(value : "value", type  : "type");
  OneClass({this.name, this.age});

  static hiStaic() {
    print("hi static");
  }
}

class TwoClass extends MyBaseClass {
  var name;
  var age;

  // 2. construct format -> new ExampleClass("value", "type");
  TwoClass(this.name, this.age);
}

class ThreeClass extends MyBaseClass {
  var name;
  var age;

  // 3. construct format  -> new ExampleClass("value", "type");
  ThreeClass(var key, var value) {
    this.name = key;
    this.age = value;
  }
}

class FourClass extends MyBaseClass {
  var name;
  var age;

  FourClass.origin(Map map)
      : name = map['name'],
        age = map['age']{
            print("this is four_class in origin");
        }
}

void main(List<String> args) {
  OneClass.hiStaic();

  // 1. construct format -> new ExampleClass(value : "value", type  : "type");
  var one_class = OneClass(name: "one_class", age: 1);
  one_class.sayInfo();

  // 2. ExampleClass(this.value, this.type) {}
  var two_class = TwoClass("two_calss", 2);
  two_class.sayInfo();
  // 3. ExampleClass(var value, var type) {}
  var three_class = ThreeClass("three_class", 3);
  three_class.sayInfo();

  var four_class = FourClass.origin({'name' : 'four_class', 'age':'4'});
  four_class.sayInfo();
}
