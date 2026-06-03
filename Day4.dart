import "dart:io";
import "dart:math";
void main() {
  print("Number Guessing Game");
  print("ENter a random number between 1 and 100:");
  String? numberInput = stdin.readLineSync();
  int number = int.parse(numberInput!);
  int i = 1;
  while (i<=5) {
    print("Attempt $i: geuess the number:");
    String? guessInput = stdin.readLineSync();
  int guess = Random().nextInt(100) + 1;

    if (guess == number) {
      print("dami number is $guess");
      return;
    } else if (guess < number) {
      print("low try again");
    } else {
      print("high try again");
    }
    i++;
  }
  print("Limit sakyo arko choti try garney $number.");
}