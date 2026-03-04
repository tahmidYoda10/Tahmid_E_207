/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n)
 */

void main() {
  var contact = {
    'name': 'Tahmid',
    'phone': '01712345678',
    'email': 'test@mail.com',
    'city': 'Dhaka'
  };
  
  var keys4 = contact.keys.where((k) => k.length == 4);
  
  print('Keys with length 4:');
  keys4.forEach(print);
}