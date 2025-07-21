void main() {
  int a = 10;
  int b = 0;
  try {
    int result = a ~/ b;
    print('Result: $result');
  } catch (e) {
    print('Error: Cannot divide by zero.');
  }
  try {
    String input = 'abc';
    int number = int.parse(input);
    print('Entered num: $number');
  } on FormatException {
    print('FormatException: Invalid input, not a number.');
  }
}
