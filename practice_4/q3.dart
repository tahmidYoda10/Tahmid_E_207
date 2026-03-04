/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n)
 */

import 'dart:io';

void main() {
  var expenses = <double>[];
  
  print('Enter expenses (type "done" to finish):');
  while (true) {
    var input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') break;
    expenses.add(double.parse(input));
  }
  
  print('Total: ${expenses.fold(0.0, (a, b) => a + b)}');
}