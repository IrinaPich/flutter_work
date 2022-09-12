import 'package:test/test.dart';
import 'package:flutter_work/factorial_helloworld/factorial.dart';

void main() {
  test('Factorial of 11', () {
    var number = 11;
    var factorial = computeFactorial(number);
    expect(factorial, equals (39916800));
  });

  test('Factorial of 15', () {
    var number = 15;
    var factorial = computeFactorial(number);
    expect(factorial, equals (1307674368000));
  });

  test('Factorial of 0', () {
    var number = 0;
    var factorial = computeFactorial(number);
    expect(factorial, equals (1));
  });

  test('Factorial of -1', () {
    var number = -1;
    var factorial = computeFactorial(number);
    expect(factorial, equals (1));
  });

}