/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main(){

  print("Bill :");
  double b = double.parse(stdin.readLineSync()!);

  print("People :");
  int p = int.parse(stdin.readLineSync()!);

  int x = b ~/ p;

  print("Each pay : $x");
}