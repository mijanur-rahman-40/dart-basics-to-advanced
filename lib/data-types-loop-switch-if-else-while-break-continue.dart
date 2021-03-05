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

  var _str1 = 'This is also a multi-line string';
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
  // array_num.forEach(printNumber);

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
    print('Odd : $k');
  }
}
