import "dart:io";
void main() {
  print("Enter your exam score:");
  String? scoreInput = stdin.readLineSync();
  double score = double.parse(scoreInput!);
   String grade;
   if (score>100 || score < 0) {
     grade = "Invalid Score plz enter a valid score";
   }
   else if(score >= 90) {
     grade = "A";
   } else if (score >= 80) {
     grade = "B";
   } else if (score >= 70) {
     grade = "C";
   } else if (score >= 60) {
     grade = "D";
   } else {
     grade = "F";
   }
   print("Your score is: $score");
   print("Your grade is: $grade");
}