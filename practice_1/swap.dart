/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main(){

  print("First number :");
  int a = int.parse(stdin.readLineSync()!);

  print("Second number :");
  int b = int.parse(stdin.readLineSync()!);

  a = a ^ b;
  b = a ^ b;
  a = a ^ b;

  print("After Swap");
  print("a = $a");
  print("b = $b");

}