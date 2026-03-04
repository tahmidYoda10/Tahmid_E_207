/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main() {
  print("String");
  String t = stdin.readLineSync()!;

  String ans = t.replaceAll(' ', '');

  print("Without spaces : $ans");
}