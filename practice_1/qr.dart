/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main(){

  print("First number : ");
  int x = int.parse(stdin.readLineSync()!);

  print("Second Number :");
  int y = int.parse(stdin.readLineSync()!);

  int q = x ~/ y;
  int r = x % y;

  print("Quotient : $q");
  print("Remainder : $r");
}