/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 * Space Complexity: O(1)
 * Formula: π * r²
 */

import 'dart:math';

double areaOfCircle(double radius) => pi * radius * radius;

double circleArea(double r) => pi * r * r;

void main() {
  [1.0, 2.5, 5.0, 7.5, 10.0].forEach((r) {
    print('Radius: $r -> Area: ${areaOfCircle(r).toStringAsFixed(4)}');
  });
}