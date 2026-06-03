import 'dart:io';
class Point{

  double x, y;
  Point(this.x, this.y);
 Point.origin() : x = 3, y = 4;
}
void main(){
  var origin = Point.origin();
  print( "The passed values are: ${origin.x} and ${origin.y}" );
 
}