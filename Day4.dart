import "dart:io";
import "dart:math";
void main() {
  print("Number Guessing Game");
  print("Enter a random number between 1 and 100:");
  String? numberInput = stdin.readLineSync();
  int number = int.parse(numberInput!);
  int i = 1;
  while (i<=5) {
    print("Attempt $i: Guess the number:");
    String? guessInput = stdin.readLineSync();
  int guess = Random().nextInt(100) + 1;
    if (guess == number) {
      print("Congratulations! You guessed the number in $i attempts.");
      return;
    } else if (guess < number) {
      print("Too low! Try again.");
    } else {
      print("Too high! Try again.");
    }
    i++;
  }
  print("Sorry, you've used all attempts. The correct number was $number.");
}