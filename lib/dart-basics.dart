// import 'package:dart-basics/dart-basics.dart' as dart_basic;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${dart_basic.calculate()}!');

/**
    1. dart use just in time compilation(JIT)
    2. also use ahead of time(AOT)
 */
// What does means AOT and JIT
/**
    A compiler creates the binary code from Dart source code. ...
    The concept of source code and compilation to a target platform
    is basically the same for each programming language.
    JIT (Just in Time) compiles at runtime on-the-fly
    while AOT (Ahead of Time) compiles before the application is deployed
    and launched.
 */

  print('hello world');

  /*
  * Basic string operations
  * */

  var firstName = 'apple';
  var lastName = 'orange';
  var age = 23;
  print(firstName + ' ' + lastName);

  /*
  * Getting input
  * */
  stdout.writeln('What is your name: ');
  String name = stdin.readLineSync();
  print(name);

  /*
  * Data Types
  * int
  * String
  * double
  * bool
  * dynamic
  * */

  int amount1 = 100;
  var amount2 = 200;

  print('Amount : $amount1 | Amount2: $amount2 \n');

  double dAmount1 = 100.11;
  var dAmount2 = 200.11;

  print('Amount1 : $dAmount1 | Amount2 : $dAmount2 \n');

  String name1 = 'Orange';
  var name2 = 'mahmud';

  print('My name is : $name1 $name2 \n');

  bool isItTrue1 = true;
  var isItTrue2 = false;

  print('IsIt true1 : $isItTrue1 | is it true2 : $isItTrue2 \n');

  dynamic weakVariable = 100;
  print('WeakVarable 1 : $weakVariable \n');

  // change the dynamic variable
  weakVariable = 'Dart Progaming';
  // weakVariable = null;
  print('WeakVarable 2 : $weakVariable \n');

  /*
  * String
  * Type Conversion
  * Constant
  * null
  * */

  var s1 = 'Single quota wotk well for string  literals';
  var s2 = "double quota work just as well.";
  var s3 = 'It\'s easy to escape the string delimeter.';
  var s4 = "It's even easier to use the other delimeter";

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');

  //Raw String
  var s = r'In a raw string,not even \n gets special treatment';
  print(s);

  /*
  * String interpolation
  * */

  var _age = 35;
  var str = 'My age is $_age';
  print(str);

  /*
  * Multi-line string define
  * */

  var _str = '''
  you can create
  multi-line strings like this one.  
  ''';

  var _str1 = """This is also a
  multi-line string""";
  print(_str);
  print(_str1);

  /*
  * Type conversion
  * */

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString);
  assert(piAsString == '3.14');

  /*
  * Finding the runtime type
  * */

  const aConstNum = 0; // int constant
  const aConstBool = true; // bool constant
  const aConstString = 'a constant string'; // string constant

  print(aConstNum);
  print(aConstBool);
  print(aConstString);

  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);

  int number;
  // or
  number = null;
  print(number);

  /*
  * Operator's
  * */

  int addNum = 10 + 22;
  addNum = addNum - 2;
  print(addNum);

  addNum = addNum % 5;
  print(addNum);

  // relational ==, !=, >=, <=
  if (addNum == 0) {
    print('Zero');
  }

  addNum = 100;
  addNum *= 2;
  print(addNum);

  // unary operator
  ++addNum;
  addNum++;
  addNum += 1;
  addNum -= 1;
  print(addNum);

  // logical && and logical ||
  if (addNum > 200 && addNum < 203) {
    print('200 to 200');
  }

  // != Not Equal
  if (addNum != 100) {
    print('num is not equal to 100');
  }

  /*
  * Null Aware Operator
  * (?,),(??).(??=)
  * */

  // calling class
  var a = Number();
  var b = a;

  // when we only write var a; it return null
  int number_value;

  if (a != null) {
    number_value = a.num;
  }

  // for shortcut run the before if command
  number_value = b?.num;

  // if b is null then execute the second option 0, basically its works like else option
  number_value = b?.num ?? 0;

  print(number_value);

  // if x is null then we want to assign a default value
  int x_num;
  print(x_num ??= 100);
  print(x_num);

  /*
  * Ternary operator
  * */

  int y_num = 100;
  var result = y_num % 2 == 0 ? 'Even' : 'Odd';
  print(result);

  /*
  * Type test
  * */

  var p = 100;
  var q = 100.00;
  if (p is int) {
    print('integer');
  }
  if (q is double) {
    print('double');
  }

  /*
  * Conditional Statement
  * */

  // if and else if and else
  int a_num = 100;
  if (a_num % 2 == 0) {
    print('Even');
  } else if (a_num % 3 == 0) {
    print('Odd');
  } else {
    print('Confused');
  }

  // switch
  int f_num = 0;
  switch (f_num) {
    case 0:
      print('Even');
      break;
    case 1:
      print('Odd');
      break;
    default:
      print('Confused');
  }

  /*
  * Loop
  * */

  // Standard for loop
  for (var i = 0; i <= 10; i++) {
    print(i);
  }

  // for-in loop
  var array_num = [1, 2, 3];
  for (var n in array_num) {
    print(n);
  }

  // another way
  for (var i = 0; i < array_num.length; i++) {
    print(array_num[i]);
  }

  // forEach loop : basically forEach is a higher order function
  array_num.forEach((n) => print(n));

  //without arrow function in forEach can use normal function
  array_num.forEach(printNumber);

  // While loop
  int range1 = 5;
  while (range1 > 0) {
    print(range1);
    range1 -= 1;
  }

  // another formation of while loop
  int range2 = 5;
  do {
    print(range2);
    range2 -= 1;
  } while (range2 > 0);

  /*
   * Break and Continue
   * */

  for (var i = 0; i <= 10; i++) {
    if (i > 5) break;
    print(i);
  }

  //to check odd or even
  for (var k = 0; k < 10; k++) {
    if (k % 2 == 0) continue;
    print("Odd : $k");
  }

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

  /*
  * Function
  **/

  showOutput(square(3));
  showOutput(square(2.5));
  showOutput(rectangle(5, 6));

  // getting the type of function
  print(square.runtimeType);

  // Anonymous function which has no name,in python it is called lamda and another language it is called poser
  var fruit_list = ['apples', 'bananes', 'orange'];
  fruit_list.forEach((value) => print(value));

  // parameter type
  print(sum(6, 7));
  print(sub(number2: 4, number1: 2));
  print(mul(4, number2: 2));
  print(div(4));
  print(mod(4, number2: 3));
  print(sum_sub(6, number2: 2));
  print(mul_div(4));

  /**
   * Class
   */

  Person person1 = Person('apple');
  // var person2 = Person('apple',25);
  //person.name = 'apple';
  //person.age = 23;
  person1.showOutput();

  // guest xonstructor
  var person3 = Person.guest();
  person3.showOutput();

  // accessing final value
  var x = X('jack');
  print(x.name);

  // but can not assign be value
  // x.name = 'jill';
  // print(x.name);

  // can not access static value from outer class
  // print(x.age);

  print(X.age);

  // const and final in main class
  final final_name = 'orange';
  const const_age = 38;

  print(final_name);
  print(const_age);

  // can not assign new value
  // final_name = 'apple';
  // const_age = 23;

  // getting the extra features with extend keyword
  // inheritance

  var car1 = Car("Accord", 2014, 150000);
  car1.showOutput();

  var vehicle = Vehicle(model: 'BMW', year: 56);
  vehicle.showOutput();

  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);

  // Exception handeling
  letVerifyTheValue(10);
  //letVerifyTheValue(0);
}

