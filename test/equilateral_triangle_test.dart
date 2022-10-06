import 'package:test/test.dart';
import 'package:flutter_work/oop/shapeHierarchy.dart';
import 'dart:math';

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
}
