/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 * Space Complexity: O(1)
 */

bool isEven(int n) => n & 1 == 0;

bool isEvenMod(int n) => n % 2 == 0;

bool isEvenBuiltIn(int n) => n.isEven;

void main() {
  print('Checking Even Numbers:');
  for (int i = 0; i <= 10; i++) {
    print('$i is ${isEven(i) ? "Even" : "Odd"}');
  }
  
  // Edge cases
  print('\nEdge Cases:');
  print('-4 is Even: ${isEven(-4)}');
  print('-7 is Even: ${isEven(-7)}');
  print('0 is Even: ${isEven(0)}');
}