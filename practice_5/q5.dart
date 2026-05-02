/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n)
 */

import 'dart:io';

void main() {
  var dir = Directory('files');
  if (!dir.existsSync()) dir.createSync();
  
  for (var i = 1; i <= 100; i++) {
    File('files/file_$i.txt').writeAsStringSync('This is file $i');
  }
  print('100 files created!');
}