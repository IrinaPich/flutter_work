import 'package:test/test.dart';
import 'package:flutter_work/oop/shapeHierarchy.dart';

void main() {
  group('Test Equilateral Triangle Class', () {
    test('Perimeter for 3', () {
      double side = 3;
      var t = EquilateralTriangle('Equilateral', side);
      var perimeter = t.perimeter();
      expect(perimeter, equals(9));
    });


  });
}