// there are two types of parameter
// 1. positional argument/parameter
// 2. named argument/parameter

// positional argument
dynamic sum(var number1, var number2) => number1 + number2;

// named argument
dynamic sub({var number1, var number2}) => number1 - number2;

// both are used simultaneously
dynamic mul(var number1, {var number2}) => number1 * number2;

// if one named parameter can be null and othe is normal
dynamic div(var number1, {var number2}) => number1 / (number2 ?? 0);

// if one named parameter can not be null and other is normal
dynamic mod(var number1, {var number2}) => number1 % (number2 ?? 0);

// default value parameter
dynamic sum_sub(var number1, {var number2 = 0}) => number1 + number2 - number1;

// if the parameter value is optional
dynamic mul_div(var number1, [var number2]) =>
    number1 * (number2 ?? 0) / number1;

dynamic square(var number) {
  return number * number;
}

// now create arrow function
dynamic rectangle(height, width) => height * width;
void showOutput(message) {
  print('the square/rectangle area is : $message');
}

class Number {
  int num = 10;
}

void printNumber(number) {
  print(number);
}

// class
class Person {
  String name;
  int age;

  // Person(String name, [int age = 18]) {
  //   this.name = name;
  //   this.age = age;
  // }

  // if the parameter names is same as the properties of fixed name in the class we can use shortcut way
  Person(this.name, [this.age = 18]);

  // named constructor or /guest
  Person.guest() {
    name = 'Guest';
    age = 28;
  }

  void showOutput() {
    print(name);
    print(age);
  }
}

// class access
class X {
  // this is object property
  final name; // type will be defined by inferred value

  // this is class property
  static const int age = 10;

  X(this.name);
}

class Vehicle {
  String model;
  int year;
  Vehicle({this.model, this.year});

  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price);
  //  : super(model, year);

  @override
  void showOutput() {
    // super.showOutput();
    print(price);
  }

  void printChar() {
    print(model);
    print(year);
  }
}

/**
 * Method Overriding
 */

class Y {
  String name;
  Y(this.name);

  void showOutput() {
    print(name);
  }

  dynamic square(dynamic val) {
    return val * val;
  }
}

class Z extends Y {
  Z(String name) : super(name);

  @override
  void showOutput() {
    print(this.name);
    print("hello");
  }

  // not using @override at this time
  dynamic square(dynamic val) {}
}

/**
 * Getter and Setter
 */

class Rectangle {
  // here num it is a type, it contains integer and double
  num left, top, width, heigth;

  Rectangle(this.left, this.top, this.width, this.heigth);

  // before two calculated properties: right and bottom
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top = heigth;
  set bottom(num value) => top = value = heigth;
}

/**
 * Exception handeling
 */
int mustGreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be grater than zero');
  }
  return val;
}

void letVerifyTheValue(var val) {
  var valueVerification;
  try {
    valueVerification = mustGreaterThanZero(val);
  } catch (e) {
    print(e);
    // to a specific exception
    // on OutOfLlamasException{

    // }
  } finally {
    if (valueVerification == null) {
      print("Value is not accepted");
    } else {
      print('Value verified : $valueVerification');
    }
  }
}
