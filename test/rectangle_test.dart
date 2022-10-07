import 'package:test/test.dart';
import 'package:flutter_work/oop/shapeHierarchy.dart';

void main() {
  group('Test Rectangle Class', () {
    test('Perimeter for sides 3 and 5', () {
      // Given Rectangle with sides aSide = 3, bSide = 5
      double aSide = 3;
      double bSide = 5;
      var t = Rectangle('Rectangle', aSide, bSide);

      // When compute perimeter used perimeter() function
      var perimeter = t.perimeter();

      // Then value must be the expected = 16
      double expectedPerimeter = 16;
      expect(perimeter, equals(expectedPerimeter));
    });

    test('Area for sides 3 and 5', () {
      // Given Rectangle with sides a = 3, b = 5
      double aSide = 3;
      double bSide = 5;
      var t = Rectangle('Rectangle', aSide, bSide);

      // When compute area used area() function
      var area = t.area();

      // Then value must be the expected = 15
      double expectedArea = 15;
      double difference = (area - expectedArea).abs();
      expect(difference < 0.0001, equals(true));
    });
  });

  group('Test Square Class', () {
    test('Perimeter for side = 5', () {
      // Given Square with side = 5
      double side = 5;
      var t = Square('Square', side);

      // When compute perimeter used perimeter() function
      var perimeter = t.perimeter();

      // Then value must be the expected = 20
      double expectedPerimeter = 20;
      expect(perimeter, equals(expectedPerimeter));
    });

    test('Area for side = 5', () {
      // Given Square with side = 5
      double side = 5;
      var t = Square('Square', side);

      // When compute area used area() function
      var area = t.area();

      // Then value must be the expected = 25
      double expectedArea = 25;
      double difference = (area - expectedArea).abs();
      expect(difference < 0.0001, equals(true));
    });
  });
}
