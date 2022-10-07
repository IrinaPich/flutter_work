import 'package:test/test.dart';
import 'package:flutter_work/oop/shapeHierarchy.dart';

void main() {
  group('Test Equilateral Triangle Class', () {
    test('Perimeter for each side = 3', () {
      // Given Equilateral Triangle with equal sides = 3
      double side = 3;
      var t = EquilateralTriangle('Equilateral', side);

      // When compute perimeter used perimeter() function
      var perimeter = t.perimeter();

      // Then value must be the expected = 9
      var expectedPerimeter = 9;
      expect(perimeter, equals(expectedPerimeter));
    });

    test('Area for each side = 4', () {
      // Given Equilateral Triangle with equal sides = 4
      double side = 4;
      var t = EquilateralTriangle('Equilateral', side);

      // When compute area used area() function
      var area = t.area();

      // Then value must be the expected = 6.9282
      double expectedArea = 6.9282;
      double difference = (area - expectedArea).abs();
      expect(difference < 0.0001, equals(true));
    });
  });

  group('Test Isosceles Triangle Class', () {
    test('Perimeter for height = 4 and base = 3', () {
      // Given Isosceles Triangle with height = 4 and base = 3
      double height = 4;
      double base = 3;
      var t = IsoscelesTriangle('Isosceles', height, base);
      // When compute perimeter used perimeter() function
      var perimeter = t.perimeter();
      // Then value must be the expected = 11.544
      double expectedPerimeter = 11.544;
      double difference = (perimeter - expectedPerimeter).abs();
      expect(difference < 0.0001, equals(true));
    });

    test('Area for height = 4 and base = 3', () {
      // Given Isosceles Triangle with height = 4 and base = 3
      double height = 4;
      double base = 3;
      var t = IsoscelesTriangle('Isosceles', height, base);

      // When compute area used area() function
      var area = t.area();

      // Then value must be the expected = 6
      double expectedArea = 6;
      double difference = (area - expectedArea).abs();
      expect(difference < 0.0001, equals(true));
    });
  });

  group('Test Scalene Triangle Class', () {
    test('Perimeter for sides a = 4, b = 3, c = 5', () {
      // Given Scalene Triangle with sides a = 4, b = 3, c = 5
      double aSide = 4;
      double bSide = 3;
      double cSide = 5;
      var t = ScaleneTriangle('Scalene', aSide, bSide, cSide);

      // When compute perimeter used perimeter() function
      var perimeter = t.perimeter();

      // Then value must be the expected = 12
      double expectedPerimeter = 12;
      double difference = (perimeter - expectedPerimeter).abs();
      expect(difference < 0.0001, equals(true));
    });

    test('Area for a = 4, b = 3, c = 5', () {
      // Given Scalene Triangle with sides a = 4, b = 3, c = 5
      double aSide = 4;
      double bSide = 3;
      double cSide = 5;
      var t = ScaleneTriangle('Scalene', aSide, bSide, cSide);

      // When compute area used area() function
      var area = t.area();

      // Then value must be the expected = 6
      double expectedArea = 6;
      double difference = (area - expectedArea).abs();
      expect(difference < 0.0001, equals(true));
    });
  });
}
