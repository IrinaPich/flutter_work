import 'package:test/test.dart';
import 'package:flutter_work/oop/shapeHierarchy.dart';
import 'dart:math';

void main() {
  group('Test Equilateral Triangle Class', () {
    // Given Equilateral Triangle with equal sides = 3
    test('Perimeter for each side = 3', () {
      double side = 3;
      var t = EquilateralTriangle('Equilateral', side);
      // When compute perimeter used perimeter() function
      var perimeter = t.perimeter();
      // Then value must be the expected = 9
      var expectedPerimeter = 9;
      expect(perimeter, equals(expectedPerimeter));
    });
    test('Area for each side = 4', () {
      double side = 4;
      var t = EquilateralTriangle('Equilateral', side);
      // When compute area used perimeter() function
      var area = t.area();
      // Then value must be the expected = 6.9282
      double expectedArea = 6.9282;
      double difference = (area - expectedArea).abs();
      expect(difference < 0.0001, equals(true));
    });

  });
}
