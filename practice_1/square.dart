/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main(){
  print("Enter a number : 5");

  String? input = stdin.readLineSync();
  int n = int.parse(input!);

  int s = n*n;

  print("Square is : $s");
}