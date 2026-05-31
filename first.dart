import 'dart:io';
void main() {
  print('Enter your name:');
  String? name = stdin.readLineSync();
  print('Enter your age:');
  String? ageInput = stdin.readLineSync();


  print('Hello, $name! You are $ageInput years old.');
  }