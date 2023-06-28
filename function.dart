example() {
  nested1() => print("this is nested1");
  nested1();

  // function param is function
  nested2(fn) {
    fn();
  }

  nested2( () => print("this is nested2"));
}

void main(List<String> args) {
  example();
}
