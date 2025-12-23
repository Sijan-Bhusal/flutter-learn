import 'dart:io';

void main() {
  double x1;
  double x2;
  int x3;

  print("Enter first number:");
  x1 = double.parse(stdin.readLineSync()!);
  print("Enter second number:");
  x2 = double.parse(stdin.readLineSync()!);
  print("Sum is: ${x1 + x2}");
  x3 = int.parse(stdin.readLineSync()!);
  print(x3);
}
