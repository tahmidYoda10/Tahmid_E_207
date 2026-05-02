/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main() {
  print("Enter a number:");
  int x = int.parse(stdin.readLineSync()!);

  if (x > 0) {
    print("Positive");
  } else if (x < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}