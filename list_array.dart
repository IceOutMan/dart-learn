var my_arr = ['1', '2', '3', '4'];
List<String> my_list = List.empty(growable: true);
void main(List<String> args) {
  my_list = my_arr.toList();

  print(my_arr.length);

  print("==============");
  for (var i = 0; i < my_list.length; i++) {
    print(my_list[i]);
  }

  // forEach
  print("==============");
  my_list.forEach((element) => {print(element)});

  // for in
  print("==============");
  for (var item in my_list) {
    print("item is ${item}");
  }

  // remove item
  my_list.add('5');
  // insert item
  my_list.insert(0, '0');

  print("==============");
  my_list.forEach((element) => {print(element)});
}
