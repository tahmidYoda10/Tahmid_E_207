/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n)
 */

import 'dart:io';

void main() {
  var src = File('hello.txt');
  src.copySync('hello_copy.txt');
  print('File copied!');
  print('Content:\n${File('hello_copy.txt').readAsStringSync()}');
}