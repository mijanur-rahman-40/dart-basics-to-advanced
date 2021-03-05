void main() {
  final type1 = <String, String>{'a': 'h', 'b': '1'};

  final type2 = <String, Object>{'a': 'h', 'b': '1'};

  final type3 = <String, Object>{
    'a': {'h': 'M'},
    'b': 1
  };

  final type4 = <String, Map>{
    'a': {
      'h': [1, 2, 3, 4]
    },
  };
  // not possible for type mismatch
  // final type4 = <String, String>{
  //   'a': {
  //     'h': [1, 2, 3, 4]
  //   },
  //   'b': '1'
  // };

  // final <String, Object> d = {'a':'b'};
  var type5 = <Map<String, Object>>[
    {'name': 'John', 'age': 18},
    {'name': 'Jane', 'age': 21},
    {'name': 'Mary', 'age': 23},
  ];

  // not possible for type mismatch
  // var type5 = <Map<String, Map>>[
  //   {'name': 'John', 'age': 18},
  //   {'name': 'Jane', 'age': 21},
  //   {'name': 'Mary', 'age': 23},
  // ];

  print(type1);
  print(type2);
  print(type3['b']);
  print(type4['a']);
  var d = type4['a']['h'];
  print(d[3]);

  // final <String, Object> d = {'a':'b'};
  var type6 = <List<Map>>{
    [
      {'a': 'b'}
    ],
    [
      {'c': 'd'}
    ]
  };

  // not possible for type mismatch
  // var type6 = <Map<Object>>{
  //   [
  //     {'a': 'b'}
  //   ],
  //   [
  //     {'c': 'd'}
  //   ]
  // };

  var type7 = <List<Object>>[
    [
      {'a': 'b'}
    ],
    [
      {'c': 'd'}
    ]
  ];

  var type8 = <Map<String, dynamic>>[
    {'name': 'John', 'age': 18},
    {'name': 'Jane', 'age': 21},
    {'name': 'Mary', 'age': 23},
  ];

  var type9 = <Map<String, dynamic>>[
    {'name': 'John', 'age': 18},
    {
      'name': ['A', 'B', 'C'],
      'age': 21
    },
    {
      'name': {'A': 'A1', 'B': 'B1'},
      'age': 23
    },
  ];

  var type10 = {
    {'a': 'a1'},
    {'a': 'b1'},
  };
  var subType10 = type10.toList();
  print(subType10[0]['a']);
  print(type10.add({'a': 'c1'}));

  print(type10);

  var type11 = <Map<String, String>>{
    {'a': 'a1'},
    {'a': 'b1'},
  };

  print(type11.toList()[0]);

  var type12 = <Map<String, Object>>{
    {
      'a': {'a1': 'a11'}
    },
    {
      'a': {'b1': 'b11'}
    },
  };

  // set basically a unique number of collections
  var type13 = <Set<Map<String, Object>>>[
    {
      {
        'a': {'a1': 'a11'}
      },
      {
        'a': {'a1': 'b11'}
      },
    },
    {
      {
        'a': {'a1': 'c11'}
      },
      {
        'a': {'a1': 'd11'}
      },
    },
  ];

  // print(type13[0]);
  var setValues = type13[0].toSet();
  setValues.map((element) => (print(element[0]))).toList();
  var value = type13[0].toList()[0]['a'].toString();
  // var value = type13[0].toList()[0].entries;
  print(value);

  var list = {'a', 'b'};
  var sd = list.map((e) => print(e));
  print(list.runtimeType);
}
