/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main(){

  print("Number");
  int x = int.parse(stdin.readLineSync()!);

  print(x % 2 == 0 ? "Even" : "Odd");
}