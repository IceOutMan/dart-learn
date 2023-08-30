// 循环

void main(List<String> args) {
  var my_list = List.empty(growable: true);
  my_list.add('1');
  my_list.add('2');
  my_list.add('3');
  
  for (var item in my_list) {
    print(item);
  }

  var i = 1;
  while (i < 5) {
    print(my_list[0]);
    i++;
  }
}
