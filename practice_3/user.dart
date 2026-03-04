/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1)
 * Space Complexity: O(1)
 */

Map<String, dynamic> createUser({
  required String name,
  required int age,
  bool isActive = true,
}) => {'name': name, 'age': age, 'isActive': isActive};

class User {
  final String name;
  final int age;
  final bool isActive;
  
  const User({required this.name, required this.age, this.isActive = true});
  
  @override
  String toString() => 'User(name: $name, age: $age, isActive: $isActive)';
}

void main() {

  print('Using Function:');
  print(createUser(name: 'Tahmid', age: 22));
  print(createUser(name: 'John', age: 25, isActive: false));
  
  print('\nUsing Class:');
  final user1 = User(name: 'Alice', age: 30);
  final user2 = User(name: 'Bob', age: 28, isActive: false);
  print(user1);
  print(user2);
}