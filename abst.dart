import 'dart:ffi';
import 'dart:math';

import 'ex2.dart';

abstract class Shape{


  void calculateArea();
}
//interface
abstract class Drawable{
  void draw();
}
class circle implements Shape,Drawable{
   double radius=0;
   
   
   circle(this.radius);
   
     @override
     double calculateArea() {
     double sum = pi*radius*radius;
     print('Area of circle:${sum.toStringAsFixed(2)}');
     return sum;
     }
   
     @override
     void draw() {
      print("Drawing Circle with radius : ${radius}");
     }
}
class Rectangle implements Shape,Drawable{
   double width,height;
  Rectangle(this.height,this.width);
  
  @override
  double calculateArea() {
    double sum = width!*height!;
     print('Area of Rectangle:${sum.toStringAsFixed(2)}');
     return sum;
  }

  @override
  void draw() {
    print("Drawing Rectangle with width:${width}and height:${height}");
  }


 


}
     


void main(List<String> args) {
  var ss = circle(5);
  ss.draw();
  ss.calculateArea();
 var tt =Rectangle(10,20);
 tt.draw();
 tt.calculateArea();
}