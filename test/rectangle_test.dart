import 'package:test/test.dart';
import 'package:flutter_work/oop/shapeHierarchy.dart';

void main() {
  group('Test Rectangle Class', () {
    test('Perimeter for sides 3 and 5', () {
      double a = 3;
      double b = 5;
      var t = Rectangle('Rectangle', a, b);
      var perimeter = t.perimeter();
      expect(perimeter, equals(16));
    });
    test('Area for sides 3 and 5', () {
      double a = 3;
      double b = 5;
      var t = Rectangle('Rectangle', a, b);
      var area = t.area();
      double expected = 15;
      double difference = (area - expected).abs();
      expect(difference < 0.0001, equals(true));
    });
  });

  group('Test Square Class', () {
    test('Perimeter for side = 5', () {
      double side = 5;
      var t = Square('Square', side);
      var perimeter = t.perimeter();
      expect(perimeter, equals(20));
    });
    test('Area for side = 5', () {
      double side = 5;
      var t = Square('Square', side);
      var area = t.area();
      double expected = 25;
      double difference = (area - expected).abs();
      expect(difference < 0.0001, equals(true));
    });
  });
}
