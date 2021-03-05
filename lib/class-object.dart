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
  @override
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

void main(List<String> args) {
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
}
