/**
 * Exception handeling
 */

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

int mustGreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be grater than zero');
  }
  return val;
}

void main(List<String> args) {
  // Exception handeling
  letVerifyTheValue(10);
  //letVerifyTheValue(0);
}
