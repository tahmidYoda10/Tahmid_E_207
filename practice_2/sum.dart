/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main() {
  print("Enter a number:");
  int x = int.parse(stdin.readLineSync()!);

  int y = 0;

  for (int i = 1; i <= x; i++) {
    y += i;
  }

  print("Sum = $y");
}