import 'dart:math';

abstract class Figure {
  Figure(this.name);

  String name;
  double area();
  double perimeter();
}

abstract class Triangle extends Figure {
  Triangle(String name, this.aSide, this.bSide, this.cSide) : super(name);
  double aSide;
  double bSide;
  double cSide;

  @override
  double perimeter() {
    return aSide + bSide + cSide;
  }
}

class EquilateralTriangle extends Triangle {
  EquilateralTriangle(String name, double side):super(name, side, side, side);
  @override double area() {
    double h = aSide * sqrt(3) / 2;
    return h * aSide / 2;
  }
}

class IsoscelesTriangle extends Triangle {
  factory IsoscelesTriangle(String name, double height, double base) {
    double side = sqrt(base * base / 4 + height * height);
    return IsoscelesTriangle._(name, side, side, base);
  }

  IsoscelesTriangle._(String name, double aSide, double bSide, double cSide)
      : super(name, aSide, bSide, cSide);

  @override
  double area() {
    double height = sqrt(aSide * aSide - cSide * cSide / 4);
    return 0.5 * height * cSide;
  }
}

class ScaleneTriangle extends Triangle {
  ScaleneTriangle(String name, double aSide, double bSide, double cSide)
      : super(name, aSide, bSide, cSide);

  @override
  double area() {
    double semiPerimeter = perimeter() / 2;
    return sqrt(semiPerimeter *
        (semiPerimeter - aSide) *
        (semiPerimeter - bSide) *
        (semiPerimeter - cSide));
  }
}

class Rectangle extends Figure {
  Rectangle(String name, this.aSide, this.bSide) : super(name);
  double aSide;
  double bSide;

  @override
  double perimeter() {
    return 2 * (aSide + bSide);
  }

  @override
  double area() {
    return aSide * bSide;
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
