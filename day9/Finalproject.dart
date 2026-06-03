import 'dart:io';
import 'dart:math';
 
 abstract class Shape{
  double area();
  factory Shape.create(String type, double size)
  {
    if(type.toLowerCase()== 'circle'){
      return Circle(radius: size);
    }else if(type.toLowerCase()== 'square'){
      return Square(side: size);


    }
    else{
      throw ArgumentError('Unknown shape Type: $type');
    }
  }
  

 }
 class Circle implements Shape{
    final double radius;
    const Circle({required this.radius});
    const Circle.unit() : radius = 1.0;
    @override 
    double area() => pi * radius * radius;
  }

  class Square implements Shape{
    final double side;
    const Square({required this.side});
    @override
    double area() => side * side;
  }

  void main(){
    var circle = Shape.create('circle', 2.0);
    var square = Shape.create('square', 3.0);

    print('Area of Circle: ${circle.area()}');
    print('Area of Square: ${square.area()}');
  }










  