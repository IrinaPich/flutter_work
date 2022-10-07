import 'dart:io';
import 'dart:math';

abstract class Figure {
  Figure(this.name);

  String name;

  double area();

  double perimeter();
}

abstract class Triangle extends Figure {
  Triangle(String name, this.a, this.b, this.c) : super(name);
  double a;
  double b;
  double c;

  @override
  double perimeter() {
    return a + b + c;
  }
}

class EquilateralTriangle extends Triangle {
  EquilateralTriangle(String name, double side) : super(name, side, side, side);

  @override
  double area() {
    double h = a * sqrt(3) / 2;
    return h * a / 2;
  }
}

class IsoscelesTriangle extends Triangle {
  factory IsoscelesTriangle(String name, double height, double base) {
    double side = sqrt(base * base / 4 + height * height);
    return IsoscelesTriangle._(name, side, side, base);
  }

  IsoscelesTriangle._(String name, double a, double b, double c)
      : super(name, a, b, c);

  @override
  double area() {
    double height = sqrt(a * a - c * c / 4);
    return 0.5 * height * c;
  }
}

class ScaleneTriangle extends Triangle {
  ScaleneTriangle(String name, double a, double b, double c)
      : super(name, a, b, c);

  @override
  double area() {
    double semiPerimeter = perimeter() / 2;
    return sqrt(semiPerimeter *
        (semiPerimeter - a) *
        (semiPerimeter - b) *
        (semiPerimeter - c));
  }
}

class Rectangle extends Figure {
  Rectangle(String name, this.a, this.b) : super(name);
  double a;
  double b;

  @override
  double perimeter() {
    return 2 * (a + b);
  }

  @override
  double area() {
    return a * b;
  }
}

class Square extends Rectangle {
  Square(String name, double side) : super(name, side, side);
}

/*class IsoscelesTriangle extends Triangle {
  IsoscelesTriangle(String name):super(name) {
    String? parameters;
    double height;
    double base;
//    while (parameters != '') {
    print('Please enter Height and Base of $name separated by a space');
    parameters = stdin.readLineSync();

    while (parameters == null || parameters.isEmpty) {
//      parameter = null;
      print(
          'Please enter correct parameters Height and Base of $name separated by a space');
      parameters = stdin.readLineSync();
      if (parameters == null || parameters.isEmpty) {
        continue;
      }

//    }
    }
    var splitParameters = parameters.split(' ');
    var heightString = splitParameters[0];
    var baseString = splitParameters[1];

    height = double.parse(heightString);
    base = double.parse(baseString);

    double area = height * base/2;
    Figure.area = area;
    double perimeter = 2 * sqrt(height * height + (base * base / 4)) + base;
//    var format = NumberFormat("###.0#", "en_US");

    print('$name: area ${area.toStringAsFixed(2)} perimeter ${perimeter.toStringAsFixed(2)}');
  }
}*/
