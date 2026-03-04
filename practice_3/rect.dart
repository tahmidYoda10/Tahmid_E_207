/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 * Space Complexity: O(1)
 * Formula: length × width
 */

double calculateArea({double length = 1, double width = 1}) => length * width;

double rectArea([double length = 1, double width = 1]) => length * width;

extension RectangleArea on List<double> {
  double get area => this.isEmpty ? 1 : this.reduce((a, b) => a * b);
}

void main() {
  print('Rectangle Area Calculations:');
  print('Default (1x1): ${calculateArea()}');
  print('5x3: ${calculateArea(length: 5, width: 3)}');
  print('10x10: ${calculateArea(length: 10, width: 10)}');
  print('7.5x4.2: ${calculateArea(length: 7.5, width: 4.2)}');
  
  print('\nUsing Positional Parameters:');
  print('Default: ${rectArea()}');
  print('8x6: ${rectArea(8, 6)}');
  
  print('\nUsing Extension:');
  print('Area of [5, 4]: ${[5.0, 4.0].area}');
}