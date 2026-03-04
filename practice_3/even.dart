/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n) where n = (end - start) / 2
 * Space Complexity: O(1)
 */

void printEvenNumbers(int start, int end) {
  int i = start.isEven ? start : start + 1;
  for (; i <= end; i += 2) print(i);
}

void main() {
  print('Even numbers between 1 and 20:');
  printEvenNumbers(1, 20);
}