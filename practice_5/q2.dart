/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 */

import 'dart:io';

void main() {
  var f = File('hello.txt');
  f.writeAsStringSync('\nArif\nBob\nAlice\nCharlie', mode: FileMode.append);
  print('Friends added!');
  print('Content:\n${f.readAsStringSync()}');
}