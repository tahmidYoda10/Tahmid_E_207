/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 */

import 'dart:io';

void main() {
  var f = File('hello.txt');
  f.writeAsStringSync('Tahmid Al Mamun');
  print('Name added to hello.txt');
}