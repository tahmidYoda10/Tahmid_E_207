/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 * Space Complexity: O(1)
 */

import 'dart:math';

num maxNumber(num a, num b, num c) => max(max(a, b), c);

num maxNumberAlt(num a, num b, num c) => [a, b, c].reduce(max);

num maxNumberTernary(num a, num b, num c) => 
    a >= b ? (a >= c ? a : c) : (b >= c ? b : c);

num maxOfAll(List<num> numbers) => numbers.reduce(max);

void main() {
  print('Max of (10, 20, 15): ${maxNumber(10, 20, 15)}');
  print('Max of (100, 50, 75): ${maxNumberAlt(100, 50, 75)}');
  print('Max of (5, 5, 5): ${maxNumberTernary(5, 5, 5)}');
  print('Max of (-1, -5, -3): ${maxNumber(-1, -5, -3)}');
  print('Max of list [1,9,3,7,5]: ${maxOfAll([1, 9, 3, 7, 5])}');
}