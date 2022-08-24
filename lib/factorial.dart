// Define a function.
int computeFactorial(int aNumber) {
  var factorial = 1;
  for (var i = 1; i <= aNumber; i++) {
    factorial = factorial * i;
  }
  return factorial;
  //print('The factorial of $aNumber is $factorial'); // Print to console.
}

// This is where the app starts executing.
void main() {
  var number = 11;
  var factorial = computeFactorial(number);
  print ('The factorial of $number is $factorial');
}