import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('What do you want to do? (add/remove/view/exit)');
    String command = stdin.readLineSync()!.toLowerCase();

    switch (command) {
      case 'add':
        addTask(tasks);
        break;

      case 'remove':
        removeTask(tasks);
        break;

      case 'view':
        viewTasks(tasks);
        break;

      case 'exit':
        print('Goodbye!');
        return;

      default:
        print('Invalid command!');
        break;
    }
  }
}

void addTask(List<String> tasks) {
  print('Enter a new task:');
  String task = stdin.readLineSync()!;
  tasks.add(task);
  print('Task added!');
}

void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks to remove!');
  } else {
    print('Which task do you want to remove?');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
    int index = int.parse(stdin.readLineSync()!) - 1;
    if (index < 0 || index >= tasks.length) {
      print('Invalid index!');
    } else {
      tasks.removeAt(index);
      print('Task removed!');
    }
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks!');
  } else {
    print('Tasks:');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}
