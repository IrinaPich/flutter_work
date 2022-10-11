import 'dart:io';
import 'package:flutter_work/oop/shapeHierarchy.dart';

List<Figure> readShapeList() {
  String? input;
  List<Figure> figures = [];
  while (input != '') {
    print(
        'Please enter the Figure Name or click Enter if you finished your list');
    input = stdin.readLineSync();

    switch (input) {
      case '':
        break;

      case 'Equilateral Triangle':
        String name = 'Equilateral Triangle';
        String? parameter;
        print('Please enter Side of $name');
        parameter = stdin.readLineSync();
        while (parameter == null || parameter.isEmpty) {
          print('Please enter correct parameter Side of $name');
          parameter = stdin.readLineSync();
          if (parameter == null || parameter.isEmpty) {
            print('Parameter Side is incorrect ');
            continue;
          }
        }
        double? side = double.tryParse(parameter);
        if (side == null) {
          print('Parameter Side is incorrect ');
          continue;
        }
        var t = EquilateralTriangle(name, side);
        figures.add(t);
        break;

      case 'Scalene Triangle':
        String name = 'Scalene Triangle';
        String? parameters;
        print('Please enter a, b and c sides of $name separated by a space');
        parameters = stdin.readLineSync();
        while (parameters == null || parameters.isEmpty) {
          print(
              'Please enter correct parameters a, b and c sides of $name separated by a space');
          parameters = stdin.readLineSync();
          if (parameters == null || parameters.isEmpty) {
            print('Parameters a, b and c sides are incorrect ');
            continue;
          }
        }
        var splitParameters = parameters.split(' ');
        if (splitParameters.length < 3) {
          print('Parameters a, b and c sides are incorrect ');
          continue;
        }
        var aSideString = splitParameters[0];
        var bSideString = splitParameters[1];
        var cSideString = splitParameters[2];
        double? aSide = double.tryParse(aSideString);
        double? bSide = double.tryParse(bSideString);
        double? cSide = double.tryParse(cSideString);
        if (aSide == null || bSide == null || cSide == null) {
          print('Parameters a, b and c sides are incorrect ');
          continue;
        }
        var t = ScaleneTriangle(name, aSide, bSide, cSide);
        figures.add(t);
        break;

      case 'Isosceles Triangle':
        String name = 'Isosceles Triangle';
        String? parameters;
        print('Please enter Height and Base of $name separated by a space');
        parameters = stdin.readLineSync();
        while (parameters == null || parameters.isEmpty) {
          print(
              'Please enter correct parameters Height and Base of $name separated by a space');
          parameters = stdin.readLineSync();
          if (parameters == null || parameters.isEmpty) {
            print('Parameters Height and Base are incorrect ');
            continue;
          }
        }
        var splitParameters = parameters.split(' ');
        if (splitParameters.length < 2) {
          print('Parameters Height and Base are incorrect ');
          continue;
        }
        var heightString = splitParameters[0];
        var baseString = splitParameters[1];
        double? height = double.tryParse(heightString);
        double? base = double.tryParse(baseString);
        if (height == null || base == null) {
          print('Parameters Height and Base are incorrect ');
          continue;
        }
        var t = IsoscelesTriangle(name, height, base);
        figures.add(t);
        break;

      case 'Rectangle':
        String name = 'Rectangle';
        String? parameters;
        print('Please enter a and b sides of $name separated by a space');
        parameters = stdin.readLineSync();
        while (parameters == null || parameters.isEmpty) {
          print(
              'Please enter correct parameters a and b sides of $name separated by a space');
          parameters = stdin.readLineSync();
          if (parameters == null || parameters.isEmpty) {
            print('Parameters a and b sides are incorrect');
            continue;
          }
        }
        var splitParameters = parameters.split(' ');
        if (splitParameters.length < 2) {
          print('Parameters a and b sides are incorrect ');
          continue;
        }
        var aSideString = splitParameters[0];
        var bSideString = splitParameters[1];
        double? aSide = double.tryParse(aSideString);
        double? bSide = double.tryParse(bSideString);
        if (aSide == null || bSide == null) {
          print('Parameters a and b sides are incorrect ');
          continue;
        }
        var t = Rectangle(name, aSide, bSide);
        figures.add(t);
        break;

      case 'Square':
        String name = 'Square';
        String? parameter;
        print('Please enter Side of $name');
        parameter = stdin.readLineSync();
        while (parameter == null || parameter.isEmpty) {
          print('Please enter correct parameter Side of $name');
          parameter = stdin.readLineSync();
          if (parameter == null || parameter.isEmpty) {
            print('Parameter Side is incorrect ');
            continue;
          }
        }
        double? side = double.tryParse(parameter);
        if (side == null) {
          print('Parameter Side is incorrect ');
          continue;
        }
        var t = Square(name, side);
        figures.add(t);
        break;

/*    case 'Ellipsoid':
        print('Please enter parameters .... ');
        // add shape name and input (parameters) to the list
        break;

      case 'Circle':
        print('Please enter parameters .... ');
        // add shape name and input (parameters) to the list
        break;*/

      default:
        print("Figure name \"$input\" not recognized");
        break;
    }
  }
  return figures;
}

void printFiguresList(List resultList) {
  for (var figure in resultList) {
    return print(
        '${figure.name}: Perimeter - ${figure.perimeter()}, Area - ${figure.area()}');
  }
}

void main() {
  var resultList = readShapeList();
  printFiguresList(resultList);
}
