/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n)
 */

void main() {
  var info = {
    'name': 'Tahmid',
    'address': 'Dhaka',
    'age': 22,
    'country': 'Bangladesh'
  };
  
  info['country'] = 'Canada';
  
  info.forEach((k, v) => print('$k: $v'));
}