/*
 * Author: Tahmid Al Mamun_207
 * Time Complexity: O(1) for add/remove, O(n) for view
 */

import 'dart:io';

var tasks = <String>[];

void addTask() {
  print('Enter task:');
  var t = stdin.readLineSync()!;
  tasks.add(t);
  print('Task added!\n');
}

void removeTask() {
  if (tasks.isEmpty) {
    print('No tasks!\n');
    return;
  }
  viewTasks();
  print('Enter task number to remove:');
  var n = int.parse(stdin.readLineSync()!);
  if (n > 0 && n <= tasks.length) {
    tasks.removeAt(n - 1);
    print('Task removed!\n');
  } else {
    print('Invalid number!\n');
  }
}

void viewTasks() {
  if (tasks.isEmpty) {
    print('No tasks!\n');
    return;
  }
  print('\n--- Your Tasks ---');
  for (var i = 0; i < tasks.length; i++) {
    print('${i + 1}. ${tasks[i]}');
  }
  print('');
}

void main() {
  while (true) {
    print('=== TO-DO APP ===');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');
    print('Choose option:');
    
    var choice = stdin.readLineSync()!;
    
    switch (choice) {
      case '1':
        addTask();
        break;
      case '2':
        removeTask();
        break;
      case '3':
        viewTasks();
        break;
      case '4':
        print('Goodbye!');
        return;
      default:
        print('Invalid option!\n');
    }
  }
}