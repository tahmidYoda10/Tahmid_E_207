/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(log n) - Using binary exponentiation
 * Space Complexity: O(1)
 */

import 'dart:math' as math;

// Simple approach using dart:math
num power(num base, num exponent) => math.pow(base, exponent);

// Pro approach: Binary Exponentiation (O(log n))
int fastPower(int base, int exp) {
  if (exp == 0) return 1;
  if (exp < 0) throw ArgumentError('Negative exponent not supported for int');
  
  int result = 1;
  while (exp > 0) {
    if (exp & 1 == 1) result *= base; 
    base *= base;
    exp >>= 1; 
  }
  return result;
}

// Recursive approach
int powerRecursive(int base, int exp) => 
    exp == 0 ? 1 : (exp & 1 == 1 ? base : 1) * powerRecursive(base * base, exp >> 1);

void main() {
  print('Power Calculations:');
  print('5^3 = ${fastPower(5, 3)}');
  print('2^10 = ${fastPower(2, 10)}');
  print('3^5 = ${fastPower(3, 5)}');
  print('7^4 = ${power(7, 4)}');
  print('2^20 = ${powerRecursive(2, 20)}');
}