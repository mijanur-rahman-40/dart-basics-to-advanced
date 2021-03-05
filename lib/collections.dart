void main(List<String> args) {
  /*
  * Collection
  * [List, Set, Map]
  * */

  // List : order collection of values
  List names = ['Jack', 'Jones', 'Apple'];
  print(names.length);
  print(names[2]);

  // we can do same thing by var keyword
  var country = const ['Bangladesh', 'India', 'Japan'];

  // can change index value
  // country[2] = 'Pakistan';

  // but if it is defined with const can not assigned new value
  //

  // can also add numeric value
  // var country = ['Bangladesh','India','Japan',10, 30];

  // but if it is defined as String then can not add numeric value
  // List <String> country = ['Bangladesh', 'India', 'Japan', 10, 30];

  // List <String> country = ['Bangladesh', 'India', 'Japan'];

  // List <String> country

  // the compiler by type inference  this country objects is a string type list items
  print(country.length);
  print(country[2]);

  // assign object into another object
  var country_names = country;
  //var country_names = [...country];

  // country[1] = 'apple';

  // print all country names
  for (var name in country) {
    print(name);
  }

  // Set
  var letters = {'a', 'b', 'c', 'a'};
  for (var value in letters) {
    print(value);
  }

  var halogens = {};
  print(halogens.runtimeType);

  // Map
  var gifts = {
    // key : value
    'first': 'apple',
    'second': 'orange',
    'third': 'banana'
  };
  print(gifts);
  print(gifts['first']);

  var element = {1: 'profile', 2: 'man', 3: 'women'};
  print(element[3]);

  // by instane of Map
  var gift = Map();
  gift['first'] = 'Mango';
  print(gift['first']);
}
