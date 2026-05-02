/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n) where n = password length
 * Space Complexity: O(n)
 */

import 'dart:math';

String generatePassword({int length = 12, bool includeSpecial = true}) {
  const lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const digits = '0123456789';
  const special = '!@#\$%^&*()_+-=[]{}|;:,.<>?';
  
  final chars = lowercase + uppercase + digits + (includeSpecial ? special : '');
  final rand = Random.secure();
  
  return List.generate(length, (_) => chars[rand.nextInt(chars.length)]).join();
}

void main() {
  print('Generated Passwords:');
  for (int i = 1; i <= 5; i++) {
    print('Password $i: ${generatePassword(length: 16)}');
  }
  print('\nWithout special chars: ${generatePassword(length: 10, includeSpecial: false)}');
}