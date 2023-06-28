class ExampleClass {
  var value;
  var type;

  var name = "class name";
  static var age = 10;

  // ExampleClass({this.value});
  ExampleClass({val, type}) {
    this.value = val;
    this.type = type;
  }

  static sayInfo() {
    print("==================");
    print(age);
  }

  sayName() {
    print("==================");
    print(age);
    print(name);
  }

  printValAndType() {
    print("type is ${type}, val is ${value}");
  }
}

void main(List<String> args) {
  ExampleClass.sayInfo();

  new ExampleClass().sayName();
  new ExampleClass(val: "val", type: "type").printValAndType();
}
