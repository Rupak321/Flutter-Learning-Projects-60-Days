import 'dart:io';

// ---------- Functions ----------
double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

String divide(double a, double b) {
  if (b == 0) {
    return "Error: Cannot divide by zero";
  }
  return (a / b).toString();
}

// ---------- Main Program ----------
void main() {
  int choice = 0;

  while (choice != 5) {
   
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    print("4. Divide");
    print("5. Exit");
    stdout.write("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice >= 1 && choice <= 4) {
      stdout.write("Enter first number: ");
      double num1 = double.parse(stdin.readLineSync()!);

      stdout.write("Enter second number: ");
      double num2 = double.parse(stdin.readLineSync()!);

      var result;

      if (choice == 1) {
        result = add(num1, num2);
      } else if (choice == 2) {
        result = subtract(num1, num2);
      } else if (choice == 3) {
        result = multiply(num1, num2);
      } else if (choice == 4) {
        result = divide(num1, num2);
      }

      print("Result: $result");
    } else if (choice == 5) {
      print("Exiting program...");
    } else {
      print("Invalid choice. Try again.");
    }
  }
}