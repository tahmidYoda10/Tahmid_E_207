/* Author : Tahmid Al Mamun (207) */
import 'dart:io';

void main(){

  print("Enter First Name : ");
  String? fname = stdin.readLineSync()!;

  print("Enter Last name : ");
  String? lname = stdin.readLineSync();

  print("Full name - $fname $lname");

}