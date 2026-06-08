class DivideByZeroException implements Exception {
  String toString() {
    return "Cannot divide by zero!";
  }
}

double divide(double a, double b) {
  if (b == 0) {
    throw DivideByZeroException();
  }
  return a / b;
}

void main() {
  try {
    var input1 = "10";
    var input2 = "0"; 

    double num1 = double.parse(input1);
    double num2 = double.parse(input2);

    double result = divide(num1, num2);

    print("Result: $result");
  }

  on DivideByZeroException catch (e) {
    print("Error: ${e.toString()}");
  }

  on FormatException catch (e) {
    print("Invalid number input!");
  }

  catch (e) {
    print("Something went wrong: $e");
  }

  finally {
    print("Operation completed (logged).");
  }
}