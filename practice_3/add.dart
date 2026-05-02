/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 * Space Complexity: O(1)
 */

num add(num a, num b) => a + b;

T addGeneric<T extends num>(T a, T b) => (a + b) as T;

void main() {
  print('Sum of 5 and 3: ${add(5, 3)}');
  print('Sum of 10.5 and 20.3: ${add(10.5, 20.3)}');
  print('Sum of -5 and 15: ${add(-5, 15)}');
  print('Sum of 100 and 200: ${addGeneric<int>(100, 200)}');
}