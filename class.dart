class ExampleClass {
  var value;
  var type;

  var name = "class name";
  static var age = 10;

  // 1. construct format -> new ExampleClass(value : "value", type  : "type");
  ExampleClass({this.value, this.type}) {}

  // 2. construct format -> new ExampleClass("value", "type");
  // ExampleClass(this.value, this.type) {}

  // 3. construct format  -> new ExampleClass("value", "type");
  // ExampleClass(var value, var type) {}

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


  // 1. ExampleClass({this.value, this.type}) {}
  new ExampleClass(value: "value", type: "type").printValAndType();


  // 2. ExampleClass(this.value, this.type) {}
  // new ExampleClass("val",  "type").printValAndType();

  // 3. ExampleClass(var value, var type) {}
  // new ExampleClass("val",  "type").printValAndType();
}
