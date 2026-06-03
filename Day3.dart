import "dart:io";
void main() {
  print("Enter your exam score:");
  String? marks = stdin.readLineSync();
  double score = double.parse(marks!);
   String grade;
   if (score>100 || score < 0) {
     grade = "Invvalid score";
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
   print("Your marks is: $score");
   print("Your grade is: $grade");
}