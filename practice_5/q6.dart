/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 */

import 'dart:io';

void main() {
  var f = File('hello_copy.txt');
  if (f.existsSync()) {
    f.deleteSync();
    print('hello_copy.txt deleted!');
  } else {
    print('File not found!');
  }
}