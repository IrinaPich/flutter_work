import 'dart:io';
import 'package:flutter_work/oop/shapeHierarchy.dart';

List<Figure> readShapeList() {
  String parametersName;
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
        print('Please enter ${EquilateralTriangle.parametersName()} of $name');
        parameter = stdin.readLineSync();
        while (parameter == null || parameter.isEmpty) {
          print(
              'Please enter correct parameter ${EquilateralTriangle.parametersName()} of $name');
          parameter = stdin.readLineSync();
          if (parameter == null || parameter.isEmpty) {
            print(
                'Parameter ${EquilateralTriangle.parametersName()} is incorrect ');
            continue;
          }
        }
        double? side = double.tryParse(parameter);
        if (side == null) {
          print(
              'Parameter ${EquilateralTriangle.parametersName()} is incorrect ');
          continue;
        }
        var t = EquilateralTriangle(name, side);
        figures.add(t);
        break;

      case 'Scalene Triangle':
        String name = 'Scalene Triangle';
        String? parameters;
        print(
            'Please enter ${ScaleneTriangle.parametersName()} of $name separated by a space');
        parameters = stdin.readLineSync();
        while (parameters == null || parameters.isEmpty) {
          print(
              'Please enter correct parameters ${ScaleneTriangle.parametersName()} of $name separated by a space');
          parameters = stdin.readLineSync();
          if (parameters == null || parameters.isEmpty) {
            print(
                'Parameters ${ScaleneTriangle.parametersName()} are incorrect ');
            continue;
          }
        }
        var splitParameters = parameters.split(' ');
        if (splitParameters.length < 3) {
          print(
              'Parameters ${ScaleneTriangle.parametersName()} are incorrect ');
          continue;
        }
        var aSideString = splitParameters[0];
        var bSideString = splitParameters[1];
        var cSideString = splitParameters[2];
        double? aSide = double.tryParse(aSideString);
        double? bSide = double.tryParse(bSideString);
        double? cSide = double.tryParse(cSideString);
        if (aSide == null || bSide == null || cSide == null) {
          print(
              'Parameters ${ScaleneTriangle.parametersName()} are incorrect ');
          continue;
        }
        var t = ScaleneTriangle(name, aSide, bSide, cSide);
        figures.add(t);
        break;

      case 'Isosceles Triangle':
        String name = 'Isosceles Triangle';
        String? parameters;
        print(
            'Please enter ${IsoscelesTriangle.parametersName()} of $name separated by a space');
        parameters = stdin.readLineSync();
        while (parameters == null || parameters.isEmpty) {
          print(
              'Please enter correct parameters ${IsoscelesTriangle.parametersName()} of $name separated by a space');
          parameters = stdin.readLineSync();
          if (parameters == null || parameters.isEmpty) {
            print(
                'Parameters ${IsoscelesTriangle.parametersName()} are incorrect ');
            continue;
          }
        }
        var splitParameters = parameters.split(' ');
        if (splitParameters.length < 2) {
          print(
              'Parameters ${IsoscelesTriangle.parametersName()}e are incorrect ');
          continue;
        }
        var heightString = splitParameters[0];
        var baseString = splitParameters[1];
        double? height = double.tryParse(heightString);
        double? base = double.tryParse(baseString);
        if (height == null || base == null) {
          print(
              'Parameters ${IsoscelesTriangle.parametersName()} are incorrect ');
          continue;
        }
        var t = IsoscelesTriangle(name, height, base);
        figures.add(t);
        break;

      case 'Rectangle':
        String name = 'Rectangle';
        String? parameters;
        print(
            'Please enter ${Rectangle.parametersName()} of $name separated by a space');
        parameters = stdin.readLineSync();
        while (parameters == null || parameters.isEmpty) {
          print(
              'Please enter correct parameters ${Rectangle.parametersName()} of $name separated by a space');
          parameters = stdin.readLineSync();
          if (parameters == null || parameters.isEmpty) {
            print('Parameters ${Rectangle.parametersName()} are incorrect');
            continue;
          }
        }
        var splitParameters = parameters.split(' ');
        if (splitParameters.length < 2) {
          print('Parameters ${Rectangle.parametersName()} are incorrect ');
          continue;
        }
        var aSideString = splitParameters[0];
        var bSideString = splitParameters[1];
        double? aSide = double.tryParse(aSideString);
        double? bSide = double.tryParse(bSideString);
        if (aSide == null || bSide == null) {
          print('Parameters ${Rectangle.parametersName()} are incorrect ');
          continue;
        }
        var t = Rectangle(name, aSide, bSide);
        figures.add(t);
        break;

      case 'Square':
        String name = 'Square';
        String? parameter;
        print('Please enter ${Square.parametersName()} of $name');
        parameter = stdin.readLineSync();
        while (parameter == null || parameter.isEmpty) {
          print(
              'Please enter correct parameter ${Square.parametersName()} of $name');
          parameter = stdin.readLineSync();
          if (parameter == null || parameter.isEmpty) {
            print('Parameter ${Square.parametersName()} is incorrect ');
            continue;
          }
        }
        double? side = double.tryParse(parameter);
        if (side == null) {
          print('Parameter ${Square.parametersName()} is incorrect ');
          continue;
        }
        var t = Square(name, side);
        figures.add(t);
        break;

      default:
        print("Figure name \"$input\" not recognized");
        break;
    }
  }
  return figures;
}

void printFiguresList(List resultList) {
  for (var figure in resultList) {
    print(
        '${figure.name} (${figure.parametersToString()}): Perimeter - ${figure.perimeter()}, Area - ${figure.area()}');
  }
}

void main() {
  var resultList = readShapeList();
  printFiguresList(resultList);
}
