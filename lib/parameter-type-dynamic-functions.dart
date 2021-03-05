// / there are two types of parameter
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


void main(List<String> args) {
  
  // parameter type
  print(sum(6, 7));
  print(sub(number2: 4, number1: 2));
  print(mul(4, number2: 2));
  print(div(4));
  print(mod(4, number2: 3));
  print(sum_sub(6, number2: 2));
  print(mul_div(4));


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
}
