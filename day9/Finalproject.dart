import 'dart:math';
 //creating basi class shape 
 abstract class Shape{
  double area();
  factory Shape.create(String type, double size)
  {
    //if user wants to create a circle then circle object is createwd
    if(type.toLowerCase()== 'circle'){
      return Circle(radius: size);
    }else if(type.toLowerCase()== 'square'){//if user wants to create a square then square object is created
      return Square(side: size);


    }
    else{//if unknown shape is provided then error is thrown
      throw ArgumentError('Unknown shape Type: $type');
    }
  }
  

 }
 class Circle implements Shape{
    final double radius;
    const Circle({required this.radius});
    const Circle.unit() : radius = 1.0;
    //creates the circle with radius 1.0 if no radius is provided when creating the circle object
    @override 
    double area() => pi * radius * radius;//uing frmula
  }

  class Square implements Shape{
    final double side;
    const Square({required this.side});
    const Square.unit() : side = 1.0;
    //creates the square with side 1.0 if no side is provided when creating the square object
    @override
    double area() => side * side;
  }

  void main(){

    var circle = Shape.create('circle', 2.0);//creating a circle object with radius 2.0 using factory constructor of shape class
    var square = Shape.create('square', 3.0);

    print('Area of Circle: ${circle.area()}');
    print('Area of Square: ${square.area()}');
  }










  