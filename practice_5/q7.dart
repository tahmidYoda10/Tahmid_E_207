/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n)
 */

import 'dart:io';

void main() {
  var f = File('students.csv');
  
  var data = '''name,age,address
Tahmid,22,Dhaka
Arif,23,Chittagong
Bob,21,Sylhet
Alice,24,Khulna
Charlie,22,Rajshahi''';
  
  f.writeAsStringSync(data);
  print('CSV created!\n');
  
  print('Reading CSV:');
  print('-' * 30);
  
  var lines = f.readAsLinesSync();
  for (var i = 0; i < lines.length; i++) {
    var cols = lines[i].split(',');
    if (i == 0) {
      print('${cols[0].padRight(10)} ${cols[1].padRight(5)} ${cols[2]}');
      print('-' * 30);
    } else {
      print('${cols[0].padRight(10)} ${cols[1].padRight(5)} ${cols[2]}');
    }
  }
}