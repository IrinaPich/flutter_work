import 'dart:io';
import 'dart:math';

class Figure {
  Figure(String name) {
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
    double perimeter = 2 * sqrt(height * height + (base * base / 4)) + base;
//    var format = NumberFormat("###.0#", "en_US");

    print('$name: area ${area.toStringAsFixed(2)} perimeter ${perimeter.toStringAsFixed(2)}');
  }
}
