void main(List<String> args) {
  var list1 = <int>[1, 2, 3];
  var list2 = <Map>[
    {'a': 'b'},
    {'b': 'c'},
    {'c': 'd'}
  ];
  // previous version
  // var map = Map<String, int>.fromIterable(list,
  //     key: (item) => item.toString(), value: (item) => item * item);

  //  new version
  var map = {for (var item in list1) item.toString(): item * item};

  print(map);
}
