/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(n)
 */

void main() {
  var friends = ['Arif', 'Bob', 'Alice', 'Charlie', 'Aman', 'David', 'Alex'];
  
  var startsWithA = friends.where((n) => n.toLowerCase().startsWith('a'));
  
  print('Names starting with A:');
  startsWithA.forEach(print);
}