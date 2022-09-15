import 'dart:io';

class Figure {
  Figure(String name) {
    String? parameters;
    String? height;
    String? base;
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
    height = splitParameters[0];
    base = splitParameters[1];

    int area = int.parse(height) + int.parse(base);
    print('The area of $name is $area');
  }
}
