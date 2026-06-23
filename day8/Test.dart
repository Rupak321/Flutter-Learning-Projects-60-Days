class Car {
  String color = "Red";
  static int total = 0;
  Car() {
    total++;
  }
}
void main(){
  Car c= Car();
  var Car1  = Car();
  var Car2= Car();
  Car c3 = Car();
  Car1.color='blue';
  print(Car1.color);
  print("Total cars created: ${Car.total}");
}