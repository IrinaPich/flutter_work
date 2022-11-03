import 'dart:math';

abstract class Figure {
  Figure(this.name);

  String name;

  String parametersToString();

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
  EquilateralTriangle(String name, double side) : super(name, side, side, side);

  @override
  double area() {
    double h = aSide * sqrt(3) / 2;
    return h * aSide / 2;
  }

  static String parametersName() {
    return 'Side';
  }

  @override
  String parametersToString() {
    return '${parametersName()} $aSide';
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

  static String parametersName() {
    return 'Height and Base';
  }

  @override
  String parametersToString() {
    return '${parametersName()} $aSide, $cSide';
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

  static String parametersName() {
    return 'a, b and c sides';
  }

  @override
  String parametersToString() {
    return '${parametersName()} $aSide, $bSide, $cSide';
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

  static String parametersName() {
    return 'a and b sides';
  }

  @override
  String parametersToString() {
    return '${parametersName()} $aSide, $bSide';
  }
}

class Square extends Rectangle {
  Square(String name, double side) : super(name, side, side);

  static String parametersName() {
    return 'side';
  }

  @override
  String parametersToString() {
    return '${parametersName()} $aSide';
  }
}
