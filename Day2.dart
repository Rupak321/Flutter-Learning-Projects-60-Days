import 'dart:io';
void main(){
  print("Enter Your Name:");
  String? name = stdin.readLineSync();
  print("Enter your weight in kilograms:");
  String? weightInput = stdin.readLineSync();
  double weight = double.parse(weightInput!);
  print("Enter your height in meters:");
  String? heightInput = stdin.readLineSync();
  double height = double.parse(heightInput!);
  double bmi = weight / (height * height);
  print("Hello, $name! Your BMI is: $bmi");
  if(bmi < 18.5){
    print("You are underweight.");
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print("You have a normal weight.");
  } else if (bmi >= 25 && bmi < 29.9) {
    print("You are overweight.");
  } else {
    print("You are FAt.");
  }
}
