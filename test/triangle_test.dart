import 'package:test/test.dart';
import 'package:flutter_work/oop/shapeHierarchy.dart';

void main() {
  group('Test Equilateral Triangle Class', () {
    test('Perimeter for each side = 3', () {
      double side = 3;
      var t = EquilateralTriangle('Equilateral', side);
      var perimeter = t.perimeter();
      expect(perimeter, equals(9));
    });
    test('Area for each side = 4', () {
      double side = 4;
      var t = EquilateralTriangle('Equilateral', side);
      var area = t.area();
      double expected = 6.9282;
      double difference = (area - expected).abs();
      expect(difference < 0.0001, equals(true));
    });
  });

  group('Test Isosceles Triangle Class', () {
    test('Perimeter for height = 4 and base = 3', () {
      double height = 4;
      double base = 3;
      var t = IsoscelesTriangle('Isosceles', height, base);
      var perimeter = t.perimeter();
      double expected = 11.544;
      double difference = (perimeter - expected).abs();
      expect(difference < 0.0001, equals(true));
    });
    test('Area for height = 4 and base = 3', () {
      double height = 4;
      double base = 3;
      var t = IsoscelesTriangle('Isosceles', height, base);
      var area = t.area();
      double expected = 6;
      double difference = (area - expected).abs();
      expect(difference < 0.0001, equals(true));
    });
  });

  group('Test Scalene Triangle Class', () {
    test('Perimeter for a = 4, b = 3, c = 5', () {
      double a = 4;
      double b = 3;
      double c = 5;
      var t = ScaleneTriangle('Scalene', a, b, c);
      var perimeter = t.perimeter();
      double expected = 12;
      double difference = (perimeter - expected).abs();
      expect(difference < 0.0001, equals(true));
    });
    test('Area for a = 4, b = 3, c = 5', () {
      double a = 4;
      double b = 3;
      double c = 5;
      var t = ScaleneTriangle('Scalene', a, b, c);
      var area = t.area();
      double expected = 6;
      double difference = (area - expected).abs();
      expect(difference < 0.0001, equals(true));
    });
  });
}
