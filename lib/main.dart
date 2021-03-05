void main() {
  final type1 = <String, String>{'a': 'h', 'b': '1'};
  final type2 = <String, Object>{'a': 'h', 'b': '1'};
  final type3 = <String, Object>{'a': {'h' : 'M'}, 'b': 1};

  print(type1);
  print(type2);
  print(type3);
}
