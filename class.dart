import 'variable.dart';

class MyBaseClass {
  var title = "Default Title";
  var name;
  var age;

  sayInfo() {
    print("title:${title}, name:${name},age: ${age}");
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

// factory class
class FourClass extends MyBaseClass {
  var name;
  var age;
  FourClass() {}

  FourClass.origin(Map map)
      : name = map['name'],
        age = map['age'] {
    print("this is four_class in origin");
  }

  factory FourClass.factoryClass(int num) {
    print("This is FourClass.factoryClass $num");
    return FourClass();
  }
}

class FiveClass extends MyBaseClass {
  var title;
  var name;
  var age;

  FiveClass(this.title, {this.name, this.age});
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

  // 4.1 ExampleClass.origin(Map map) {}
  // 4.2 ExampleClass.factoryClass
  var four_class = FourClass.origin({'name': 'four_class', 'age': '4'});
  four_class.sayInfo();
  FourClass.factoryClass(10);

  // 5. ExampleClass( "five_class_title", "{ name:"five_class", age:5 }) {}
  var five_class = FiveClass("five_class_title", name: "five_class", age: 5);
  five_class.sayInfo();
}
