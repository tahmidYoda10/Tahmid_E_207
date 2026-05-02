/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main() {
  print("Enter a character:");
  String x = stdin.readLineSync()!;

  if (x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u' ||
      x == 'A' || x == 'E' || x == 'I' || x == 'O' || x == 'U') {
    print("Vowel");
  } else {
    print("Consonant");
  }
}