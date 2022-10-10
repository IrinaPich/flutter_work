import 'dart:io';
import 'package:flutter_work/oop/shapeHierarchy.dart';

List<Figure> readShapeList() {
  String? input;
  List<Figure> figures = [];
  while (input != '') {
    print(
        'Please enter the Figure Name or click Enter if you finished your list');
    input = stdin.readLineSync();

    //List<String> shapesList = ['qq'];

    switch (input) {
      case '':
        break;

/*      case 'Equilateral Triangle':
        String figureName = 'Equilateral triangle';
        EquilateralTriangle p = EquilateralTriangle(name);
        break;

      case 'Scalene Triangle':
        print('Please enter parameters .... ');
        // add shape name and input (parameters) to the list
        break;*/

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

/*      case 'Rectangle':
        print('Please enter parameters .... ');
        // add shape name and input (parameters) to the list
        break;

      case 'Square':
        print('Please enter parameters .... ');
        // add shape name and input (parameters) to the list
        break;

      case 'Ellipsoid':
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

void main() {
  var result = readShapeList();
  print(result);
}
