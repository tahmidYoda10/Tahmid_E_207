/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n) where n = string length
 * Space Complexity: O(n)
 */

String reverseString(String s) => s.split('').reversed.join();

String reverseStringOptimized(String s) {
  final sb = StringBuffer();
  for (int i = s.length - 1; i >= 0; i--) sb.write(s[i]);
  return sb.toString();
}

void main() {
  final testStrings = ['Hello', 'Dart', 'Tahmid', 'Programming', 'racecar'];
  
  for (var s in testStrings) {
    print('Original: "$s" -> Reversed: "${reverseString(s)}"');
  }
}