
void main(List<String> args) {
  Map<String, dynamic> mkMap = {};

  Map<String, int> scoreMp = {
    "Alice": 14,
    "Bob": 15,
    "Charlie": 16,
  };

  // Get
  int existScore = scoreMp['Bob'] ?? 0;
  int notExistScore = scoreMp['IceOutMan'] ?? 0;
  print("Exist : $existScore");
  print("Not Exist : $notExistScore");

  // Set
  scoreMp['IceOutMan'] = 99;

  // Map length
  print("Map length: ${scoreMp.length}");


  // Contains Key
  print(scoreMp.containsKey('Bob'));
  // Contains Value
  print(scoreMp.containsValue(18));

  // Keys
  print(scoreMp.keys.toList());
  // Values
  print(scoreMp.values);

  // For
  for (var key in scoreMp.keys) {
    print(key);
  }
  // For Each
  scoreMp.forEach((key, value) {
    print("key : ${key}, value : ${value}");
  });

  // Clear
  scoreMp.clear();

}
