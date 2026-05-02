/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main() {
  print("Enter first number:");
  double x = double.parse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /):");
  String y = stdin.readLineSync()!;

  print("Enter second number:");
  double z = double.parse(stdin.readLineSync()!);

  if (y == '+') {
    print("Result = ${x + z}");
  } else if (y == '-') {
    print("Result = ${x - z}");
  } else if (y == '*') {
    print("Result = ${x * z}");
  } else if (y == '/') {
    if (z == 0) {
      print("Cannot divide by zero");
    } else {
      print("Result = ${x / z}");
    }
  } else {
    print("Invalid operator");
  }
}